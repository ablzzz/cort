function R = calculateSNRDistance(s, tone)
    snr = [-20 :5 : 30];
    [cr_t rt_t rsf_t] = extractSpikesFileName(tone(1:16000), 2*ones(1,8), ones(1,8));
    for j = 1 : length(snr)
        rv=2.^[1:5];
        sv=2.^[-2:1:3];
        nd = combineSNR(s(1:16000)', tone(1:16000), snr(j));
        [cr_nd rt_nd rsf_nd] = extractSpikesFileName(nd(1:16000), 2*ones(1,8), ones(1,8));
        h  = figure;
%         rst_view_mod(rsf_nd,rv,sv,3);
%         rst_view_mod(rsf_nd,rv,sv,2);
%         rst_view_mod(rsf_nd,rv,sv,1);
%         title(num2str(snr(j)));
%         saveas(h, ['RSFvsSNR_' num2str(snr(j)) '.eps'], 'eps');
        d1 = ((rt_t - rt_nd).*(rt_t - rt_nd));
        R.distRt(j) = sum(d1(:));
        d1 = ((rsf_t - rsf_nd).*(rsf_t - rsf_nd));
        R.distRsf(j) = sum(d1(:));

    end
