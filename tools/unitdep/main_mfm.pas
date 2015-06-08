unit main_mfm;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}

interface

implementation
uses
 mseclasses,main;

const
 objdata: record size: integer; data: array[0..3974] of byte end =
      (size: 3975; data: (
  84,80,70,48,7,116,109,97,105,110,102,111,6,109,97,105,110,102,111,7,
  118,105,115,105,98,108,101,8,8,98,111,117,110,100,115,95,120,3,188,0,
  8,98,111,117,110,100,115,95,121,3,220,0,9,98,111,117,110,100,115,95,
  99,120,3,147,1,9,98,111,117,110,100,115,95,99,121,3,24,1,26,99,
  111,110,116,97,105,110,101,114,46,102,114,97,109,101,46,108,111,99,97,108,
  112,114,111,112,115,11,0,27,99,111,110,116,97,105,110,101,114,46,102,114,
  97,109,101,46,108,111,99,97,108,112,114,111,112,115,49,11,0,16,99,111,
  110,116,97,105,110,101,114,46,98,111,117,110,100,115,1,2,0,2,0,3,
  147,1,3,24,1,0,8,115,116,97,116,102,105,108,101,7,10,116,115,116,
  97,116,102,105,108,101,49,7,99,97,112,116,105,111,110,6,10,77,83,69,
  117,110,105,116,100,101,112,15,109,111,100,117,108,101,99,108,97,115,115,110,
  97,109,101,6,9,116,109,97,105,110,102,111,114,109,0,13,116,102,105,108,
  101,110,97,109,101,101,100,105,116,8,102,105,108,101,110,97,109,101,16,102,
  114,97,109,101,46,108,111,99,97,108,112,114,111,112,115,11,0,17,102,114,
  97,109,101,46,108,111,99,97,108,112,114,111,112,115,49,11,0,19,102,114,
  97,109,101,46,98,117,116,116,111,110,115,46,99,111,117,110,116,2,1,19,
  102,114,97,109,101,46,98,117,116,116,111,110,115,46,105,116,101,109,115,14,
  1,5,99,111,108,111,114,4,2,0,0,128,7,105,109,97,103,101,110,114,
  2,17,0,0,18,102,114,97,109,101,46,98,117,116,116,111,110,46,99,111,
  108,111,114,4,2,0,0,128,20,102,114,97,109,101,46,98,117,116,116,111,
  110,46,105,109,97,103,101,110,114,2,17,4,104,105,110,116,6,29,70,80,
  67,32,45,118,117,32,99,111,109,112,105,108,101,114,32,109,101,115,115,97,
  103,101,32,102,105,108,101,8,98,111,117,110,100,115,95,120,2,1,8,98,
  111,117,110,100,115,95,121,2,8,9,98,111,117,110,100,115,95,99,120,3,
  91,1,7,97,110,99,104,111,114,115,11,7,97,110,95,108,101,102,116,6,
  97,110,95,116,111,112,8,97,110,95,114,105,103,104,116,0,8,115,116,97,
  116,102,105,108,101,7,10,116,115,116,97,116,102,105,108,101,49,9,116,101,
  120,116,102,108,97,103,115,11,12,116,102,95,121,99,101,110,116,101,114,101,
  100,11,116,102,95,110,111,115,101,108,101,99,116,14,116,102,95,101,108,108,
  105,112,115,101,108,101,102,116,0,13,111,110,100,97,116,97,101,110,116,101,
  114,101,100,7,17,102,105,108,101,110,97,109,101,100,97,116,101,110,116,101,
  120,101,26,99,111,110,116,114,111,108,108,101,114,46,102,105,108,116,101,114,
  108,105,115,116,46,100,97,116,97,1,1,6,9,116,101,120,116,102,105,108,
  101,115,6,5,42,46,116,120,116,0,0,18,99,111,110,116,114,111,108,108,
  101,114,46,111,112,116,105,111,110,115,11,14,102,100,111,95,99,104,101,99,
  107,101,120,105,115,116,15,102,100,111,95,115,97,118,101,108,97,115,116,100,
  105,114,0,13,114,101,102,102,111,110,116,104,101,105,103,104,116,2,14,0,
  0,7,116,98,117,116,116,111,110,8,116,98,117,116,116,111,110,49,8,116,
  97,98,111,114,100,101,114,2,1,8,98,111,117,110,100,115,95,120,3,96,
  1,8,98,111,117,110,100,115,95,121,2,8,9,98,111,117,110,100,115,95,
  99,120,2,50,9,98,111,117,110,100,115,95,99,121,2,19,7,97,110,99,
  104,111,114,115,11,6,97,110,95,116,111,112,8,97,110,95,114,105,103,104,
  116,0,5,115,116,97,116,101,11,15,97,115,95,108,111,99,97,108,99,97,
  112,116,105,111,110,17,97,115,95,108,111,99,97,108,111,110,101,120,101,99,
  117,116,101,0,7,99,97,112,116,105,111,110,6,5,38,115,99,97,110,9,
  111,110,101,120,101,99,117,116,101,7,7,115,99,97,110,101,120,101,0,0,
  11,116,119,105,100,103,101,116,103,114,105,100,4,103,114,105,100,16,102,114,
  97,109,101,46,108,111,99,97,108,112,114,111,112,115,11,0,17,102,114,97,
  109,101,46,108,111,99,97,108,112,114,111,112,115,49,11,0,8,116,97,98,
  111,114,100,101,114,2,2,8,98,111,117,110,100,115,95,120,2,1,8,98,
  111,117,110,100,115,95,121,2,32,9,98,111,117,110,100,115,95,99,120,3,
  144,1,9,98,111,117,110,100,115,95,99,121,3,186,0,7,97,110,99,104,
  111,114,115,11,7,97,110,95,108,101,102,116,6,97,110,95,116,111,112,8,
  97,110,95,114,105,103,104,116,9,97,110,95,98,111,116,116,111,109,0,13,
  102,105,120,114,111,119,115,46,99,111,117,110,116,2,1,13,102,105,120,114,
  111,119,115,46,105,116,101,109,115,14,1,6,104,101,105,103,104,116,2,16,
  14,99,97,112,116,105,111,110,115,46,99,111,117,110,116,2,1,14,99,97,
  112,116,105,111,110,115,46,105,116,101,109,115,14,1,0,0,0,0,14,100,
  97,116,97,99,111,108,115,46,99,111,117,110,116,2,1,14,100,97,116,97,
  99,111,108,115,46,105,116,101,109,115,14,7,8,116,114,101,101,101,100,105,
  116,1,5,119,105,100,116,104,3,139,1,7,111,112,116,105,111,110,115,11,
  11,99,111,95,114,101,97,100,111,110,108,121,7,99,111,95,102,105,108,108,
  12,99,111,95,115,97,118,101,118,97,108,117,101,12,99,111,95,115,97,118,
  101,115,116,97,116,101,17,99,111,95,109,111,117,115,101,115,99,114,111,108,
  108,114,111,119,0,10,119,105,100,103,101,116,110,97,109,101,6,8,116,114,
  101,101,101,100,105,116,9,100,97,116,97,99,108,97,115,115,7,17,116,116,
  114,101,101,105,116,101,109,101,100,105,116,108,105,115,116,0,0,16,100,97,
  116,97,114,111,119,108,105,110,101,119,105,100,116,104,2,0,13,100,97,116,
  97,114,111,119,104,101,105,103,104,116,2,16,13,114,101,102,102,111,110,116,
  104,101,105,103,104,116,2,14,0,13,116,116,114,101,101,105,116,101,109,101,
  100,105,116,8,116,114,101,101,101,100,105,116,11,111,112,116,105,111,110,115,
  115,107,105,110,11,19,111,115,107,95,102,114,97,109,101,98,117,116,116,111,
  110,111,110,108,121,0,12,102,114,97,109,101,46,108,101,118,101,108,111,2,
  0,17,102,114,97,109,101,46,99,111,108,111,114,99,108,105,101,110,116,4,
  3,0,0,128,16,102,114,97,109,101,46,108,111,99,97,108,112,114,111,112,
  115,11,10,102,114,108,95,108,101,118,101,108,111,10,102,114,108,95,108,101,
  118,101,108,105,15,102,114,108,95,99,111,108,111,114,99,108,105,101,110,116,
  0,17,102,114,97,109,101,46,108,111,99,97,108,112,114,111,112,115,49,11,
  0,8,116,97,98,111,114,100,101,114,2,1,7,118,105,115,105,98,108,101,
  8,8,98,111,117,110,100,115,95,120,2,0,8,98,111,117,110,100,115,95,
  121,2,0,9,98,111,117,110,100,115,95,99,120,3,139,1,9,98,111,117,
  110,100,115,95,99,121,2,16,11,111,112,116,105,111,110,115,101,100,105,116,
  11,11,111,101,95,114,101,97,100,111,110,108,121,12,111,101,95,117,110,100,
  111,111,110,101,115,99,13,111,101,95,99,108,111,115,101,113,117,101,114,121,
  16,111,101,95,99,104,101,99,107,109,114,99,97,110,99,101,108,14,111,101,
  95,115,104,105,102,116,114,101,116,117,114,110,12,111,101,95,101,97,116,114,
  101,116,117,114,110,20,111,101,95,114,101,115,101,116,115,101,108,101,99,116,
  111,110,101,120,105,116,15,111,101,95,101,120,105,116,111,110,99,117,114,115,
  111,114,13,111,101,95,101,110,100,111,110,101,110,116,101,114,13,111,101,95,
  97,117,116,111,115,101,108,101,99,116,25,111,101,95,97,117,116,111,115,101,
  108,101,99,116,111,110,102,105,114,115,116,99,108,105,99,107,22,111,101,95,
  102,111,99,117,115,114,101,99,116,111,110,114,101,97,100,111,110,108,121,9,
  111,101,95,108,111,99,97,116,101,0,7,111,112,116,105,111,110,115,11,16,
  116,101,111,95,116,114,101,101,99,111,108,110,97,118,105,103,0,13,114,101,
  102,102,111,110,116,104,101,105,103,104,116,2,14,0,0,0,17,116,100,114,
  111,112,100,111,119,110,108,105,115,116,101,100,105,116,5,115,116,97,114,116,
  13,102,114,97,109,101,46,99,97,112,116,105,111,110,6,10,83,116,97,114,
  116,32,85,110,105,116,16,102,114,97,109,101,46,108,111,99,97,108,112,114,
  111,112,115,11,0,17,102,114,97,109,101,46,108,111,99,97,108,112,114,111,
  112,115,49,11,0,18,102,114,97,109,101,46,98,117,116,116,111,110,46,99,
  111,108,111,114,4,2,0,0,128,16,102,114,97,109,101,46,111,117,116,101,
  114,102,114,97,109,101,1,2,0,2,17,2,0,2,0,0,8,116,97,98,
  111,114,100,101,114,2,3,8,98,111,117,110,100,115,95,120,2,1,8,98,
  111,117,110,100,115,95,121,3,218,0,9,98,111,117,110,100,115,95,99,120,
  3,198,0,9,98,111,117,110,100,115,95,99,121,2,37,7,97,110,99,104,
  111,114,115,11,7,97,110,95,108,101,102,116,9,97,110,95,98,111,116,116,
  111,109,0,8,115,116,97,116,102,105,108,101,7,10,116,115,116,97,116,102,
  105,108,101,49,11,111,112,116,105,111,110,115,101,100,105,116,11,12,111,101,
  95,117,110,100,111,111,110,101,115,99,13,111,101,95,99,108,111,115,101,113,
  117,101,114,121,16,111,101,95,99,104,101,99,107,109,114,99,97,110,99,101,
  108,14,111,101,95,115,104,105,102,116,114,101,116,117,114,110,24,111,101,95,
  102,111,114,99,101,114,101,116,117,114,110,99,104,101,99,107,118,97,108,117,
  101,12,111,101,95,101,97,116,114,101,116,117,114,110,20,111,101,95,114,101,
  115,101,116,115,101,108,101,99,116,111,110,101,120,105,116,15,111,101,95,101,
  120,105,116,111,110,99,117,114,115,111,114,13,111,101,95,101,110,100,111,110,
  101,110,116,101,114,13,111,101,95,97,117,116,111,115,101,108,101,99,116,25,
  111,101,95,97,117,116,111,115,101,108,101,99,116,111,110,102,105,114,115,116,
  99,108,105,99,107,22,111,101,95,102,111,99,117,115,114,101,99,116,111,110,
  114,101,97,100,111,110,108,121,0,13,111,110,100,97,116,97,101,110,116,101,
  114,101,100,7,13,112,97,116,104,100,97,116,101,110,116,101,120,101,7,105,
  102,105,108,105,110,107,7,13,100,114,111,112,100,111,119,110,117,110,105,116,
  115,16,100,114,111,112,100,111,119,110,46,111,112,116,105,111,110,115,11,14,
  100,101,111,95,115,101,108,101,99,116,111,110,108,121,16,100,101,111,95,97,
  117,116,111,100,114,111,112,100,111,119,110,15,100,101,111,95,107,101,121,100,
  114,111,112,100,111,119,110,12,100,101,111,95,99,108,105,112,104,105,110,116,
  0,19,100,114,111,112,100,111,119,110,46,99,111,108,115,46,99,111,117,110,
  116,2,1,19,100,114,111,112,100,111,119,110,46,99,111,108,115,46,105,116,
  101,109,115,14,1,0,0,13,114,101,102,102,111,110,116,104,101,105,103,104,
  116,2,14,0,0,17,116,100,114,111,112,100,111,119,110,108,105,115,116,101,
  100,105,116,4,100,101,115,116,13,102,114,97,109,101,46,99,97,112,116,105,
  111,110,6,10,68,101,115,116,46,32,85,110,105,116,16,102,114,97,109,101,
  46,108,111,99,97,108,112,114,111,112,115,11,0,17,102,114,97,109,101,46,
  108,111,99,97,108,112,114,111,112,115,49,11,0,18,102,114,97,109,101,46,
  98,117,116,116,111,110,46,99,111,108,111,114,4,2,0,0,128,16,102,114,
  97,109,101,46,111,117,116,101,114,102,114,97,109,101,1,2,0,2,17,2,
  0,2,0,0,8,116,97,98,111,114,100,101,114,2,4,8,98,111,117,110,
  100,115,95,120,3,202,0,8,98,111,117,110,100,115,95,121,3,218,0,9,
  98,111,117,110,100,115,95,99,120,3,201,0,9,98,111,117,110,100,115,95,
  99,121,2,37,7,97,110,99,104,111,114,115,11,7,97,110,95,108,101,102,
  116,8,97,110,95,114,105,103,104,116,9,97,110,95,98,111,116,116,111,109,
  0,8,115,116,97,116,102,105,108,101,7,10,116,115,116,97,116,102,105,108,
  101,49,11,111,112,116,105,111,110,115,101,100,105,116,11,12,111,101,95,117,
  110,100,111,111,110,101,115,99,13,111,101,95,99,108,111,115,101,113,117,101,
  114,121,16,111,101,95,99,104,101,99,107,109,114,99,97,110,99,101,108,14,
  111,101,95,115,104,105,102,116,114,101,116,117,114,110,24,111,101,95,102,111,
  114,99,101,114,101,116,117,114,110,99,104,101,99,107,118,97,108,117,101,12,
  111,101,95,101,97,116,114,101,116,117,114,110,20,111,101,95,114,101,115,101,
  116,115,101,108,101,99,116,111,110,101,120,105,116,15,111,101,95,101,120,105,
  116,111,110,99,117,114,115,111,114,13,111,101,95,101,110,100,111,110,101,110,
  116,101,114,13,111,101,95,97,117,116,111,115,101,108,101,99,116,25,111,101,
  95,97,117,116,111,115,101,108,101,99,116,111,110,102,105,114,115,116,99,108,
  105,99,107,22,111,101,95,102,111,99,117,115,114,101,99,116,111,110,114,101,
  97,100,111,110,108,121,0,13,111,110,100,97,116,97,101,110,116,101,114,101,
  100,7,13,112,97,116,104,100,97,116,101,110,116,101,120,101,7,105,102,105,
  108,105,110,107,7,13,100,114,111,112,100,111,119,110,117,110,105,116,115,16,
  100,114,111,112,100,111,119,110,46,111,112,116,105,111,110,115,11,14,100,101,
  111,95,115,101,108,101,99,116,111,110,108,121,16,100,101,111,95,97,117,116,
  111,100,114,111,112,100,111,119,110,15,100,101,111,95,107,101,121,100,114,111,
  112,100,111,119,110,12,100,101,111,95,99,108,105,112,104,105,110,116,0,19,
  100,114,111,112,100,111,119,110,46,99,111,108,115,46,99,111,117,110,116,2,
  1,19,100,114,111,112,100,111,119,110,46,99,111,108,115,46,105,116,101,109,
  115,14,1,0,0,13,114,101,102,102,111,110,116,104,101,105,103,104,116,2,
  14,0,0,11,116,115,116,114,105,110,103,100,105,115,112,8,112,97,116,104,
  100,105,115,112,16,102,114,97,109,101,46,108,111,99,97,108,112,114,111,112,
  115,11,0,17,102,114,97,109,101,46,108,111,99,97,108,112,114,111,112,115,
  49,11,0,8,116,97,98,111,114,100,101,114,2,5,8,98,111,117,110,100,
  115,95,120,2,1,8,98,111,117,110,100,115,95,121,3,3,1,9,98,111,
  117,110,100,115,95,99,120,3,145,1,9,98,111,117,110,100,115,95,99,121,
  2,18,7,97,110,99,104,111,114,115,11,7,97,110,95,108,101,102,116,8,
  97,110,95,114,105,103,104,116,9,97,110,95,98,111,116,116,111,109,0,7,
  111,112,116,105,111,110,115,11,19,100,119,111,95,104,105,110,116,99,108,105,
  112,112,101,100,116,101,120,116,0,13,114,101,102,102,111,110,116,104,101,105,
  103,104,116,2,14,0,0,9,116,115,112,108,105,116,116,101,114,10,116,115,
  112,108,105,116,116,101,114,49,5,99,111,108,111,114,4,3,0,0,144,8,
  116,97,98,111,114,100,101,114,2,6,7,118,105,115,105,98,108,101,8,8,
  98,111,117,110,100,115,95,120,3,199,0,8,98,111,117,110,100,115,95,121,
  3,234,0,9,98,111,117,110,100,115,95,99,120,2,3,9,98,111,117,110,
  100,115,95,99,121,2,20,7,111,112,116,105,111,110,115,11,9,115,112,111,
  95,104,112,114,111,112,12,115,112,111,95,100,111,99,107,108,101,102,116,11,
  115,112,111,95,100,111,99,107,116,111,112,13,115,112,111,95,100,111,99,107,
  114,105,103,104,116,14,115,112,111,95,100,111,99,107,98,111,116,116,111,109,
  0,8,108,105,110,107,108,101,102,116,7,5,115,116,97,114,116,9,108,105,
  110,107,114,105,103,104,116,7,4,100,101,115,116,0,0,9,116,115,116,97,
  116,102,105,108,101,10,116,115,116,97,116,102,105,108,101,49,8,102,105,108,
  101,110,97,109,101,6,14,109,115,101,117,110,105,116,100,101,112,46,115,116,
  97,7,102,105,108,101,100,105,114,6,11,34,94,47,46,109,115,101,105,100,
  101,34,7,111,112,116,105,111,110,115,11,14,115,102,111,95,99,114,101,97,
  116,101,112,97,116,104,15,115,102,111,95,116,114,97,110,115,97,99,116,105,
  111,110,17,115,102,111,95,97,99,116,105,118,97,116,111,114,114,101,97,100,
  18,115,102,111,95,97,99,116,105,118,97,116,111,114,119,114,105,116,101,0,
  4,108,101,102,116,2,16,3,116,111,112,2,8,0,0,24,116,105,102,105,
  100,114,111,112,100,111,119,110,108,105,115,116,108,105,110,107,99,111,109,112,
  13,100,114,111,112,100,111,119,110,117,110,105,116,115,23,99,111,110,116,114,
  111,108,108,101,114,46,111,112,116,105,111,110,115,118,97,108,117,101,11,10,
  118,99,111,95,110,111,115,121,110,99,0,30,99,111,110,116,114,111,108,108,
  101,114,46,100,114,111,112,100,111,119,110,46,99,111,108,115,46,99,111,117,
  110,116,2,1,30,99,111,110,116,114,111,108,108,101,114,46,100,114,111,112,
  100,111,119,110,46,99,111,108,115,46,105,116,101,109,115,14,1,0,0,4,
  108,101,102,116,2,32,3,116,111,112,2,72,0,0,0)
 );

initialization
 registerobjectdata(@objdata,tmainfo,'');
end.
