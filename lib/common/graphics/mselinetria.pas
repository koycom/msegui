{ MSEgui Copyright (c) 2013 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
}
unit mselinetria;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface
uses
 msegraphics,msegraphutils,msetriaglob;
type
 lineshiftvectorty = record
  shift: pointty;
  d: pointty;  //delta
  c: integer;  //length
 end;
 lineshiftinfoty = record
  dist: integer;
  offsx,offsy: integer;
  pointa: ppointty;
  pointb: ppointty;
  linestart: ppointty;
  v: lineshiftvectorty;
  offs: pointty;
  dest: ppointty;
  dashlen: integer;
  dashind: integer;
  dashpos: integer;
  dashref: integer;
  reverse: boolean;
 end;
 plineshiftinfoty = ^lineshiftinfoty;
 
function linestria(var drawinfo: drawinfoty; out apoints: ppointty;
                                   out apointcount: integer): boolean;
           //true if triangles, tristrip otherwise
procedure linesegmentstria(var drawinfo: drawinfoty;
                  out atriangles: ptrianglety; out atrianglecount: integer);

procedure updatestarttria(var drawinfo: drawinfoty; var li: lineshiftinfoty);
procedure updatestartstrip(var drawinfo: drawinfoty; var li: lineshiftinfoty);
procedure updateendtria(var drawinfo: drawinfoty; var li: lineshiftinfoty);
procedure updateendstrip(var drawinfo: drawinfoty; var li: lineshiftinfoty);

implementation
const
 arctablesize = 20; // max diameter
 arcrowsize = arctablesize div 2 - 2;
 arcscalefact = 256;  //value scaling = 128
 bevelangsin = sin(2*pi*11.0/360.0);
type
 arctablety = array[0..arctablesize,0..arcrowsize] of byte;
const
 arctable: arctablety = (
 (0,0,0,0,0,0,0,0,0), //0
 (0,0,0,0,0,0,0,0,0), //1
 (0,0,0,0,0,0,0,0,0), //2
 (33,0,0,0,0,0,0,0,0), //3
 (17,0,0,0,0,0,0,0,0), //4
 (11,51,0,0,0,0,0,0,0), //5
 (7,33,0,0,0,0,0,0,0), //6
 (5,23,62,0,0,0,0,0,0), //7
 (4,17,43,0,0,0,0,0,0), //8
 (3,13,33,69,0,0,0,0,0), //9
 (3,11,26,51,0,0,0,0,0), //10
 (2,9,21,40,75,0,0,0,0), //11
 (2,7,17,33,57,0,0,0,0), //12
 (2,6,14,27,46,79,0,0,0), //13
 (1,5,12,23,38,62,0,0,0), //14
 (1,5,11,20,33,51,82,0,0), //15
 (1,4,9,17,28,43,66,0,0), //16
 (1,4,8,15,24,37,55,85,0), //17
 (1,3,7,13,22,33,48,69,0), //18
 (1,3,7,12,19,29,41,59,87), //19
 (1,3,6,11,17,26,37,51,72) //20
);
//
//todo: optimize smooth line generation
//
function calclineshift(const drawinfo: drawinfoty; var info: lineshiftinfoty;
                   const skipzerolength: boolean): boolean;
                                  //true if valid
var
 dx1,dy1: integer;
begin
 result:= true;
 with info do begin
  dx1:= pointb^.x - pointa^.x;
  dy1:= pointb^.y - pointa^.y;
  if skipzerolength and (dx1 = 0) and (dy1 = 0) then begin
   result:= false;
   exit;
  end;
  v.c:= round(sqrt(dx1*dx1 + dy1*dy1)); //todo: optimize
  offsx:= 0;
  offsy:= 0;
  if v.c = 0 then begin
   v.shift.x:= 0;           //default direction
   v.shift.y:= dist;
  end
  else begin
   v.shift.x:= (dy1*dist) div v.c;
   v.shift.y:= (dx1*dist) div v.c;
   if dist and $10000 <> 0 then begin //odd, shift 0.5 pixel
    offsx:= abs(dy1 shl 15) div v.c;
    offsy:= abs(dx1 shl 15) div v.c;
   end;
  end;
  offs.x:= (drawinfo.origin.x shl 16) + v.shift.x div 2 + offsx;
  offs.y:= (drawinfo.origin.y shl 16) - v.shift.y div 2 + offsy;
  linestart:= pointa;
  v.d.x:= dx1;
  v.d.y:= dy1;
 end;
end;

function isbevelang(const li: lineshiftinfoty; const da: pointty): boolean;
const
 bevelangmax = round(bevelangsin*256);
var
 int1,int2: integer;
 dax,day,dbx,dby: integer;
begin
 result:= false;
 with li do begin
  dax:= da.y div 256;          //with is orthogonal to vector, negative
  day:= da.x div 256;
  dbx:= li.v.shift.y div 256;  
  dby:= li.v.shift.x div 256;
  if dax*dbx + day*dby < 0 then begin
   int1:= dbx*day - dax*dby;
   int2:= dist div (16*256);
   result:= abs(int1 div (int2 * int2)) < bevelangmax;
  end;
 end;
end;

procedure shiftpoint(var info: lineshiftinfoty);
var
 x1,y1: integer;
begin
 with info do begin
  x1:= (pointa^.x shl 16) + offs.x;
  y1:= (pointa^.y shl 16) + offs.y;
  dest^.x:= x1;
  dest^.y:= y1;
  inc(dest);
  dest^.x:= x1 - v.shift.x;
  dest^.y:= y1 + v.shift.y;
  inc(dest);
  pointa:= pointb;
  inc(pointb);
 end;
end;

procedure shiftpointa(var info: lineshiftinfoty);
           //no source increment
var
 x1,y1: integer;
begin
 with info do begin
  x1:= (pointa^.x shl 16) + offs.x;
  y1:= (pointa^.y shl 16) + offs.y;
  dest^.x:= x1;
  dest^.y:= y1;
  inc(dest);
  dest^.x:= x1 - v.shift.x;
  dest^.y:= y1 + v.shift.y;
  inc(dest);
 end;
end;

procedure shiftpointb(var info: lineshiftinfoty);
           //no source increment
var
 x1,y1: integer;
begin
 with info do begin
  x1:= (pointb^.x shl 16) + offs.x;
  y1:= (pointb^.y shl 16) + offs.y;
  dest^.x:= x1;
  dest^.y:= y1;
  inc(dest);
  dest^.x:= x1 - v.shift.x;
  dest^.y:= y1 + v.shift.y;
  inc(dest);
 end;
end;

type
 intersectinfoty = record
  da,db: pointty;
  p0,p1: ppointty;
  isect: pointty;
  axbx,axby,aybx,ayby: int64;
  q: integer;
 end;

procedure intersect2(var info: intersectinfoty);
     //todo: limit overflow
begin
 with info do begin
//xa == (dxa*dxb*y0 - dxa*dxb*y1 + dxa*dyb*x1 - dxb*dya*x0)/(dxa*dyb - dxb*dya)
  isect.x:= (axbx*p0^.y - axbx*p1^.y + axby*p1^.x - aybx*p0^.x) div q;
//ya == (dxa*dyb*y0 - dxb*dya*y1 - dya*dyb*x0 + dya*dyb*x1)/(dxa*dyb - dxb*dya)
  isect.y:= (axby*p0^.y - aybx*p1^.y - ayby*p0^.x + ayby*p1^.x) div q;
 end;
end;
 
function intersect(var info: intersectinfoty): boolean;
     //todo: limit overflow
begin
 result:= false;
 with info do begin
  axby:= da.x*db.y;
  aybx:= da.y*db.x;
  q:= axby - aybx;
  if q <> 0 then begin
   result:= true;
   axbx:= da.x*db.x;
   ayby:= da.y*db.y;
   intersect2(info);
  end;
 end;
end;

procedure roundcapstarttria(var drawinfo: drawinfoty; var li: lineshiftinfoty);
var
 sx1,sy1,sx2,sy2: integer;
 int1: integer;
 po1: ppointty;
 po2: pbyte;
 pt1,pt2: pointty;
 first: boolean;
begin
 with triagcty(drawinfo.gc.platformdata).d do begin
  po1:= li.dest;
  dec(po1);
  pt2:= (po1)^;
  dec(po1);
  pt1:= (po1)^;
  if linewidth <= arctablesize then begin
   sx1:= (li.v.shift.y) div 2;      //axial
   sy1:= (li.v.shift.x) div 2;      
   po1^.x:= (pt1.x + pt2.x) div 2 - sx1;
   po1^.y:= (pt1.y + pt2.y) div 2 - sy1;
   inc(po1);
   po2:= @arctable[linewidth];
   inc(po2,linewidth1 div 2 - 2);
   first:= true;
   for int1:= linewidth div 2 - 1 downto 1 do begin
    if not first then begin
     po1^:= (po1-2)^;            //0
     inc(po1);
     po1^:= (po1-2)^;            //1
     inc(po1);
    end;
    sx1:= (li.v.shift.y*int1) div linewidth1;      //axial
    sy1:= (li.v.shift.x*int1) div linewidth1;
    sx2:= (li.v.shift.x*po2^) div arcscalefact;    //orthogonal
    sy2:= (li.v.shift.y*po2^) div arcscalefact;
    if li.reverse then begin
     sx2:= -sx2;
     sy2:= -sy2;
    end;
    po1^.x:= pt1.x - sx1 - sx2; //2
    po1^.y:= pt1.y - sy1 + sy2;
    inc(po1);
    if not first then begin
     po1^:= (po1-2)^;            //3
     inc(po1);
     po1^:= (po1-2)^;            //4
     inc(po1);
    end;
    po1^.x:= pt2.x - sx1 + sx2; //5
    po1^.y:= pt2.y - sy1 - sy2;
    inc(po1);
    dec(po2);
    first:= false;
   end;
   if not first then begin
    po1^:= (po1-2)^;     //0
    inc(po1);
    po1^:= (po1-2)^;     //1
    inc(po1);
    po1^:= pt1;          //2
    inc(po1);
    po1^:= (po1-2)^;     //3
    inc(po1);
   end;
   po1^:= pt1;          //4
   inc(po1);
   po1^:= pt2;          //5
   inc(po1);
   po1^:= pt1;          //0
   inc(po1);
   po1^:= pt2;          //1
   inc(po1);
   li.dest:= po1;
  end;
 end;
end;

procedure updatestarttria(var drawinfo: drawinfoty; var li: lineshiftinfoty);
var
 sx1,sy1: integer;
begin
 with triagcty(drawinfo.gc.platformdata).d do begin
  if (linewidth = 0) or (trf_capprojecting in triaflags) then begin
   sx1:= li.v.shift.y div 2 - li.offsy;
   sy1:= li.v.shift.x div 2 - li.offsx;
   with (li.dest-2)^ do begin
    x:= x - sx1;
    y:= y - sy1;
   end;
   with (li.dest-1)^ do begin
    x:= x - sx1;
    y:= y - sy1;
   end;
  end
  else begin
   if trf_capround in triaflags then begin
    roundcapstarttria(drawinfo,li);    
   end;   
  end;
 end;
end;

procedure roundcapstartstrip(var drawinfo: drawinfoty; var li: lineshiftinfoty);
var
 sx1,sy1,sx2,sy2: integer;
 int1: integer;
 po1: ppointty;
 po2: pbyte;
 pt1,pt2: pointty;
begin
 with triagcty(drawinfo.gc.platformdata).d do begin
  po1:= li.dest;
  dec(po1);
  pt2:= (po1)^;
  dec(po1);
  pt1:= (po1)^;
  if linewidth <= arctablesize then begin
   sx1:= (li.v.shift.y) div 2;      //axial
   sy1:= (li.v.shift.x) div 2;      
   po1^.x:= (pt1.x + pt2.x) div 2 - sx1;
   po1^.y:= (pt1.y + pt2.y) div 2 - sy1;
   inc(po1);
   po2:= @arctable[linewidth];
   inc(po2,linewidth1 div 2 - 2);
   for int1:= linewidth div 2 - 1 downto 1 do begin
    sx1:= (li.v.shift.y*int1) div linewidth1;      //axial
    sy1:= (li.v.shift.x*int1) div linewidth1;
    sx2:= (li.v.shift.x*po2^) div arcscalefact;    //orthogonal
    sy2:= (li.v.shift.y*po2^) div arcscalefact;
    if li.reverse then begin
     sx2:= -sx2;
     sy2:= -sy2;
    end;
    po1^.x:= pt1.x - sx1 - sx2;
    po1^.y:= pt1.y - sy1 + sy2;
    inc(po1);      
    po1^.x:= pt2.x - sx1 + sx2;
    po1^.y:= pt2.y - sy1 - sy2;
    inc(po1);
    dec(po2);
   end;
   po1^:= pt1;
   inc(po1);
   po1^:= pt2;
   inc(po1);
   li.dest:= po1;
  end;
 end;
end;

procedure updatestartstrip(var drawinfo: drawinfoty; var li: lineshiftinfoty);
var
 sx1,sy1: integer;
begin
 with triagcty(drawinfo.gc.platformdata).d do begin
  if (linewidth = 0) or (trf_capprojecting in triaflags) then begin
   sx1:= li.v.shift.y div 2 - li.offsy;
   sy1:= li.v.shift.x div 2 - li.offsx;
   with (li.dest-2)^ do begin
    x:= x - sx1;
    y:= y - sy1;
   end;
   with (li.dest-1)^ do begin
    x:= x - sx1;
    y:= y - sy1;
   end;
  end
  else begin
   if trf_capround in triaflags then begin
    roundcapstartstrip(drawinfo,li);
   end;
  end;
 end;
end;

procedure updateendtria(var drawinfo: drawinfoty; var li: lineshiftinfoty);
var
 sx1,sy1,sx2,sy2: integer;
 int1: integer;
 po1: ppointty;
 po2: pbyte;
 pt1,pt2: pointty;
begin
 with triagcty(drawinfo.gc.platformdata).d do begin
  if (linewidth = 0) or (trf_capprojecting in triaflags) then begin
   sx1:= li.v.shift.y div 2  + li.offsy;
   sy1:= li.v.shift.x div 2  + li.offsx;
   with (li.dest-2)^ do begin
    x:= x + sx1;
    y:= y + sy1;
   end;
   with (li.dest-1)^ do begin
    x:= x + sx1;
    y:= y + sy1;
   end;
  end
  else begin
   if trf_capround in triaflags then begin
    if linewidth <= arctablesize then begin
     po1:= li.dest;
     (po1-4)^:= (po1-2)^;
     pt1:= (po1-2)^;
     pt2:= (po1-1)^;
     po1^:= pt1;
     inc(po1);
     po1^:= pt2;
     inc(po1);
     po2:= @arctable[linewidth];
     for int1:= 1 to linewidth div 2 - 1 do begin
      sx1:= (li.v.shift.y*int1) div linewidth1;      //axial
      sy1:= (li.v.shift.x*int1) div linewidth1;
      sx2:= (li.v.shift.x*po2^) div arcscalefact;    //orthogonal
      sy2:= (li.v.shift.y*po2^) div arcscalefact;
      if li.reverse then begin
       sx2:= -sx2;
       sy2:= -sy2;
      end;
      po1^.x:= pt1.x + sx1 - sx2;       //0
      po1^.y:= pt1.y + sy1 + sy2;
      inc(po1);      
      po1^:= (po1-2)^;                  //1
      inc(po1);      
      po1^:= (po1-2)^;                  //2
      inc(po1);
      po1^.x:= pt2.x + sx1 + sx2;       //3
      po1^.y:= pt2.y + sy1 - sy2;
      inc(po1);
      po1^:= (po1-2)^;                  //4
      inc(po1);      
      po1^:= (po1-2)^;                  //5      
      inc(po1);
      inc(po2);
     end;
     sx1:= (li.v.shift.y) div 2;      //axial
     sy1:= (li.v.shift.x) div 2;      
     po1^.x:= (pt1.x + pt2.x) div 2 + sx1;
     po1^.y:= (pt1.y + pt2.y) div 2 + sy1;
     inc(po1);
     li.dest:= po1;
     exit;
    end;
   end;
  end;
 end;
 (li.dest-4)^:= (li.dest-2)^;
end;

procedure updateendstrip(var drawinfo: drawinfoty; var li: lineshiftinfoty);
var
 sx1,sy1,sx2,sy2: integer;
 int1: integer;
 po1: ppointty;
 po2: pbyte;
 pt1,pt2: pointty;
begin
 with triagcty(drawinfo.gc.platformdata).d do begin
  if (linewidth = 0) or (trf_capprojecting in triaflags) then begin
   sx1:= li.v.shift.y div 2  + li.offsy;
   sy1:= li.v.shift.x div 2  + li.offsx;
   with (li.dest-2)^ do begin
    x:= x + sx1;
    y:= y + sy1;
   end;
   with (li.dest-1)^ do begin
    x:= x + sx1;
    y:= y + sy1;
   end;
  end
  else begin
   if trf_capround in triaflags then begin
    if linewidth <= arctablesize then begin
     po1:= li.dest;
     pt1:= (po1-2)^;
     pt2:= (po1-1)^;
     po2:= @arctable[linewidth];
     for int1:= 1 to linewidth div 2 - 1 do begin
      sx1:= (li.v.shift.y*int1) div linewidth1;      //axial
      sy1:= (li.v.shift.x*int1) div linewidth1;
      sx2:= (li.v.shift.x*po2^) div arcscalefact;    //orthogonal
      sy2:= (li.v.shift.y*po2^) div arcscalefact;
      if li.reverse then begin
       sx2:= -sx2;
       sy2:= -sy2;
      end;
      po1^.x:= pt1.x + sx1 - sx2;
      po1^.y:= pt1.y + sy1 + sy2;
      inc(po1);      
      po1^.x:= pt2.x + sx1 + sx2;
      po1^.y:= pt2.y + sy1 - sy2;
      inc(po1);
      inc(po2);
     end;
     sx1:= (li.v.shift.y) div 2;      //axial
     sy1:= (li.v.shift.x) div 2;      
     po1^.x:= (pt1.x + pt2.x) div 2 + sx1;
     po1^.y:= (pt1.y + pt2.y) div 2 + sy1;
     inc(po1);
     li.dest:= po1;
    end;
   end;
  end;
 end;
end;

procedure dashinit(var drawinfo: drawinfoty; var li: lineshiftinfoty);
var
 int1: integer;
begin
 with drawinfo,triagcty(gc.platformdata).d do begin
//  allocbuffer(buffer,3*sizeof(pointty)); //possible first triangle
  buffer.cursize:= 0;
  li.dest:= buffer.buffer;
  li.dashlen:= 0;
  for int1:= 1 to length(xftdashes) do begin
   li.dashlen:= li.dashlen + ord(xftdashes[int1]);
  end;
 end;
end;

procedure dash(var drawinfo: drawinfoty; var li: lineshiftinfoty;
                  const start: boolean; const endpoint: boolean);
var
 po3: ppointty;
 pt0: pointty;
 dx,dy: integer;
 dashstop,dashpos,dashind: integer;
 x1,y1: integer;
 int1: integer;
begin
 with drawinfo,triagcty(gc.platformdata).d do begin
  if start then begin
   dashpos:= ord(xftdashes[1]);
   dashind:= 1;
   li.dashref:= 0;
  end
  else begin
   dashpos:= li.dashpos-li.dashref;
   dashind:= li.dashind;
  end;
  dashstop:= li.v.c;
  int1:= ((dashstop-dashpos) div li.dashlen + 1)*length(xftdashes) + 3*2;
                     //+3*2 -> additional memory for ends and vertex
  if trf_capround in triaflags then begin
   int1:= int1*linewidth1;
  end;
  int1:= int1 * 6*sizeof(pointty); //2 triangles per segment
  extendbuffer(buffer,int1,li.dest);
  po3:= li.dest;
  pt0.x:= (li.linestart^.x shl 16) + li.offs.x;
  pt0.y:= (li.linestart^.y shl 16) + li.offs.y;
  dx:= (li.v.d.x shl 16) div li.v.c;
  dy:= (li.v.d.y shl 16) div li.v.c;
  while dashpos < dashstop do begin
   if odd(dashind) then begin //end dash
    x1:= pt0.x + dashpos*dx; 
    y1:= pt0.y + dashpos*dy; 
    po3^.x:= x1;
    po3^.y:= y1; 
    inc(po3);
    po3^:= (po3-2)^;
    inc(po3);
    po3^.x:= x1; 
    po3^.y:= y1; 
    inc(po3);
    po3^.x:= x1 - li.v.shift.x;
    po3^.y:= y1 + li.v.shift.y;
    inc(po3);
    li.dest:= po3;
    if linewidth <> 0 then begin
     updateendtria(drawinfo,li);
     po3:= li.dest;
    end;
   end
   else begin               //start dash
    x1:= pt0.x + dashpos*dx; 
    y1:= pt0.y + dashpos*dy; 
    po3^.x:= x1;
    po3^.y:= y1;
    inc(po3);
    po3^.x:= x1 - li.v.shift.x;
    po3^.y:= y1 + li.v.shift.y;
    inc(po3);
    li.dest:= po3;
    if linewidth <> 0 then begin
     updatestarttria(drawinfo,li);
     po3:= li.dest;
    end;
   end;
   inc(dashind);
   if dashind > length(xftdashes) then begin
    dashind:= 1;
   end;
   dashpos:= dashpos + ord(xftdashes[dashind]);
  end;
  if odd(dashind) and endpoint then begin //end dash
   x1:= pt0.x + (li.v.d.x shl 16);
   y1:= pt0.y + (li.v.d.y shl 16);
   po3^.x:= x1;
   po3^.y:= y1;
   inc(po3);
   po3^:= (po3-2)^;
   inc(po3);
   po3^.x:= x1;
   po3^.y:= y1;
   inc(po3);
   po3^.x:= x1 - li.v.shift.x;
   po3^.y:= y1 + li.v.shift.y;
   inc(po3);
   li.dest:= po3;
   if linewidth <> 0 then begin
    updateendtria(drawinfo,li);
    po3:= li.dest;
   end;
  end;
  li.dest:= po3;
  li.dashind:= dashind;
  li.dashpos:= dashpos+li.dashref;
  li.dashref:= li.dashref+li.v.c;
 end;
end;

function linestria(var drawinfo: drawinfoty; out apoints: ppointty;
                                     out apointcount: integer): boolean;
var
 li: lineshiftinfoty;
 pt0,pt1,pt3: pointty;
 int1,int2: integer;
 pointcount: integer;
 ints: intersectinfoty;
 pend: ppointty;
 firstdash,bo1,bo2: boolean;
 singlepoint: array[0..1] of pointty;
 pointsbefore: ppointty;
 pt2: pointty;
 po0: ppointty;

begin
 //todo: remove overlapping regions
 result:= false;
 with drawinfo,points,triagcty(gc.platformdata).d do begin
  pointsbefore:= points;
  pointcount:= count;
  if count = 1 then begin
   singlepoint[0]:= points^;    
   singlepoint[1]:= points^; //dummy segment
   points:= @singlepoint[0];
   inc(pointcount);
  end;
  if closed then begin
   inc(pointcount);
  end;
  pointcount:= pointcount*2;
  li.pointa:= points;
  pend:= points+count;
  li.pointb:= li.pointa+1;
  li.dist:= linewidth16;
  li.reverse:= false;
  if closed then begin
   int2:= count-1;
  end
  else begin
   int2:= count-3;
  end;
  if df_dashed in gc.drawingflags then begin
   result:= true;
   int1:= (pointcount+linewidth1);       //for round caps
   if trf_joinround in triaflags then begin
    int1:= int1 + linewidth div 2; //round corners
   end;
   allocbuffer(buffer,int1*2*6*sizeof(pointty));
   dashinit(drawinfo,li);
   calclineshift(drawinfo,li,false);
   shiftpoint(li);
   if (linewidth <> 0) and not closed then begin
    updatestarttria(drawinfo,li);
   end;
   firstdash:= true; //start dash
   for int1:= 0 to int2 do begin
    if li.pointb = pend then begin
     li.pointb:= points;
    end;
    dash(drawinfo,li,firstdash,false);    
    firstdash:= false;
    if odd(li.dashind) then begin //dash end
     inc(li.dest);
     li.dest^:= (li.dest-2)^;
     inc(li.dest);
     shiftpointa(li);
     (li.dest-4)^:= (li.dest-2)^;
    end;
    
    ints.da:= li.v.d;
    pt2:= li.v.shift;
    calclineshift(drawinfo,li,false);
    shiftpoint(li);
    po0:= li.dest;
    ints.db:= li.v.d;
    ints.p0:= po0-4;
    ints.p1:= po0-2;
    pt0:= (li.dest-2)^;
    pt1:= (li.dest-1)^;
    if trf_joinround in triaflags then begin
     if odd(li.dashind) then begin
      roundcapstarttria(drawinfo,li);
     end;
    end
    else begin
     if intersect(ints) then begin
      pt3:= subpoint(ints.isect,ints.p1^); //intersection - bstart
      bo1:= ((pt3.x > 0) xor (li.v.d.x > 0)) or ((pt3.y > 0) xor (li.v.d.y > 0));
                //outer, cw
      bo2:= (trf_joinbevel in triaflags) or 
               (trf_joinmiter in triaflags) and isbevelang(li,pt2);
                                          ///bevel
      if not bo1 then begin
       inc(ints.p0);
       inc(ints.p1);
       intersect2(ints);
       if not bo2 then begin
        pt1:= ints.isect;
       end;
      end
      else begin
       if not bo2 then begin
        pt0:= ints.isect;
       end;
      end;
      if odd(li.dashind) then begin
       if bo1 then begin //cw
        if bo2 then begin //bevel
         po0^:= (po0-4)^;
         inc(po0);
         po0^:= (po0-3)^; //start next
         inc(po0);
         po0^:= (po0-3)^;
         inc(po0);
        end
        else begin //mieter
         pt0:= ints.isect;
         po0^:= pt0; //8
         inc(po0);
         po0^:= pt0; //9
         inc(po0);
         po0^:= (po0-6)^;   //10
         inc(po0);
         po0^:= (po0-4)^;   //11
         inc(po0);
         po0^:= (po0-6)^;   //12
         inc(po0);
         po0^:= (po0-6)^;   //13
         inc(po0);
        end;
       end
       else begin     //ccw
        if bo2 then begin //bevel
         po0^:= (po0-3)^;
         inc(po0);
         po0^:= (po0-3)^; //start next
         inc(po0);
         po0^:= (po0-3)^;
         inc(po0);
        end
        else begin     //miter
         pt1:= ints.isect;
         po0^:= pt1; //8
         inc(po0);
         po0^:= pt1; //9
         inc(po0);
         po0^:= (po0-5)^;   //10
         inc(po0);
         po0^:= (po0-5)^;   //11
         inc(po0);
         po0^:= (po0-6)^;   //12
         inc(po0);
         po0^:= (po0-6)^;   //13
         inc(po0);
        end;
       end;
      end;
     end;
     li.dest:= po0;
    end;
    if not odd(li.dashind) then begin //no dash
     dec(li.dest,2);   //remove start
    end;
   end;
   if closed then begin
{$warnings off}
    (ppointty(buffer.buffer))^:= pt0;
    (ppointty(buffer.buffer)+1)^:= pt1;
    (ppointty(buffer.buffer)+3)^:= pt1;
   end
   else begin
    dash(drawinfo,li,firstdash,true);
   end;
  end
  else begin
   int1:= 2; //for bevel
   if trf_joinround in triaflags then begin
    int1:= int1 + (linewidth1+1) div 2; //round corners
   end;
   int1:= int1*pointcount+linewidth;  //for round caps
   allocbuffer(buffer,int1*(2*sizeof(pointty)));
   li.dest:= buffer.buffer;
   calclineshift(drawinfo,li,false); 
   shiftpoint(li);
   if not closed then begin
    updatestartstrip(drawinfo,li);
   end;
   for int1:= 0 to int2 do begin
    if li.pointb = pend then begin
     li.pointb:= points;
    end;
    shiftpointa(li); //no source increment
    ints.da:= li.v.d;
    pt2:= li.v.shift;
    if calclineshift(drawinfo,li,true) then begin
     shiftpoint(li);
     ints.db:= li.v.d;
     ints.p0:= li.dest-4;
     ints.p1:= li.dest-2;
     if intersect(ints) then begin
      if trf_joinround in triaflags then begin
       roundcapstartstrip(drawinfo,li);
       ints.p1:= li.dest-1;
      end
      else begin
       pt1:= subpoint(ints.isect,ints.p1^); //intersection - bstart
       bo1:= ((pt1.x > 0) xor (li.v.d.x > 0)) or 
                        ((pt1.y > 0) xor (li.v.d.y > 0));  //outer
       bo2:= (trf_joinbevel in triaflags) or 
                (trf_joinmiter in triaflags) and isbevelang(li,pt2);
       if bo1 and not bo2 then begin //move to intersection
        ints.p1^:= ints.isect;
        (ints.p1-2)^:= ints.isect;
       end;
       inc(ints.p0);
       inc(ints.p1);
       intersect2(ints);
       if not bo1 and not bo2 then begin //move to intersection
        ints.p1^:= ints.isect;
        (ints.p1-2)^:= ints.isect;
       end;
      end;
     end;
    end
    else begin //zero length line
     dec(li.dest,2);
     li.pointa:= li.pointb;
     inc(li.pointb);
    end;
   end;
   if closed then begin
    (ppointty(buffer.buffer))^:= (ints.p1-1)^;
    (ppointty(buffer.buffer)+1)^:= ints.p1^;
   end
   else begin
    shiftpoint(li);
    updateendstrip(drawinfo,li);
   end;
  end;
  points:= pointsbefore;
  apoints:= buffer.buffer;
  apointcount:= li.dest-ppointty(buffer.buffer);
 end;
end;
{$warnings on}
procedure linesegmentstria(var drawinfo: drawinfoty;
                  out atriangles: ptrianglety; out atrianglecount: integer);
var
 int1: integer;
 li: lineshiftinfoty; 
begin   
 with drawinfo,drawinfo.points,triagcty(gc.platformdata).d do begin
  li.pointa:= points;
  li.pointb:= li.pointa+1;
  li.dist:= linewidth16;
  li.reverse:= false;
  allocbuffer(buffer,count*(6+6*linewidth1)*sizeof(pointty));
                         //for round caps
  if df_dashed in gc.drawingflags then begin
   dashinit(drawinfo,li);
   for int1:= 0 to (count div 2)-1 do begin
    calclineshift(drawinfo,li,false);
    shiftpoint(li);
    if linewidth <> 0 then begin
     updatestarttria(drawinfo,li);
    end;
    dash(drawinfo,li,true,true);
    li.pointa:= li.pointb;
    inc(li.pointb);
   end;
  end
  else begin
   li.dest:= buffer.buffer;
   for int1:= 0 to (count div 2)-1 do begin
    calclineshift(drawinfo,li,false);
    shiftpoint(li);
    updatestarttria(drawinfo,li);
    inc(li.dest);
    li.dest^:= (li.dest-2)^;
    inc(li.dest);
    shiftpoint(li);
    updateendtria(drawinfo,li);
//    (li.dest-4)^:= (li.dest-2)^;
   end;
  end;
  atriangles:= buffer.buffer;
  atrianglecount:= (li.dest-ppointty(buffer.buffer)) div 3;
 end;
end;

end.
