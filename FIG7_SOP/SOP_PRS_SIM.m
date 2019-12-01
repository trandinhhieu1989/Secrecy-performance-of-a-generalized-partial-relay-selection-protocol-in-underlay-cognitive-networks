% This code describe the PRS_RF with SOP
function SOP_PRS_SIM(IdB,MM,NN,PP,KK,xR,xP,yP,xE,yE,PL,Cth,bit_frame)
II              = 10.^(IdB/10);
SOP             = zeros(1,length(NN));
%
for aa = 1 : length(NN)
    fprintf('Running %d per %d \n',aa,length(NN));
    LSR         = xR^PL;
    LSP         = sqrt(xP^2+yP^2)^PL;
    LSE         = sqrt(xE^2+yE^2)^PL;
    LRD         = (1-xR)^PL;
    LRP         = sqrt((xR-xP)^2+yP^2)^PL;
    LRE         = sqrt((xR-xE)^2+yE^2)^PL;    
    for bitnum   =  1 : bit_frame
        %
        SNR_SR = zeros(1,MM);
        for bb = 1 : MM
            h_SR       = sqrt(1/LSR/2)*(randn(1,1)+j*randn(1,1));
            SNR_SR(bb) = abs(h_SR)^2;
        end
        %
        SNR_RD = zeros(1,MM);
        for bb = 1 : MM
            h_RD       = sqrt(1/LRD/2)*(randn(1,1)+j*randn(1,1));
            SNR_RD(bb) = abs(h_RD)^2;
        end
        SNR_SR_sort = sort(SNR_SR,'descend');
        Set_Relay   = [];
        for bb = 1 : KK
            id         = find(SNR_SR == SNR_SR_sort(bb));
            Set_Relay  = [Set_Relay id];
        end
        SNR_RD_max = 0;
        for bb = 1 : KK
            if (SNR_RD(Set_Relay(bb)) > SNR_RD_max)
                SNR_RD_max = SNR_RD(Set_Relay(bb));
            end
        end
        bid = find(SNR_RD == SNR_RD_max);
        %
        % Transmit power of the source
        SNR_SP_max = 0;
        for bb = 1 : PP
            h_SP       = sqrt(1/LSP/2)*(randn(1,1)+j*randn(1,1));
            if (abs(h_SP)^2 > SNR_SP_max)
                SNR_SP_max  = abs(h_SP)^2;
            end
        end
        QS         = II/SNR_SP_max;
        %
        % Transmit power of the best relay
        SNR_RP_max = 0;
        for bb = 1 : PP
            h_RP       = sqrt(1/LRP/2)*(randn(1,1)+j*randn(1,1));
            if (abs(h_RP)^2 > SNR_RP_max)
                SNR_RP_max  = abs(h_RP)^2;
            end
        end
        QR         = II/SNR_RP_max;
        %
        SNR_SE_max = 0;
        for bb = 1 : NN(aa)
            h_SE       = sqrt(1/LSE/2)*(randn(1,1)+j*randn(1,1));
            if (abs(h_SE)^2 > SNR_SE_max)
                SNR_SE_max  = abs(h_SE)^2;
            end
        end
        %
        SNR_RE_max = 0;
        for bb = 1 : NN(aa)
            h_RE       = sqrt(1/LRE/2)*(randn(1,1)+j*randn(1,1));
            if (abs(h_RE)^2 > SNR_RE_max)
                SNR_RE_max  = abs(h_RE)^2;
            end
        end
        %
        % Secrecy capacity of the first hop
        CC1    = max(0, 1/2*log2(1 + QS*SNR_SR(bid)) - 1/2*log2(1 + QS*SNR_SE_max) );
        % Secrecy capacity of the first hop
        CC2    = max(0, 1/2*log2(1 + QR*SNR_RD_max) - 1/2*log2(1 + QR*SNR_RE_max) );
        % Secrecy Capacity
        CSEC   = min(CC1,CC2);
        %
        if (CSEC  < Cth)
            SOP(aa) = SOP(aa) + 1;
        end
    end
end
%
SOP = SOP./bit_frame;
SOP
plot(NN,SOP,'bo'); grid on;hold on;
end









