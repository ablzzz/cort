[cr_ndm10_orig rt_ndm10_orig rsf_ndm10_orig] = extractSpikesFileName(ndm10(1:16000),  2*ones(1,8), ones(1,8));
[cr_ndm10_bw rt_ndm10_bw rsf_ndm10_bw] = extractSpikesFileName(ndm10(1:16000),  R_bw_norm_ndm10_tone_cos_euc.col_cos_rsf(1,:), ones(1,8));
[cr_ndm10_wt rt_ndm10_wt rsf_ndm10_wt] = extractSpikesFileName(ndm10(1:16000),  2*ones(1,8), R_wt_norm_ndm10_tone_cos_euc.col_cos_rsf(1,:));
[cr_ndm10_bw_wt rt_ndm10_bw_wt rsf_ndm10_bw_wt] = extractSpikesFileName(ndm10(1:16000),  R_bw_norm_ndm10_tone_cos_euc.col_cos_rsf(1,:), R_wt_norm_ndm10_tone_cos_euc.col_cos_rsf(1,:));
close all
h = figure
rst_view_mod((rsf_tn/max(rsf_tn(:))),rv,sv,3)
rst_view_mod((rsf_tn/max(rsf_tn(:))),rv,sv,2)
rst_view_mod((rsf_tn/max(rsf_tn(:))),rv,sv,1)
title('Pure Tone at 4000 Hz','FontSize',13)
saveas(h,'1000_Hz_pure_tone.jpg', 'jpg');
saveas(h,'1000_Hz_pure_tone.fig', 'fig');
h = figure
rst_view_mod((rsf_ndm10_orig/max(rsf_ndm10_orig(:))),rv,sv,3)
rst_view_mod((rsf_ndm10_orig/max(rsf_ndm10_orig(:))),rv,sv,2)
rst_view_mod((rsf_ndm10_orig/max(rsf_ndm10_orig(:))),rv,sv,1)
title('Tone + Torc -10SNR - Original Filters')
saveas(h,'1000_Hz_orig.jpg', 'jpg');
saveas(h,'1000_Hz_orig.fig', 'fig');

h = figure
rst_view_mod((rsf_ndm10_wt/max(rsf_ndm10_wt(:))),rv,sv,3)
rst_view_mod((rsf_ndm10_wt/max(rsf_ndm10_wt(:))),rv,sv,2)
rst_view_mod((rsf_ndm10_wt/max(rsf_ndm10_wt(:))),rv,sv,1)
title('Tone+Torc -10 SNR - gain adaptation', 'FontSize',13)
saveas(h,'1000_Hz_gain_adap.jpg', 'jpg');
saveas(h,'1000_Hz_gain_adap.fig', 'fig');

h = figure
rst_view_mod((rsf_ndm10_bw/max(rsf_ndm10_bw(:))),rv,sv,3)
rst_view_mod((rsf_ndm10_bw/max(rsf_ndm10_bw(:))),rv,sv,2)
rst_view_mod((rsf_ndm10_bw/max(rsf_ndm10_bw(:))),rv,sv,1)
title('Tone+Torc -10 SNR - bandwidth adaptation','FontSize',13)
saveas(h,'1000_Hz_bw_adap.jpg', 'jpg');
saveas(h,'1000_Hz_bw_adap.fig', 'fig');

h = figure
rst_view_mod((rsf_ndm10_bw_wt/max(rsf_ndm10_bw_wt(:))),rv,sv,3)
rst_view_mod((rsf_ndm10_bw_wt/max(rsf_ndm10_bw_wt(:))),rv,sv,2)
rst_view_mod((rsf_ndm10_bw_wt/max(rsf_ndm10_bw_wt(:))),rv,sv,1)
title('Tone+Torc -10 SNR - gain bandwidth  adaptation','FontSize',13)
saveas(h,'1000_Hz_gainbw_adap.jpg', 'jpg');
saveas(h,'1000_Hz_gainbw_adap.fig', 'fig');

h = figure
rst_view_mod((rsf_ndm10_bw_wt/max(rsf_ndm10_bw_wt(:))) - (rsf_ndm10_bw/max(rsf_ndm10_bw(:))),rv,sv,3)
rst_view_mod((rsf_ndm10_bw_wt/max(rsf_ndm10_bw_wt(:))) - (rsf_ndm10_bw/max(rsf_ndm10_bw(:))),rv,sv,2)
rst_view_mod((rsf_ndm10_bw_wt/max(rsf_ndm10_bw_wt(:))) - (rsf_ndm10_bw/max(rsf_ndm10_bw(:))),rv,sv,1)
title('Tone+Torc -10 SNR - difference rsf','FontSize',13)
saveas(h,'1000_Hz_diff.jpg', 'jpg');
saveas(h,'1000_Hz_diff.fig', 'fig');
