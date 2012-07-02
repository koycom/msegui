unit msesettings_mfm;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}

interface

implementation
uses
 mseclasses,msesettings;

const
 objdata: record size: integer; data: array[0..5542] of byte end =
      (size: 5543; data: (
  84,80,70,48,11,116,115,101,116,116,105,110,103,115,102,111,10,115,101,116,
  116,105,110,103,115,102,111,13,111,112,116,105,111,110,115,119,105,100,103,101,
  116,11,13,111,119,95,97,114,114,111,119,102,111,99,117,115,11,111,119,95,
  115,117,98,102,111,99,117,115,17,111,119,95,100,101,115,116,114,111,121,119,
  105,100,103,101,116,115,9,111,119,95,104,105,110,116,111,110,0,7,118,105,
  115,105,98,108,101,8,8,98,111,117,110,100,115,95,120,2,100,8,98,111,
  117,110,100,115,95,121,2,106,9,98,111,117,110,100,115,95,99,120,3,102,
  1,9,98,111,117,110,100,115,95,99,121,3,62,2,23,99,111,110,116,97,
  105,110,101,114,46,111,112,116,105,111,110,115,119,105,100,103,101,116,11,13,
  111,119,95,109,111,117,115,101,102,111,99,117,115,11,111,119,95,116,97,98,
  102,111,99,117,115,13,111,119,95,97,114,114,111,119,102,111,99,117,115,11,
  111,119,95,115,117,98,102,111,99,117,115,19,111,119,95,109,111,117,115,101,
  116,114,97,110,115,112,97,114,101,110,116,17,111,119,95,100,101,115,116,114,
  111,121,119,105,100,103,101,116,115,0,29,99,111,110,116,97,105,110,101,114,
  46,102,114,97,109,101,46,122,111,111,109,119,105,100,116,104,115,116,101,112,
  2,1,30,99,111,110,116,97,105,110,101,114,46,102,114,97,109,101,46,122,
  111,111,109,104,101,105,103,104,116,115,116,101,112,2,1,16,99,111,110,116,
  97,105,110,101,114,46,98,111,117,110,100,115,1,2,0,2,0,3,102,1,
  3,62,2,0,7,111,112,116,105,111,110,115,11,13,102,111,95,99,108,111,
  115,101,111,110,101,115,99,15,102,111,95,97,117,116,111,114,101,97,100,115,
  116,97,116,16,102,111,95,97,117,116,111,119,114,105,116,101,115,116,97,116,
  10,102,111,95,115,97,118,101,112,111,115,12,102,111,95,115,97,118,101,115,
  116,97,116,101,0,8,115,116,97,116,102,105,108,101,7,10,116,115,116,97,
  116,102,105,108,101,49,7,99,97,112,116,105,111,110,6,25,67,111,110,102,
  105,103,117,114,101,32,77,83,69,32,101,110,118,105,114,111,110,109,101,110,
  116,8,111,110,99,114,101,97,116,101,7,12,102,111,114,109,111,110,99,114,
  101,97,116,101,15,109,111,100,117,108,101,99,108,97,115,115,110,97,109,101,
  6,8,116,109,115,101,102,111,114,109,0,13,116,102,105,108,101,110,97,109,
  101,101,100,105,116,11,116,101,109,112,108,97,116,101,100,105,114,3,84,97,
  103,2,5,13,102,114,97,109,101,46,99,97,112,116,105,111,110,6,14,36,
  123,84,69,77,80,76,65,84,69,68,73,82,125,20,102,114,97,109,101,46,
  98,117,116,116,111,110,46,105,109,97,103,101,110,114,2,17,16,102,114,97,
  109,101,46,111,117,116,101,114,102,114,97,109,101,1,2,0,2,17,2,0,
  2,0,0,8,116,97,98,111,114,100,101,114,2,6,4,104,105,110,116,6,
  37,68,105,114,101,99,116,111,114,121,32,102,111,114,32,112,114,111,106,101,
  99,116,32,116,101,109,112,108,97,116,101,32,102,105,108,101,115,46,8,98,
  111,117,110,100,115,95,120,2,8,8,98,111,117,110,100,115,95,121,3,247,
  0,9,98,111,117,110,100,115,95,99,120,3,84,1,9,98,111,117,110,100,
  115,95,99,121,2,37,7,97,110,99,104,111,114,115,11,7,97,110,95,108,
  101,102,116,6,97,110,95,116,111,112,8,97,110,95,114,105,103,104,116,0,
  10,111,110,115,101,116,118,97,108,117,101,7,8,115,101,116,118,97,108,117,
  101,26,99,111,110,116,114,111,108,108,101,114,46,102,105,108,116,101,114,108,
  105,115,116,46,100,97,116,97,1,1,6,13,80,114,111,106,101,99,116,32,
  102,105,108,101,115,6,5,42,46,112,114,106,0,0,18,99,111,110,116,114,
  111,108,108,101,114,46,111,112,116,105,111,110,115,11,13,102,100,111,95,100,
  105,114,101,99,116,111,114,121,0,22,99,111,110,116,114,111,108,108,101,114,
  46,99,97,112,116,105,111,110,111,112,101,110,6,26,80,114,111,106,101,99,
  116,32,116,101,109,112,108,97,116,101,32,100,105,114,101,99,116,111,114,121,
  24,99,111,110,116,114,111,108,108,101,114,46,111,110,103,101,116,102,105,108,
  101,110,97,109,101,7,18,101,112,97,110,100,102,105,108,101,110,97,109,101,
  109,97,99,114,111,13,114,101,102,102,111,110,116,104,101,105,103,104,116,2,
  14,0,0,7,116,98,117,116,116,111,110,8,116,98,117,116,116,111,110,49,
  8,116,97,98,111,114,100,101,114,2,13,8,98,111,117,110,100,115,95,120,
  3,240,0,8,98,111,117,110,100,115,95,121,3,29,2,9,98,111,117,110,
  100,115,95,99,120,2,50,9,98,111,117,110,100,115,95,99,121,2,22,7,
  97,110,99,104,111,114,115,11,6,97,110,95,116,111,112,8,97,110,95,114,
  105,103,104,116,0,5,115,116,97,116,101,11,10,97,115,95,100,101,102,97,
  117,108,116,15,97,115,95,108,111,99,97,108,100,101,102,97,117,108,116,15,
  97,115,95,108,111,99,97,108,99,97,112,116,105,111,110,0,7,99,97,112,
  116,105,111,110,6,2,79,75,11,109,111,100,97,108,114,101,115,117,108,116,
  7,5,109,114,95,111,107,0,0,7,116,98,117,116,116,111,110,8,116,98,
  117,116,116,111,110,50,8,98,111,117,110,100,115,95,120,3,40,1,8,98,
  111,117,110,100,115,95,121,3,29,2,9,98,111,117,110,100,115,95,99,120,
  2,50,9,98,111,117,110,100,115,95,99,121,2,22,7,97,110,99,104,111,
  114,115,11,6,97,110,95,116,111,112,8,97,110,95,114,105,103,104,116,0,
  5,115,116,97,116,101,11,15,97,115,95,108,111,99,97,108,99,97,112,116,
  105,111,110,0,7,99,97,112,116,105,111,110,6,6,67,97,110,99,101,108,
  11,109,111,100,97,108,114,101,115,117,108,116,7,9,109,114,95,99,97,110,
  99,101,108,0,0,13,116,102,105,108,101,110,97,109,101,101,100,105,116,6,
  102,112,99,100,105,114,13,102,114,97,109,101,46,99,97,112,116,105,111,110,
  6,9,36,123,70,80,67,68,73,82,125,20,102,114,97,109,101,46,98,117,
  116,116,111,110,46,105,109,97,103,101,110,114,2,17,16,102,114,97,109,101,
  46,111,117,116,101,114,102,114,97,109,101,1,2,0,2,17,2,0,2,0,
  0,8,116,97,98,111,114,100,101,114,2,1,4,104,105,110,116,6,81,82,
  111,111,116,32,100,105,114,101,99,116,111,114,121,32,111,102,32,70,114,101,
  101,32,80,97,115,99,97,108,32,115,121,115,116,101,109,32,40,110,111,116,
  32,117,115,101,100,32,98,121,32,116,104,101,32,100,101,102,97,117,108,116,
  32,112,114,111,106,101,99,116,32,116,101,109,112,108,97,116,101,115,41,46,
  8,98,111,117,110,100,115,95,120,2,8,8,98,111,117,110,100,115,95,121,
  2,7,9,98,111,117,110,100,115,95,99,120,3,84,1,9,98,111,117,110,
  100,115,95,99,121,2,37,7,97,110,99,104,111,114,115,11,7,97,110,95,
  108,101,102,116,6,97,110,95,116,111,112,8,97,110,95,114,105,103,104,116,
  0,10,111,110,115,101,116,118,97,108,117,101,7,8,115,101,116,118,97,108,
  117,101,18,99,111,110,116,114,111,108,108,101,114,46,111,112,116,105,111,110,
  115,11,13,102,100,111,95,100,105,114,101,99,116,111,114,121,0,22,99,111,
  110,116,114,111,108,108,101,114,46,99,97,112,116,105,111,110,111,112,101,110,
  6,18,70,80,67,32,114,111,111,116,32,100,105,114,101,99,116,111,114,121,
  24,99,111,110,116,114,111,108,108,101,114,46,111,110,103,101,116,102,105,108,
  101,110,97,109,101,7,18,101,112,97,110,100,102,105,108,101,110,97,109,101,
  109,97,99,114,111,13,114,101,102,102,111,110,116,104,101,105,103,104,116,2,
  14,0,0,13,116,102,105,108,101,110,97,109,101,101,100,105,116,6,109,115,
  101,100,105,114,3,84,97,103,2,2,13,102,114,97,109,101,46,99,97,112,
  116,105,111,110,6,9,36,123,77,83,69,68,73,82,125,20,102,114,97,109,
  101,46,98,117,116,116,111,110,46,105,109,97,103,101,110,114,2,17,16,102,
  114,97,109,101,46,111,117,116,101,114,102,114,97,109,101,1,2,0,2,17,
  2,0,2,0,0,8,116,97,98,111,114,100,101,114,2,3,4,104,105,110,
  116,6,25,82,111,111,116,32,100,105,114,101,99,116,111,114,121,32,111,102,
  32,109,115,101,103,117,105,46,8,98,111,117,110,100,115,95,120,2,8,8,
  98,111,117,110,100,115,95,121,2,103,9,98,111,117,110,100,115,95,99,120,
  3,84,1,9,98,111,117,110,100,115,95,99,121,2,37,7,97,110,99,104,
  111,114,115,11,7,97,110,95,108,101,102,116,6,97,110,95,116,111,112,8,
  97,110,95,114,105,103,104,116,0,10,111,110,115,101,116,118,97,108,117,101,
  7,8,115,101,116,118,97,108,117,101,18,99,111,110,116,114,111,108,108,101,
  114,46,111,112,116,105,111,110,115,11,13,102,100,111,95,100,105,114,101,99,
  116,111,114,121,0,22,99,111,110,116,114,111,108,108,101,114,46,99,97,112,
  116,105,111,110,111,112,101,110,6,21,77,83,69,103,117,105,32,114,111,111,
  116,32,100,105,114,101,99,116,111,114,121,24,99,111,110,116,114,111,108,108,
  101,114,46,111,110,103,101,116,102,105,108,101,110,97,109,101,7,18,101,112,
  97,110,100,102,105,108,101,110,97,109,101,109,97,99,114,111,13,114,101,102,
  102,111,110,116,104,101,105,103,104,116,2,14,0,0,13,116,102,105,108,101,
  110,97,109,101,101,100,105,116,8,99,111,109,112,105,108,101,114,3,84,97,
  103,2,7,13,102,114,97,109,101,46,99,97,112,116,105,111,110,6,11,36,
  123,67,79,77,80,73,76,69,82,125,20,102,114,97,109,101,46,98,117,116,
  116,111,110,46,105,109,97,103,101,110,114,2,17,16,102,114,97,109,101,46,
  111,117,116,101,114,102,114,97,109,101,1,2,0,2,17,2,0,2,0,0,
  8,116,97,98,111,114,100,101,114,2,8,4,104,105,110,116,6,26,80,97,
  116,104,32,116,111,32,99,111,109,112,105,108,101,114,32,40,112,112,99,51,
  56,54,41,46,8,98,111,117,110,100,115,95,120,2,8,8,98,111,117,110,
  100,115,95,121,3,87,1,9,98,111,117,110,100,115,95,99,120,3,84,1,
  9,98,111,117,110,100,115,95,99,121,2,37,7,97,110,99,104,111,114,115,
  11,7,97,110,95,108,101,102,116,6,97,110,95,116,111,112,8,97,110,95,
  114,105,103,104,116,0,10,111,110,115,101,116,118,97,108,117,101,7,8,115,
  101,116,118,97,108,117,101,22,99,111,110,116,114,111,108,108,101,114,46,99,
  97,112,116,105,111,110,111,112,101,110,6,13,67,111,109,112,105,108,101,114,
  32,112,97,116,104,24,99,111,110,116,114,111,108,108,101,114,46,111,110,103,
  101,116,102,105,108,101,110,97,109,101,7,18,101,112,97,110,100,102,105,108,
  101,110,97,109,101,109,97,99,114,111,13,114,101,102,102,111,110,116,104,101,
  105,103,104,116,2,14,0,0,13,116,102,105,108,101,110,97,109,101,101,100,
  105,116,8,100,101,98,117,103,103,101,114,3,84,97,103,2,8,13,102,114,
  97,109,101,46,99,97,112,116,105,111,110,6,11,36,123,68,69,66,85,71,
  71,69,82,125,20,102,114,97,109,101,46,98,117,116,116,111,110,46,105,109,
  97,103,101,110,114,2,17,16,102,114,97,109,101,46,111,117,116,101,114,102,
  114,97,109,101,1,2,0,2,17,2,0,2,0,0,8,116,97,98,111,114,
  100,101,114,2,9,4,104,105,110,116,6,23,80,97,116,104,32,116,111,32,
  100,101,98,117,103,103,101,114,32,40,103,100,98,41,46,8,98,111,117,110,
  100,115,95,120,2,8,8,98,111,117,110,100,115,95,121,3,135,1,9,98,
  111,117,110,100,115,95,99,120,3,84,1,9,98,111,117,110,100,115,95,99,
  121,2,37,7,97,110,99,104,111,114,115,11,7,97,110,95,108,101,102,116,
  6,97,110,95,116,111,112,8,97,110,95,114,105,103,104,116,0,10,111,110,
  115,101,116,118,97,108,117,101,7,8,115,101,116,118,97,108,117,101,22,99,
  111,110,116,114,111,108,108,101,114,46,99,97,112,116,105,111,110,111,112,101,
  110,6,13,68,101,98,117,103,103,101,114,32,112,97,116,104,24,99,111,110,
  116,114,111,108,108,101,114,46,111,110,103,101,116,102,105,108,101,110,97,109,
  101,7,18,101,112,97,110,100,102,105,108,101,110,97,109,101,109,97,99,114,
  111,13,114,101,102,102,111,110,116,104,101,105,103,104,116,2,14,0,0,13,
  116,102,105,108,101,110,97,109,101,101,100,105,116,12,115,121,110,116,97,120,
  100,101,102,100,105,114,3,84,97,103,2,4,13,102,114,97,109,101,46,99,
  97,112,116,105,111,110,6,15,36,123,83,89,78,84,65,88,68,69,70,68,
  73,82,125,20,102,114,97,109,101,46,98,117,116,116,111,110,46,105,109,97,
  103,101,110,114,2,17,16,102,114,97,109,101,46,111,117,116,101,114,102,114,
  97,109,101,1,2,0,2,17,2,0,2,0,0,8,116,97,98,111,114,100,
  101,114,2,5,4,104,105,110,116,6,38,68,105,114,101,99,116,111,114,121,
  32,102,111,114,32,115,121,110,116,97,120,32,100,101,102,105,110,105,116,105,
  111,110,32,102,105,108,101,115,46,8,98,111,117,110,100,115,95,120,2,8,
  8,98,111,117,110,100,115,95,121,3,199,0,9,98,111,117,110,100,115,95,
  99,120,3,84,1,9,98,111,117,110,100,115,95,99,121,2,37,7,97,110,
  99,104,111,114,115,11,7,97,110,95,108,101,102,116,6,97,110,95,116,111,
  112,8,97,110,95,114,105,103,104,116,0,10,111,110,115,101,116,118,97,108,
  117,101,7,8,115,101,116,118,97,108,117,101,26,99,111,110,116,114,111,108,
  108,101,114,46,102,105,108,116,101,114,108,105,115,116,46,100,97,116,97,1,
  1,6,18,83,121,110,116,97,120,32,100,101,102,105,110,105,116,105,111,110,
  115,6,6,42,46,115,100,101,102,0,0,18,99,111,110,116,114,111,108,108,
  101,114,46,111,112,116,105,111,110,115,11,13,102,100,111,95,100,105,114,101,
  99,116,111,114,121,0,22,99,111,110,116,114,111,108,108,101,114,46,99,97,
  112,116,105,111,110,111,112,101,110,6,36,68,105,114,101,99,116,111,114,121,
  32,102,111,114,32,115,110,116,97,120,32,100,101,102,105,110,105,116,105,111,
  110,32,102,105,108,101,115,24,99,111,110,116,114,111,108,108,101,114,46,111,
  110,103,101,116,102,105,108,101,110,97,109,101,7,18,101,112,97,110,100,102,
  105,108,101,110,97,109,101,109,97,99,114,111,13,114,101,102,102,111,110,116,
  104,101,105,103,104,116,2,14,0,0,11,116,115,116,114,105,110,103,101,100,
  105,116,6,101,120,101,101,120,116,3,84,97,103,2,9,13,102,114,97,109,
  101,46,99,97,112,116,105,111,110,6,9,36,123,69,88,69,69,88,84,125,
  11,102,114,97,109,101,46,100,117,109,109,121,2,0,16,102,114,97,109,101,
  46,111,117,116,101,114,102,114,97,109,101,1,2,0,2,17,2,0,2,0,
  0,8,116,97,98,111,114,100,101,114,2,10,8,98,111,117,110,100,115,95,
  120,2,8,8,98,111,117,110,100,115,95,121,3,183,1,9,98,111,117,110,
  100,115,95,99,120,2,78,9,98,111,117,110,100,115,95,99,121,2,37,10,
  111,110,115,101,116,118,97,108,117,101,7,8,115,101,116,118,97,108,117,101,
  13,114,101,102,102,111,110,116,104,101,105,103,104,116,2,14,0,0,11,116,
  115,116,114,105,110,103,101,100,105,116,6,116,97,114,103,101,116,3,84,97,
  103,2,10,13,102,114,97,109,101,46,99,97,112,116,105,111,110,6,9,36,
  123,84,65,82,71,69,84,125,11,102,114,97,109,101,46,100,117,109,109,121,
  2,0,16,102,114,97,109,101,46,111,117,116,101,114,102,114,97,109,101,1,
  2,0,2,17,2,0,2,0,0,8,116,97,98,111,114,100,101,114,2,11,
  8,98,111,117,110,100,115,95,120,2,96,8,98,111,117,110,100,115,95,121,
  3,183,1,9,98,111,117,110,100,115,95,99,120,3,252,0,9,98,111,117,
  110,100,115,95,99,121,2,37,7,97,110,99,104,111,114,115,11,7,97,110,
  95,108,101,102,116,6,97,110,95,116,111,112,8,97,110,95,114,105,103,104,
  116,0,10,111,110,115,101,116,118,97,108,117,101,7,8,115,101,116,118,97,
  108,117,101,13,114,101,102,102,111,110,116,104,101,105,103,104,116,2,14,0,
  0,13,116,102,105,108,101,110,97,109,101,101,100,105,116,9,109,115,101,108,
  105,98,100,105,114,3,84,97,103,2,3,13,102,114,97,109,101,46,99,97,
  112,116,105,111,110,6,12,36,123,77,83,69,76,73,66,68,73,82,125,20,
  102,114,97,109,101,46,98,117,116,116,111,110,46,105,109,97,103,101,110,114,
  2,17,16,102,114,97,109,101,46,111,117,116,101,114,102,114,97,109,101,1,
  2,0,2,17,2,0,2,0,0,8,116,97,98,111,114,100,101,114,2,4,
  4,104,105,110,116,6,33,82,111,111,116,32,100,105,114,101,99,116,111,114,
  121,32,111,102,32,109,115,101,103,117,105,32,108,105,98,114,97,114,121,46,
  8,98,111,117,110,100,115,95,120,2,8,8,98,111,117,110,100,115,95,121,
  3,151,0,9,98,111,117,110,100,115,95,99,120,3,84,1,9,98,111,117,
  110,100,115,95,99,121,2,37,7,97,110,99,104,111,114,115,11,7,97,110,
  95,108,101,102,116,6,97,110,95,116,111,112,8,97,110,95,114,105,103,104,
  116,0,10,111,110,115,101,116,118,97,108,117,101,7,8,115,101,116,118,97,
  108,117,101,18,99,111,110,116,114,111,108,108,101,114,46,111,112,116,105,111,
  110,115,11,13,102,100,111,95,100,105,114,101,99,116,111,114,121,0,22,99,
  111,110,116,114,111,108,108,101,114,46,99,97,112,116,105,111,110,111,112,101,
  110,6,24,77,83,69,103,117,105,32,108,105,98,114,97,114,121,32,100,105,
  114,101,99,116,111,114,121,24,99,111,110,116,114,111,108,108,101,114,46,111,
  110,103,101,116,102,105,108,101,110,97,109,101,7,18,101,112,97,110,100,102,
  105,108,101,110,97,109,101,109,97,99,114,111,13,114,101,102,102,111,110,116,
  104,101,105,103,104,116,2,14,0,0,13,116,102,105,108,101,110,97,109,101,
  101,100,105,116,9,102,112,99,108,105,98,100,105,114,3,84,97,103,2,1,
  13,102,114,97,109,101,46,99,97,112,116,105,111,110,6,12,36,123,70,80,
  67,76,73,66,68,73,82,125,20,102,114,97,109,101,46,98,117,116,116,111,
  110,46,105,109,97,103,101,110,114,2,17,16,102,114,97,109,101,46,111,117,
  116,101,114,102,114,97,109,101,1,2,0,2,17,2,0,2,0,0,8,116,
  97,98,111,114,100,101,114,2,2,4,104,105,110,116,6,74,82,111,111,116,
  32,100,105,114,101,99,116,111,114,121,32,111,102,32,70,80,67,32,108,105,
  98,114,97,114,121,32,40,110,111,116,32,117,115,101,100,32,98,121,32,116,
  104,101,32,100,101,102,97,117,108,116,32,112,114,111,106,101,99,116,32,116,
  101,109,112,108,97,116,101,115,41,46,8,98,111,117,110,100,115,95,120,2,
  8,8,98,111,117,110,100,115,95,121,2,55,9,98,111,117,110,100,115,95,
  99,120,3,84,1,9,98,111,117,110,100,115,95,99,121,2,37,7,97,110,
  99,104,111,114,115,11,7,97,110,95,108,101,102,116,6,97,110,95,116,111,
  112,8,97,110,95,114,105,103,104,116,0,18,99,111,110,116,114,111,108,108,
  101,114,46,111,112,116,105,111,110,115,11,13,102,100,111,95,100,105,114,101,
  99,116,111,114,121,0,22,99,111,110,116,114,111,108,108,101,114,46,99,97,
  112,116,105,111,110,111,112,101,110,6,21,70,80,67,32,108,105,98,114,97,
  114,121,32,100,105,114,101,99,116,111,114,121,13,114,101,102,102,111,110,116,
  104,101,105,103,104,116,2,14,0,0,11,116,115,116,114,105,110,103,101,100,
  105,116,9,112,114,105,110,116,99,111,109,109,13,102,114,97,109,101,46,99,
  97,112,116,105,111,110,6,13,80,114,105,110,116,32,99,111,109,109,97,110,
  100,11,102,114,97,109,101,46,100,117,109,109,121,2,0,16,102,114,97,109,
  101,46,111,117,116,101,114,102,114,97,109,101,1,2,0,2,17,2,0,2,
  0,0,8,116,97,98,111,114,100,101,114,2,12,8,98,111,117,110,100,115,
  95,120,2,8,8,98,111,117,110,100,115,95,121,3,231,1,9,98,111,117,
  110,100,115,95,99,120,3,84,1,9,98,111,117,110,100,115,95,99,121,2,
  37,7,97,110,99,104,111,114,115,11,7,97,110,95,108,101,102,116,6,97,
  110,95,116,111,112,8,97,110,95,114,105,103,104,116,0,10,111,110,115,101,
  116,118,97,108,117,101,7,12,115,101,116,112,114,105,110,116,99,111,109,109,
  13,114,101,102,102,111,110,116,104,101,105,103,104,116,2,14,0,0,13,116,
  102,105,108,101,110,97,109,101,101,100,105,116,12,99,111,109,112,115,116,111,
  114,101,100,105,114,3,84,97,103,2,6,13,102,114,97,109,101,46,99,97,
  112,116,105,111,110,6,15,36,123,67,79,77,80,83,84,79,82,69,68,73,
  82,125,20,102,114,97,109,101,46,98,117,116,116,111,110,46,105,109,97,103,
  101,110,114,2,17,16,102,114,97,109,101,46,111,117,116,101,114,102,114,97,
  109,101,1,2,0,2,17,2,0,2,0,0,8,116,97,98,111,114,100,101,
  114,2,7,4,104,105,110,116,6,36,68,105,114,101,99,116,111,114,121,32,
  102,111,114,32,99,111,109,112,111,110,101,110,116,32,115,116,111,114,101,32,
  102,105,108,101,115,46,8,98,111,117,110,100,115,95,120,2,8,8,98,111,
  117,110,100,115,95,121,3,39,1,9,98,111,117,110,100,115,95,99,120,3,
  84,1,9,98,111,117,110,100,115,95,99,121,2,37,7,97,110,99,104,111,
  114,115,11,7,97,110,95,108,101,102,116,6,97,110,95,116,111,112,8,97,
  110,95,114,105,103,104,116,0,10,111,110,115,101,116,118,97,108,117,101,7,
  8,115,101,116,118,97,108,117,101,26,99,111,110,116,114,111,108,108,101,114,
  46,102,105,108,116,101,114,108,105,115,116,46,100,97,116,97,1,1,6,13,
  80,114,111,106,101,99,116,32,102,105,108,101,115,6,5,42,46,112,114,106,
  0,0,18,99,111,110,116,114,111,108,108,101,114,46,111,112,116,105,111,110,
  115,11,13,102,100,111,95,100,105,114,101,99,116,111,114,121,0,22,99,111,
  110,116,114,111,108,108,101,114,46,99,97,112,116,105,111,110,111,112,101,110,
  6,30,68,105,114,101,99,116,111,114,121,32,102,111,114,32,99,111,109,112,
  111,110,101,110,116,32,115,116,111,114,101,115,24,99,111,110,116,114,111,108,
  108,101,114,46,111,110,103,101,116,102,105,108,101,110,97,109,101,7,18,101,
  112,97,110,100,102,105,108,101,110,97,109,101,109,97,99,114,111,13,114,101,
  102,102,111,110,116,104,101,105,103,104,116,2,14,0,0,7,116,98,117,116,
  116,111,110,10,115,104,111,114,116,99,117,116,98,117,8,116,97,98,111,114,
  100,101,114,2,14,8,98,111,117,110,100,115,95,120,2,10,8,98,111,117,
  110,100,115,95,121,3,29,2,9,98,111,117,110,100,115,95,99,120,2,78,
  9,98,111,117,110,100,115,95,99,121,2,22,5,115,116,97,116,101,11,15,
  97,115,95,108,111,99,97,108,99,97,112,116,105,111,110,17,97,115,95,108,
  111,99,97,108,111,110,101,120,101,99,117,116,101,0,7,99,97,112,116,105,
  111,110,6,9,83,104,111,114,116,99,117,116,115,9,111,110,101,120,101,99,
  117,116,101,7,13,101,100,105,116,115,104,111,114,116,99,117,116,115,0,0,
  9,116,115,116,97,116,102,105,108,101,10,116,115,116,97,116,102,105,108,101,
  49,8,102,105,108,101,110,97,109,101,6,14,115,101,116,116,105,110,103,115,
  102,111,46,115,116,97,7,111,112,116,105,111,110,115,11,10,115,102,111,95,
  109,101,109,111,114,121,0,4,108,101,102,116,2,16,3,116,111,112,2,32,
  0,0,0)
 );

initialization
 registerobjectdata(@objdata,tsettingsfo,'');
end.
