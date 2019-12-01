function NSC_FRS_SIM(IdB,MM,NN,PP,xR,xP,yP,xE,yE,PL,bit_frame)
%
II              = 10.^(IdB/10);
NSC             = zeros(1,length(yE));
%
for aa = 1 : length(yE)
    fprintf('Running %d per %d \n',aa,length(yE));
    for bitnum   =  1 : bit_frame
        %
        LSR         = xR^PL;
        LSP         = sqrt(xP^2+yP^2)^PL;
        LSE         = sqrt(xE^2+yE(aa)^2)^PL;
        LRD         = (1-xR)^PL;
        LRP         = sqrt((xR-xP)^2+yP^2)^PL;
        LRE         = sqrt((xR-xE)^2+yE(aa)^2)^PL;
        CSec_max    = 0;
        for bb = 1 : MM
            h_SR       = sqrt(1/LSR/2)*(randn(1,1)+j*randn(1,1));
            h_RD       = sqrt(1/LRD/2)*(randn(1,1)+j*randn(1,1));
            %
            SNR_SP_max = 0;
            for cc = 1 : PP
                h_SP       = sqrt(1/LSP/2)*(randn(1,1)+j*randn(1,1));
                if (abs(h_SP)^2 > SNR_SP_max)
                    SNR_SP_max  = abs(h_SP)^2;
                end
            end
            QS         = II/SNR_SP_max;
            %
            SNR_RP_max = 0;
            for cc = 1 : PP
                h_RP       = sqrt(1/LRP/2)*(randn(1,1)+j*randn(1,1));
                if (abs(h_RP)^2 > SNR_RP_max)
                    SNR_RP_max  = abs(h_RP)^2;
                end
            end
            QR         = II/SNR_RP_max;
            %
            SNR_SE_max = 0;
            for cc = 1 : NN
                h_SE       = sqrt(1/LSE/2)*(randn(1,1)+j*randn(1,1));
                if (abs(h_SE)^2 > SNR_SE_max)
                    SNR_SE_max  = abs(h_SE)^2;
                end
            end
            %
            SNR_RE_max = 0;
            for cc = 1 : NN
                h_RE       = sqrt(1/LRE/2)*(randn(1,1)+j*randn(1,1));
                if (abs(h_RE)^2 > SNR_RE_max)
                    SNR_RE_max  = abs(h_RE)^2;
                end
            end
            %
            CC1    = max(0, 1/2*log2(1 + QS*abs(h_SR)^2) - 1/2*log2(1 + QS*SNR_SE_max) );
            CC2    = max(0, 1/2*log2(1 + QR*abs(h_RD)^2) - 1/2*log2(1 + QR*SNR_RE_max) );
            CSec   = min(CC1,CC2);
            if (CSec > CSec_max)
                CSec_max = CSec;
            end                        
        end
        %                        
        if (CSec_max  > 0)
            NSC(aa) = NSC(aa) + 1;
        end
    end
end
%
NSC = NSC/bit_frame;
NSC
plot(yE,NSC,'gs'); grid on;hold on;
end





