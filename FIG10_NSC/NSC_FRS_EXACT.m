function NSC_FRS_EXACT(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL)
%
NSC         = zeros(1,length(yE));
for aa = 1 : length(yE)
    NSC(aa) = ham(IdB,MM,NN,PP,xR,xP,yP,xE,yE(aa),PL);
end
NSC
plot(yE,NSC,'g--'); grid on;hold on;
end

function out = ham(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL)
II          = 10.^(IdB/10);
LSR         = xR.^PL;
LSP         = sqrt(xP.^2+yP.^2).^PL;
LSE         = sqrt(xE.^2+yE.^2).^PL;
LRD         = (1 - xR).^PL;
LRP         = sqrt((xR-xP).^2+yP.^2).^PL;
LRE         = sqrt((xR-xE).^2+yE.^2).^PL;
%
AA   = 0;
for nnn = 1 : NN    
    AA  = AA + (-1)^(nnn+1)*nchoosek(NN,nnn)*nnn*LSE/(LSR + nnn*LSE);       
end
%
BB   = 0;
for nnn = 1 : NN    
    BB  = BB + (-1)^(nnn+1)*nchoosek(NN,nnn)*nnn*LRE/(LRD + nnn.*LRE);       
end
%
out         = 1 - (1 - AA*BB)^MM;

end





