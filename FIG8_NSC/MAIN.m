%SOP of PRS_RF and FRS_RF with different numbers of eavesdroppers
clear all;  clc;
IdB           = -10;
MM            = 10;
KK            = 1:10;
PP            = 1;
xR            = 0.5;
xP            = 0.5;
yP            = -1;
xE            = 0.5;
yE            = 0.5;
PL            = 3;
bit_frame     = 10^6;
%
NN            = 1;
NSC_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,bit_frame);
NSC_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL);  
NSC_CSI_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,bit_frame);
NSC_CSI_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL);
NN            = 3;
NSC_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,bit_frame);
NSC_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL); 
NSC_CSI_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,bit_frame);
NSC_CSI_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL);