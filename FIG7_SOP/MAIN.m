%SOP of PRS_RF and FRS_RF with different numbers of eavesdroppers
clear all;  clc;
IdB           = 2.5;
MM            = 6;
NN            = 1:10;
KK            = 3;
xR            = 0.5;
xP            = 0.5;
yP            = -1;
xE            = 0.5;
yE            = 0.7;
PL            = 3;
Cth           = 0.1;
bit_frame     = 10^6;
%
PP            = 1;
SOP_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
SOP_CSI_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_CSI_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
SOP_FRS_SIM(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_FRS_EXACT(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth);
%
PP            = 7;
SOP_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
SOP_CSI_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_CSI_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
SOP_FRS_SIM(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_FRS_EXACT(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth);