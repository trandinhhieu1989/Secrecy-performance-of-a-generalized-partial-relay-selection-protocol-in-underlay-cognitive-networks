%SOP of PRS_RF and FRS_RF with different numbers of eavesdroppers
clear all;  clc;
IdB           = -30:2.5:30;
MM            = 10;
NN            = 2;
PP            = 2;
KK            = 5;
xR            = 0.5;
xP            = 0.5;
yP            = -1;
xE            = 0.5;
yE            = 0.7;
PL            = 3;
Cth           = 0.25;
bit_frame     = 10^6;
%
SOP_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
SOP_PRS_ASYM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
SOP_CSI_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_CSI_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
SOP_CSI_PRS_ASYM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
SOP_FRS_SIM(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_FRS_EXACT(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth);
SOP_FRS_ASYM(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth);