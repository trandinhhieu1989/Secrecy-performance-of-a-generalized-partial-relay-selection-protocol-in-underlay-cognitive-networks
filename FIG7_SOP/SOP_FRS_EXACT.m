function SOP_FRS_EXACT(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth)
%
SOP         = zeros(1,length(NN));
for aa = 1 : length(NN)
    SOP(aa) = ham(IdB,MM,NN(aa),PP,xR,xP,yP,xE,yE,PL,Cth);
end
SOP
plot(NN,SOP,'g-'); grid on;hold on;
end

function out = ham(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth)
II          = 10.^(IdB/10);
LSR         = xR.^PL;
LSP         = sqrt(xP.^2+yP.^2).^PL;
LSE         = sqrt(xE.^2+yE.^2).^PL;
LRD         = (1 - xR).^PL;
LRP         = sqrt((xR-xP).^2+yP.^2).^PL;
LRE         = sqrt((xR-xE).^2+yE.^2).^PL;
Rho         = 2^(2*Cth);
%
AA   = 0;
for ttt = 1 : NN
    AA = AA + (-1)^(ttt+1)*nchoosek(NN,ttt)*ttt*LSE/(ttt*LSE + LSR.*Rho);
end
%
BB   = 0;
for nnn = 1 : NN
    for aaa = 1 : PP
        hs3 = (-1)^(nnn+aaa)*nchoosek(NN,nnn)*nchoosek(PP,aaa)*aaa*LRP*nnn*LRE;
        hs4 = 1/(LRD.*(Rho-1)./II + aaa.*LRP)/(LRD.*Rho + nnn.*LRE);
        BB  = BB + hs3.*hs4;
    end
end
%
out = 1;
for vvv = 1 : MM
    for kkk = 1 : PP
        out = out + (-1)^(vvv+kkk+1)*nchoosek(MM,vvv)*nchoosek(PP,kkk)*(AA*BB)^vvv*kkk*LSP*II/(kkk*LSP*II + vvv*LSR*(Rho-1));
    end
end
end





