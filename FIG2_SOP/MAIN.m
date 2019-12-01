%SOP of PRS_RF and FRS_RF with different numbers of eavesdroppers
clear all;  clc;
IdB           = -25:2:15;
MM            = 6;
NN            = 2;
PP            = 2;
xR            = 0.5;
xP            = 0.5;
yP            = -1;
xE            = 0.5;
yE            = 0.75;
PL            = 3;
Cth           = 0.1;
bit_frame     = 10^6;
%
KK            = 1;
SOP_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
SOP_PRS_ASYM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
SOP_CSI_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_CSI_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
SOP_CSI_PRS_ASYM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
KK            = 3;
SOP_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
SOP_PRS_ASYM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
SOP_CSI_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_CSI_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
SOP_CSI_PRS_ASYM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
KK            = 6;
SOP_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
SOP_PRS_ASYM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
%
SOP_CSI_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame);
SOP_CSI_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);
SOP_CSI_PRS_ASYM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth);