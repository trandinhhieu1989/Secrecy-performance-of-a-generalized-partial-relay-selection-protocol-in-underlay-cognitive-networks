function NSC_PRS_EXACT(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL)  
%
NSC         = zeros(1,length(yE));
for aa = 1 : length(yE)
    NSC(aa) = ham(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE(aa),PL);
end
NSC
plot(yE,NSC,'b-'); grid on;hold on;
end
%
%
function out = ham(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL)
II          = 10.^(IdB/10);
LSR         = xR.^PL;
LSP         = sqrt(xP.^2+yP.^2).^PL;
LSE         = sqrt(xE.^2+yE.^2).^PL;
LRD         = (1 - xR).^PL;
LRP         = sqrt((xR-xP).^2+yP.^2).^PL;
LRE         = sqrt((xR-xE).^2+yE.^2).^PL;
Out1        = 0;
for bb = 1 : KK
    for jj = 1 : bb
        for mm = 0 : MM-jj+1            
            for nn=1:NN 
              for aa=1:PP
                hs0 = (-1)^mm*nchoosek(MM,jj-1)*nchoosek(MM-jj+1,mm);
                hs1 = (-1)^(nn+1)*nchoosek(NN,nn)*nn*LSE./((mm+jj-1).*LSR+nn.*LSE);       
                hs2 = (-1)^(aa+1)*nchoosek(PP,aa).*aa*LSP./(aa.*LSP);
                Out1 = Out1 + hs0.*hs1.*hs2;
              end
            end               
        end            
    end
end
%
Out2        =  1;
for bb = 1 : KK       
    for nn=1:NN    
    for aa=1:PP        
       hs3 =  (-1)^(nn+1).*(-1)^(aa+1).*nchoosek(NN,nn).*nchoosek(PP,aa)*aa.*LRP.*nn.*LRE;
       hs4 = (-1)^(bb).*nchoosek(KK,bb)./(aa.*LRP)./(bb.*LRD+nn.*LRE);
       Out2 = Out2  + hs3.*hs4 ;
    end   
    end        
end
out = (1 - 1/KK*Out1).*(1 - Out2);
end





