%SOP of PRS_RF and FRS_RF with different numbers of eavesdroppers
clear all;  clc;
IdB           = -10;
NN            = 1;
PP            = 1;
xR            = 0.5;
xP            = -0.5;
yP            = -1;
xE            = 0.5;
yE            = 0.1:0.05:1;
PL            = 3;
bit_frame     = 10^6;
%
MM            = 4;
KK            = MM/2;
NSC_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,bit_frame);
NSC_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL);  
NSC_CSI_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,bit_frame);
NSC_CSI_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL);
NSC_FRS_SIM(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,bit_frame);
NSC_FRS_EXACT(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL);
%
MM            = 10;
KK            = MM/2;
NSC_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,bit_frame);
NSC_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL);  
NSC_CSI_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,bit_frame);
NSC_CSI_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL);
NSC_FRS_SIM(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,bit_frame);
NSC_FRS_EXACT(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL);