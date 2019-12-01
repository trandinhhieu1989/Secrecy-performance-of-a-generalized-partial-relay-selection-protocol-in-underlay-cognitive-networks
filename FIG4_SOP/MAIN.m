%SOP of PRS_RF and FRS_RF with different numbers of eavesdroppers
clear all;  clc;
IdB           = 10;
MM            = 10;
NN            = 2;
PP            = 2;
KK            = 1:10;
xP            = 0.5;
yP            = -1;
xE            = 0.5;
yE            = 0.6;
PL            = 3;
Cth           = 0.1;
bit_frame     = 10^6;
%
xR            = 0.2;
SOP_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
SOP_CSI_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_CSI_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
xR            = 0.5;
SOP_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
SOP_CSI_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_CSI_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
xR            = 0.6;
SOP_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
SOP_CSI_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_CSI_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);