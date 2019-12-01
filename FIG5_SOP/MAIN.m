%SOP of PRS_RF and FRS_RF with different numbers of eavesdroppers
clear all;  clc;
IdB           = 15;
MM            = 10;
NN            = 2;
PP            = 1;
xR            = 0.05:0.05:0.95;
xP            = 0.5;
yP            = -1;
PL            = 3;
Cth           = 0.2;
bit_frame     = 10^6;
%
xE            = 0.3;
yE            = 0.3;
SOP_PRS_KOPT(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth);
SOP_CSI_PRS_KOPT(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth); 
%
xE            = 0.7;
yE            = 0.3;
SOP_PRS_KOPT(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth);
SOP_CSI_PRS_KOPT(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth); 
%
