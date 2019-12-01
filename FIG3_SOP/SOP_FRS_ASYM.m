function SOP_FRS_ASYM(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth)
%
SOP         = zeros(1,length(IdB));
for aa = 1 : length(IdB)
    SOP(aa) = ham(IdB(aa),MM,NN,PP,xR,xP,yP,xE,yE,PL,Cth);
end
SOP
semilogy(IdB,SOP,'g--'); grid on;hold on;
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
for nnn = 1 : NN    
    AA  = AA + (-1)^(nnn+1)*nchoosek(NN,nnn)*nnn*LSE/(LSR*Rho + nnn*LSE);       
end
%
BB   = 0;
for nnn = 1 : NN    
    BB  = BB + (-1)^(nnn+1)*nchoosek(NN,nnn)*nnn*LRE/(LRD.*Rho + nnn.*LRE);       
end
%
out         = (1 - AA*BB)^MM;

end





