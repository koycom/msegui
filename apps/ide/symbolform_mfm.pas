unit symbolform_mfm;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}

interface

implementation
uses
 mseclasses,symbolform;

const
 objdata: record size: integer; data: array[0..6052] of byte end =
      (size: 6053; data: (
  84,80,70,48,9,116,115,121,109,98,111,108,102,111,8,115,121,109,98,111,
  108,102,111,15,102,114,97,109,101,46,103,114,105,112,95,115,105,122,101,2,
  10,18,102,114,97,109,101,46,103,114,105,112,95,111,112,116,105,111,110,115,
  11,14,103,111,95,99,108,111,115,101,98,117,116,116,111,110,16,103,111,95,
  102,105,120,115,105,122,101,98,117,116,116,111,110,12,103,111,95,116,111,112,
  98,117,116,116,111,110,19,103,111,95,98,97,99,107,103,114,111,117,110,100,
  98,117,116,116,111,110,13,103,111,95,108,111,99,107,98,117,116,116,111,110,
  0,11,102,114,97,109,101,46,100,117,109,109,121,2,0,7,118,105,115,105,
  98,108,101,8,8,98,111,117,110,100,115,95,120,3,142,0,8,98,111,117,
  110,100,115,95,121,3,1,1,9,98,111,117,110,100,115,95,99,120,3,105,
  1,9,98,111,117,110,100,115,95,99,121,3,137,0,16,99,111,110,116,97,
  105,110,101,114,46,98,111,117,110,100,115,1,2,0,2,0,3,95,1,3,
  137,0,0,20,100,114,97,103,100,111,99,107,46,111,112,116,105,111,110,115,
  100,111,99,107,11,10,111,100,95,115,97,118,101,112,111,115,13,111,100,95,
  115,97,118,101,122,111,114,100,101,114,10,111,100,95,99,97,110,109,111,118,
  101,10,111,100,95,99,97,110,115,105,122,101,11,111,100,95,99,97,110,102,
  108,111,97,116,10,111,100,95,99,97,110,100,111,99,107,11,111,100,95,112,
  114,111,112,115,105,122,101,0,7,111,112,116,105,111,110,115,11,10,102,111,
  95,115,97,118,101,112,111,115,13,102,111,95,115,97,118,101,122,111,114,100,
  101,114,12,102,111,95,115,97,118,101,115,116,97,116,101,0,8,115,116,97,
  116,102,105,108,101,7,22,109,97,105,110,102,111,46,112,114,111,106,101,99,
  116,115,116,97,116,102,105,108,101,7,99,97,112,116,105,111,110,6,7,83,
  121,109,98,111,108,115,21,105,99,111,110,46,116,114,97,110,115,112,97,114,
  101,110,116,99,111,108,111,114,4,6,0,0,128,12,105,99,111,110,46,111,
  112,116,105,111,110,115,11,10,98,109,111,95,109,97,115,107,101,100,0,10,
  105,99,111,110,46,105,109,97,103,101,10,60,4,0,0,0,0,0,0,2,
  0,0,0,24,0,0,0,24,0,0,0,168,3,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,208,208,208,96,124,124,124,25,217,217,217,22,255,
  255,255,1,124,124,124,1,217,217,217,3,182,182,182,1,153,153,153,1,213,
  213,213,1,217,217,217,1,194,194,194,1,188,188,188,1,217,217,217,3,200,
  200,200,1,187,187,187,1,194,194,194,1,178,178,178,1,217,217,217,3,204,
  204,204,1,174,174,174,1,217,217,217,1,255,255,255,1,124,124,124,1,217,
  217,217,2,85,85,85,1,2,2,2,1,9,9,9,1,22,22,22,1,191,
  191,191,1,144,144,144,1,18,18,18,1,213,213,213,1,217,217,217,2,53,
  53,53,1,101,101,101,1,79,79,79,1,3,3,3,1,204,204,204,1,217,
  217,217,2,99,99,99,1,2,2,2,1,217,217,217,1,255,255,255,1,124,
  124,124,1,217,217,217,1,199,199,199,1,11,11,11,1,182,182,182,1,210,
  210,210,1,62,62,62,1,76,76,76,1,217,217,217,1,36,36,36,1,111,
  111,111,1,217,217,217,1,174,174,174,1,19,19,19,1,210,210,210,1,79,
  79,79,1,7,7,7,1,137,137,137,1,217,217,217,2,51,51,51,1,7,
  7,7,1,217,217,217,1,255,255,255,1,124,124,124,1,217,217,217,1,164,
  164,164,1,31,31,31,1,217,217,217,2,168,168,168,1,101,101,101,1,217,
  217,217,1,137,137,137,1,24,24,24,1,217,217,217,1,63,63,63,1,99,
  99,99,1,217,217,217,1,79,79,79,1,42,42,42,1,81,81,81,1,217,
  217,217,2,38,38,38,1,15,15,15,1,217,217,217,1,255,255,255,1,124,
  124,124,1,217,217,217,1,213,213,213,1,18,18,18,1,48,48,48,1,149,
  149,149,1,217,217,217,4,31,31,31,1,113,113,113,1,22,22,22,1,210,
  210,210,1,217,217,217,1,79,79,79,1,86,86,86,1,38,38,38,1,217,
  217,217,1,167,167,167,1,62,62,62,1,15,15,15,1,217,217,217,1,255,
  255,255,1,124,124,124,1,217,217,217,2,166,166,166,1,44,44,44,1,1,
  1,1,1,28,28,28,1,184,184,184,1,217,217,217,2,128,128,128,1,4,
  4,4,1,99,99,99,1,217,217,217,2,79,79,79,1,108,108,108,1,26,
  26,26,1,213,213,213,1,101,101,101,1,115,115,115,1,15,15,15,1,217,
  217,217,1,255,255,255,1,124,124,124,1,217,217,217,4,180,180,180,1,59,
  59,59,1,43,43,43,1,217,217,217,3,10,10,10,1,207,207,207,1,217,
  217,217,2,79,79,79,1,108,108,108,1,57,57,57,1,149,149,149,1,51,
  51,51,1,188,188,188,1,15,15,15,1,217,217,217,1,255,255,255,1,124,
  124,124,1,217,217,217,1,123,123,123,1,95,95,95,1,217,217,217,2,210,
  210,210,1,16,16,16,1,217,217,217,3,13,13,13,1,213,213,213,1,217,
  217,217,2,79,79,79,1,108,108,108,2,88,88,88,1,40,40,40,1,217,
  217,217,1,15,15,15,1,217,217,217,1,255,255,255,1,124,124,124,1,217,
  217,217,1,155,155,155,1,22,22,22,1,196,196,196,1,217,217,217,1,146,
  146,146,1,34,34,34,1,217,217,217,3,13,13,13,1,213,213,213,1,217,
  217,217,2,79,79,79,1,108,108,108,1,178,178,178,1,25,25,25,1,62,
  62,62,1,217,217,217,1,15,15,15,1,217,217,217,1,255,255,255,1,124,
  124,124,1,217,217,217,2,60,60,60,1,9,9,9,1,33,33,33,1,9,
  9,9,1,138,138,138,1,217,217,217,3,13,13,13,1,213,213,213,1,217,
  217,217,2,79,79,79,1,108,108,108,1,217,217,217,1,17,17,17,1,115,
  115,115,1,217,217,217,1,15,15,15,1,217,217,217,1,255,255,255,1,124,
  124,124,1,217,217,217,3,155,155,155,1,113,113,113,1,181,181,181,1,217,
  217,217,4,141,141,141,1,217,217,217,3,174,174,174,1,185,185,185,1,217,
  217,217,1,156,156,156,1,200,200,200,1,217,217,217,1,144,144,144,1,217,
  217,217,1,255,255,255,1,124,124,124,1,217,217,217,22,255,255,255,1,124,
  124,124,1,217,217,217,22,255,255,255,1,124,124,124,1,255,255,255,23,208,
  208,208,96,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,
  255,255,0,255,255,255,0,255,255,255,0,255,255,255,0,255,255,255,0,255,
  255,255,0,255,255,255,0,255,255,255,0,255,255,255,0,255,255,255,0,255,
  255,255,0,255,255,255,0,255,255,255,0,255,255,255,0,255,255,255,0,255,
  255,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
  111,110,115,104,111,119,7,6,115,104,111,119,101,120,15,109,111,100,117,108,
  101,99,108,97,115,115,110,97,109,101,6,9,116,100,111,99,107,102,111,114,
  109,0,11,116,119,105,100,103,101,116,103,114,105,100,4,103,114,105,100,13,
  111,112,116,105,111,110,115,119,105,100,103,101,116,11,13,111,119,95,109,111,
  117,115,101,102,111,99,117,115,11,111,119,95,116,97,98,102,111,99,117,115,
  13,111,119,95,97,114,114,111,119,102,111,99,117,115,15,111,119,95,97,114,
  114,111,119,102,111,99,117,115,105,110,16,111,119,95,97,114,114,111,119,102,
  111,99,117,115,111,117,116,17,111,119,95,102,111,99,117,115,98,97,99,107,
  111,110,101,115,99,13,111,119,95,109,111,117,115,101,119,104,101,101,108,17,
  111,119,95,100,101,115,116,114,111,121,119,105,100,103,101,116,115,9,111,119,
  95,104,105,110,116,111,110,0,16,102,114,97,109,101,46,108,111,99,97,108,
  112,114,111,112,115,11,18,102,114,108,95,102,114,97,109,101,105,109,97,103,
  101,108,101,102,116,17,102,114,108,95,102,114,97,109,101,105,109,97,103,101,
  116,111,112,19,102,114,108,95,102,114,97,109,101,105,109,97,103,101,114,105,
  103,104,116,20,102,114,108,95,102,114,97,109,101,105,109,97,103,101,98,111,
  116,116,111,109,20,102,114,108,95,102,114,97,109,101,105,109,97,103,101,111,
  102,102,115,101,116,28,102,114,108,95,102,114,97,109,101,105,109,97,103,101,
  111,102,102,115,101,116,100,105,115,97,98,108,101,100,25,102,114,108,95,102,
  114,97,109,101,105,109,97,103,101,111,102,102,115,101,116,109,111,117,115,101,
  27,102,114,108,95,102,114,97,109,101,105,109,97,103,101,111,102,102,115,101,
  116,99,108,105,99,107,101,100,26,102,114,108,95,102,114,97,109,101,105,109,
  97,103,101,111,102,102,115,101,116,97,99,116,105,118,101,31,102,114,108,95,
  102,114,97,109,101,105,109,97,103,101,111,102,102,115,101,116,97,99,116,105,
  118,101,109,111,117,115,101,33,102,114,108,95,102,114,97,109,101,105,109,97,
  103,101,111,102,102,115,101,116,97,99,116,105,118,101,99,108,105,99,107,101,
  100,15,102,114,108,95,111,112,116,105,111,110,115,115,107,105,110,0,9,112,
  111,112,117,112,109,101,110,117,7,11,116,112,111,112,117,112,109,101,110,117,
  49,8,98,111,117,110,100,115,95,120,2,0,8,98,111,117,110,100,115,95,
  121,2,0,9,98,111,117,110,100,115,95,99,120,3,95,1,9,98,111,117,
  110,100,115,95,99,121,3,137,0,7,97,110,99,104,111,114,115,11,0,11,
  111,112,116,105,111,110,115,103,114,105,100,11,12,111,103,95,99,111,108,115,
  105,122,105,110,103,12,111,103,95,114,111,119,109,111,118,105,110,103,15,111,
  103,95,107,101,121,114,111,119,109,111,118,105,110,103,15,111,103,95,114,111,
  119,105,110,115,101,114,116,105,110,103,14,111,103,95,114,111,119,100,101,108,
  101,116,105,110,103,19,111,103,95,102,111,99,117,115,99,101,108,108,111,110,
  101,110,116,101,114,15,111,103,95,97,117,116,111,102,105,114,115,116,114,111,
  119,13,111,103,95,97,117,116,111,97,112,112,101,110,100,10,111,103,95,119,
  114,97,112,99,111,108,12,111,103,95,97,117,116,111,112,111,112,117,112,0,
  13,102,105,120,99,111,108,115,46,99,111,117,110,116,2,1,13,102,105,120,
  99,111,108,115,46,105,116,101,109,115,14,1,5,119,105,100,116,104,2,18,
  8,110,117,109,115,116,97,114,116,2,1,7,110,117,109,115,116,101,112,2,
  1,0,0,13,102,105,120,114,111,119,115,46,99,111,117,110,116,2,1,13,
  102,105,120,114,111,119,115,46,105,116,101,109,115,14,1,6,104,101,105,103,
  104,116,2,16,14,99,97,112,116,105,111,110,115,46,99,111,117,110,116,2,
  3,14,99,97,112,116,105,111,110,115,46,105,116,101,109,115,14,1,7,99,
  97,112,116,105,111,110,6,6,83,121,109,98,111,108,0,1,7,99,97,112,
  116,105,111,110,6,7,65,100,100,114,101,115,115,0,1,7,99,97,112,116,
  105,111,110,6,4,73,110,102,111,0,0,0,0,14,114,111,119,102,111,110,
  116,115,46,99,111,117,110,116,2,1,14,114,111,119,102,111,110,116,115,46,
  105,116,101,109,115,14,1,5,99,111,108,111,114,4,7,0,0,160,4,110,
  97,109,101,6,11,115,116,102,95,100,101,102,97,117,108,116,6,120,115,99,
  97,108,101,2,1,5,100,117,109,109,121,2,0,0,0,14,100,97,116,97,
  99,111,108,115,46,99,111,117,110,116,2,5,16,100,97,116,97,99,111,108,
  115,46,111,112,116,105,111,110,115,11,12,99,111,95,115,97,118,101,118,97,
  108,117,101,12,99,111,95,115,97,118,101,115,116,97,116,101,10,99,111,95,
  99,97,110,99,111,112,121,17,99,111,95,109,111,117,115,101,115,99,114,111,
  108,108,114,111,119,0,14,100,97,116,97,99,111,108,115,46,105,116,101,109,
  115,14,7,6,115,121,109,98,111,108,1,5,119,105,100,116,104,2,111,7,
  111,112,116,105,111,110,115,11,12,99,111,95,115,97,118,101,118,97,108,117,
  101,12,99,111,95,115,97,118,101,115,116,97,116,101,10,99,111,95,99,97,
  110,99,111,112,121,11,99,111,95,99,97,110,112,97,115,116,101,0,8,111,
  112,116,105,111,110,115,49,11,11,99,111,49,95,114,111,119,102,111,110,116,
  14,99,111,49,95,122,101,98,114,97,99,111,108,111,114,0,8,111,110,99,
  104,97,110,103,101,7,9,115,121,109,98,111,108,99,104,97,10,119,105,100,
  103,101,116,110,97,109,101,6,6,115,121,109,98,111,108,9,100,97,116,97,
  99,108,97,115,115,7,22,116,103,114,105,100,109,115,101,115,116,114,105,110,
  103,100,97,116,97,108,105,115,116,0,7,7,115,121,109,97,100,100,114,1,
  5,119,105,100,116,104,2,107,7,111,112,116,105,111,110,115,11,11,99,111,
  95,114,101,97,100,111,110,108,121,12,99,111,95,100,114,97,119,102,111,99,
  117,115,7,99,111,95,102,105,108,108,12,99,111,95,115,97,118,101,115,116,
  97,116,101,10,99,111,95,99,97,110,99,111,112,121,17,99,111,95,109,111,
  117,115,101,115,99,114,111,108,108,114,111,119,0,10,119,105,100,103,101,116,
  110,97,109,101,6,7,115,121,109,97,100,100,114,9,100,97,116,97,99,108,
  97,115,115,7,22,116,103,114,105,100,109,115,101,115,116,114,105,110,103,100,
  97,116,97,108,105,115,116,0,7,7,115,121,109,105,110,102,111,1,5,119,
  105,100,116,104,2,79,7,111,112,116,105,111,110,115,11,11,99,111,95,114,
  101,97,100,111,110,108,121,12,99,111,95,100,114,97,119,102,111,99,117,115,
  15,99,111,95,112,114,111,112,111,114,116,105,111,110,97,108,10,99,111,95,
  99,97,110,99,111,112,121,0,8,119,105,100,116,104,109,105,110,2,0,10,
  119,105,100,103,101,116,110,97,109,101,6,7,115,121,109,105,110,102,111,9,
  100,97,116,97,99,108,97,115,115,7,22,116,103,114,105,100,109,115,101,115,
  116,114,105,110,103,100,97,116,97,108,105,115,116,0,7,4,112,97,116,104,
  1,5,119,105,100,116,104,2,15,7,111,112,116,105,111,110,115,11,12,99,
  111,95,105,110,118,105,115,105,98,108,101,10,99,111,95,99,97,110,99,111,
  112,121,17,99,111,95,109,111,117,115,101,115,99,114,111,108,108,114,111,119,
  0,10,119,105,100,103,101,116,110,97,109,101,6,4,112,97,116,104,9,100,
  97,116,97,99,108,97,115,115,7,22,116,103,114,105,100,109,115,101,115,116,
  114,105,110,103,100,97,116,97,108,105,115,116,0,7,4,108,105,110,101,1,
  5,119,105,100,116,104,2,11,7,111,112,116,105,111,110,115,11,12,99,111,
  95,105,110,118,105,115,105,98,108,101,10,99,111,95,99,97,110,99,111,112,
  121,17,99,111,95,109,111,117,115,101,115,99,114,111,108,108,114,111,119,0,
  10,119,105,100,103,101,116,110,97,109,101,6,4,108,105,110,101,9,100,97,
  116,97,99,108,97,115,115,7,20,116,103,114,105,100,105,110,116,101,103,101,
  114,100,97,116,97,108,105,115,116,0,0,13,100,97,116,97,114,111,119,104,
  101,105,103,104,116,2,16,8,115,116,97,116,102,105,108,101,7,22,109,97,
  105,110,102,111,46,112,114,111,106,101,99,116,115,116,97,116,102,105,108,101,
  11,111,110,99,101,108,108,101,118,101,110,116,7,6,99,101,108,108,101,118,
  13,114,101,102,102,111,110,116,104,101,105,103,104,116,2,14,0,11,116,115,
  116,114,105,110,103,101,100,105,116,6,115,121,109,98,111,108,13,111,112,116,
  105,111,110,115,119,105,100,103,101,116,11,13,111,119,95,109,111,117,115,101,
  102,111,99,117,115,11,111,119,95,116,97,98,102,111,99,117,115,13,111,119,
  95,97,114,114,111,119,102,111,99,117,115,15,111,119,95,97,114,114,111,119,
  102,111,99,117,115,105,110,16,111,119,95,97,114,114,111,119,102,111,99,117,
  115,111,117,116,17,111,119,95,100,101,115,116,114,111,121,119,105,100,103,101,
  116,115,0,11,111,112,116,105,111,110,115,115,107,105,110,11,19,111,115,107,
  95,102,114,97,109,101,98,117,116,116,111,110,111,110,108,121,0,8,116,97,
  98,111,114,100,101,114,2,1,7,118,105,115,105,98,108,101,8,8,98,111,
  117,110,100,115,95,120,2,0,8,98,111,117,110,100,115,95,121,2,0,9,
  98,111,117,110,100,115,95,99,120,2,111,9,98,111,117,110,100,115,95,99,
  121,2,16,8,115,116,97,116,102,105,108,101,7,22,109,97,105,110,102,111,
  46,112,114,111,106,101,99,116,115,116,97,116,102,105,108,101,11,111,112,116,
  105,111,110,115,101,100,105,116,11,12,111,101,95,117,110,100,111,111,110,101,
  115,99,13,111,101,95,99,108,111,115,101,113,117,101,114,121,16,111,101,95,
  99,104,101,99,107,109,114,99,97,110,99,101,108,14,111,101,95,115,104,105,
  102,116,114,101,116,117,114,110,24,111,101,95,102,111,114,99,101,114,101,116,
  117,114,110,99,104,101,99,107,118,97,108,117,101,12,111,101,95,101,97,116,
  114,101,116,117,114,110,20,111,101,95,114,101,115,101,116,115,101,108,101,99,
  116,111,110,101,120,105,116,15,111,101,95,101,120,105,116,111,110,99,117,114,
  115,111,114,13,111,101,95,101,110,100,111,110,101,110,116,101,114,13,111,101,
  95,97,117,116,111,115,101,108,101,99,116,25,111,101,95,97,117,116,111,115,
  101,108,101,99,116,111,110,102,105,114,115,116,99,108,105,99,107,18,111,101,
  95,104,105,110,116,99,108,105,112,112,101,100,116,101,120,116,12,111,101,95,
  115,97,118,101,118,97,108,117,101,12,111,101,95,115,97,118,101,115,116,97,
  116,101,0,13,111,110,100,97,116,97,101,110,116,101,114,101,100,7,13,115,
  121,109,98,111,108,100,97,116,97,101,110,116,13,114,101,102,102,111,110,116,
  104,101,105,103,104,116,2,14,0,0,11,116,115,116,114,105,110,103,101,100,
  105,116,7,115,121,109,97,100,100,114,13,111,112,116,105,111,110,115,119,105,
  100,103,101,116,11,13,111,119,95,109,111,117,115,101,102,111,99,117,115,11,
  111,119,95,116,97,98,102,111,99,117,115,13,111,119,95,97,114,114,111,119,
  102,111,99,117,115,15,111,119,95,97,114,114,111,119,102,111,99,117,115,105,
  110,16,111,119,95,97,114,114,111,119,102,111,99,117,115,111,117,116,17,111,
  119,95,100,101,115,116,114,111,121,119,105,100,103,101,116,115,0,11,111,112,
  116,105,111,110,115,115,107,105,110,11,19,111,115,107,95,102,114,97,109,101,
  98,117,116,116,111,110,111,110,108,121,0,8,116,97,98,111,114,100,101,114,
  2,2,7,118,105,115,105,98,108,101,8,8,98,111,117,110,100,115,95,120,
  2,112,8,98,111,117,110,100,115,95,121,2,0,9,98,111,117,110,100,115,
  95,99,120,2,107,9,98,111,117,110,100,115,95,99,121,2,16,11,111,112,
  116,105,111,110,115,101,100,105,116,11,11,111,101,95,114,101,97,100,111,110,
  108,121,12,111,101,95,117,110,100,111,111,110,101,115,99,13,111,101,95,99,
  108,111,115,101,113,117,101,114,121,16,111,101,95,99,104,101,99,107,109,114,
  99,97,110,99,101,108,14,111,101,95,115,104,105,102,116,114,101,116,117,114,
  110,12,111,101,95,101,97,116,114,101,116,117,114,110,20,111,101,95,114,101,
  115,101,116,115,101,108,101,99,116,111,110,101,120,105,116,15,111,101,95,101,
  120,105,116,111,110,99,117,114,115,111,114,18,111,101,95,104,105,110,116,99,
  108,105,112,112,101,100,116,101,120,116,12,111,101,95,115,97,118,101,115,116,
  97,116,101,0,9,116,101,120,116,102,108,97,103,115,11,12,116,102,95,121,
  99,101,110,116,101,114,101,100,11,116,102,95,110,111,115,101,108,101,99,116,
  14,116,102,95,101,108,108,105,112,115,101,108,101,102,116,0,13,114,101,102,
  102,111,110,116,104,101,105,103,104,116,2,14,0,0,11,116,115,116,114,105,
  110,103,101,100,105,116,7,115,121,109,105,110,102,111,14,111,112,116,105,111,
  110,115,119,105,100,103,101,116,49,11,13,111,119,49,95,97,117,116,111,115,
  99,97,108,101,0,13,111,112,116,105,111,110,115,119,105,100,103,101,116,11,
  13,111,119,95,109,111,117,115,101,102,111,99,117,115,11,111,119,95,116,97,
  98,102,111,99,117,115,13,111,119,95,97,114,114,111,119,102,111,99,117,115,
  15,111,119,95,97,114,114,111,119,102,111,99,117,115,105,110,16,111,119,95,
  97,114,114,111,119,102,111,99,117,115,111,117,116,17,111,119,95,100,101,115,
  116,114,111,121,119,105,100,103,101,116,115,0,11,111,112,116,105,111,110,115,
  115,107,105,110,11,19,111,115,107,95,102,114,97,109,101,98,117,116,116,111,
  110,111,110,108,121,0,8,116,97,98,111,114,100,101,114,2,3,7,118,105,
  115,105,98,108,101,8,8,98,111,117,110,100,115,95,120,3,220,0,8,98,
  111,117,110,100,115,95,121,2,0,9,98,111,117,110,100,115,95,99,120,2,
  79,9,98,111,117,110,100,115,95,99,121,2,16,11,111,112,116,105,111,110,
  115,101,100,105,116,11,11,111,101,95,114,101,97,100,111,110,108,121,12,111,
  101,95,117,110,100,111,111,110,101,115,99,13,111,101,95,99,108,111,115,101,
  113,117,101,114,121,16,111,101,95,99,104,101,99,107,109,114,99,97,110,99,
  101,108,14,111,101,95,115,104,105,102,116,114,101,116,117,114,110,12,111,101,
  95,101,97,116,114,101,116,117,114,110,20,111,101,95,114,101,115,101,116,115,
  101,108,101,99,116,111,110,101,120,105,116,15,111,101,95,101,120,105,116,111,
  110,99,117,114,115,111,114,18,111,101,95,104,105,110,116,99,108,105,112,112,
  101,100,116,101,120,116,12,111,101,95,115,97,118,101,115,116,97,116,101,0,
  0,0,11,116,115,116,114,105,110,103,101,100,105,116,4,112,97,116,104,14,
  111,112,116,105,111,110,115,119,105,100,103,101,116,49,11,19,111,119,49,95,
  102,111,110,116,103,108,121,112,104,104,101,105,103,104,116,0,11,111,112,116,
  105,111,110,115,115,107,105,110,11,19,111,115,107,95,102,114,97,109,101,98,
  117,116,116,111,110,111,110,108,121,0,8,116,97,98,111,114,100,101,114,2,
  4,7,118,105,115,105,98,108,101,8,8,98,111,117,110,100,115,95,120,3,
  44,1,8,98,111,117,110,100,115,95,121,2,0,9,98,111,117,110,100,115,
  95,99,120,2,15,9,98,111,117,110,100,115,95,99,121,2,16,11,111,112,
  116,105,111,110,115,101,100,105,116,11,12,111,101,95,117,110,100,111,111,110,
  101,115,99,13,111,101,95,99,108,111,115,101,113,117,101,114,121,16,111,101,
  95,99,104,101,99,107,109,114,99,97,110,99,101,108,14,111,101,95,115,104,
  105,102,116,114,101,116,117,114,110,12,111,101,95,101,97,116,114,101,116,117,
  114,110,20,111,101,95,114,101,115,101,116,115,101,108,101,99,116,111,110,101,
  120,105,116,15,111,101,95,101,120,105,116,111,110,99,117,114,115,111,114,13,
  111,101,95,101,110,100,111,110,101,110,116,101,114,13,111,101,95,97,117,116,
  111,115,101,108,101,99,116,25,111,101,95,97,117,116,111,115,101,108,101,99,
  116,111,110,102,105,114,115,116,99,108,105,99,107,12,111,101,95,115,97,118,
  101,115,116,97,116,101,25,111,101,95,99,104,101,99,107,118,97,108,117,101,
  112,97,115,116,115,116,97,116,114,101,97,100,0,13,114,101,102,102,111,110,
  116,104,101,105,103,104,116,2,14,0,0,12,116,105,110,116,101,103,101,114,
  101,100,105,116,4,108,105,110,101,14,111,112,116,105,111,110,115,119,105,100,
  103,101,116,49,11,19,111,119,49,95,102,111,110,116,103,108,121,112,104,104,
  101,105,103,104,116,0,11,111,112,116,105,111,110,115,115,107,105,110,11,19,
  111,115,107,95,102,114,97,109,101,98,117,116,116,111,110,111,110,108,121,0,
  8,116,97,98,111,114,100,101,114,2,5,7,118,105,115,105,98,108,101,8,
  8,98,111,117,110,100,115,95,120,3,60,1,8,98,111,117,110,100,115,95,
  121,2,0,9,98,111,117,110,100,115,95,99,120,2,11,9,98,111,117,110,
  100,115,95,99,121,2,16,11,111,112,116,105,111,110,115,101,100,105,116,11,
  12,111,101,95,117,110,100,111,111,110,101,115,99,13,111,101,95,99,108,111,
  115,101,113,117,101,114,121,16,111,101,95,99,104,101,99,107,109,114,99,97,
  110,99,101,108,14,111,101,95,115,104,105,102,116,114,101,116,117,114,110,12,
  111,101,95,101,97,116,114,101,116,117,114,110,20,111,101,95,114,101,115,101,
  116,115,101,108,101,99,116,111,110,101,120,105,116,15,111,101,95,101,120,105,
  116,111,110,99,117,114,115,111,114,13,111,101,95,101,110,100,111,110,101,110,
  116,101,114,13,111,101,95,97,117,116,111,115,101,108,101,99,116,25,111,101,
  95,97,117,116,111,115,101,108,101,99,116,111,110,102,105,114,115,116,99,108,
  105,99,107,12,111,101,95,115,97,118,101,115,116,97,116,101,25,111,101,95,
  99,104,101,99,107,118,97,108,117,101,112,97,115,116,115,116,97,116,114,101,
  97,100,0,13,114,101,102,102,111,110,116,104,101,105,103,104,116,2,14,0,
  0,0,10,116,112,111,112,117,112,109,101,110,117,11,116,112,111,112,117,112,
  109,101,110,117,49,18,109,101,110,117,46,115,117,98,109,101,110,117,46,99,
  111,117,110,116,2,1,18,109,101,110,117,46,115,117,98,109,101,110,117,46,
  105,116,101,109,115,14,1,7,99,97,112,116,105,111,110,6,10,68,101,108,
  101,116,101,32,97,108,108,5,115,116,97,116,101,11,15,97,115,95,108,111,
  99,97,108,99,97,112,116,105,111,110,17,97,115,95,108,111,99,97,108,111,
  110,101,120,101,99,117,116,101,0,9,111,110,101,120,101,99,117,116,101,7,
  11,100,101,108,101,116,101,97,108,108,101,120,0,0,4,108,101,102,116,2,
  80,3,116,111,112,2,72,0,0,16,116,115,116,114,105,110,103,99,111,110,
  116,97,105,110,101,114,1,99,12,115,116,114,105,110,103,115,46,100,97,116,
  97,1,6,15,71,68,66,32,110,111,116,32,97,99,116,105,118,101,46,6,
  34,68,111,32,121,111,117,32,119,105,115,104,32,116,111,32,100,101,108,101,
  116,101,32,97,108,108,32,115,121,109,98,111,108,115,63,0,4,108,101,102,
  116,3,192,0,3,116,111,112,2,56,0,0,0)
 );

initialization
 registerobjectdata(@objdata,tsymbolfo,'');
end.
