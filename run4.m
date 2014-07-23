
[modelsAll_bab_al_0_vnoise_vcleanGablowrate ind1] = fit_gmm_v2_crossvalid_ind_majRul(folder1Babble(7).name, '*_1.gabmatlowrate_bab*al_0','_1.gabmatlowrate' , '*gabmatlowrate_bab*al_0' ,105, indAll_whi_al_0_vnoise_vclean,0,16)

[modelsAll_bab_al_0_vnoise_vnoiseGablowrate ind1] = fit_gmm_v2_crossvalid_ind_majRul(folder1BabbleGab(8).name, '*_1.gabmatlowrate_bab*al_0','_1.gabmatlowrate' , '*gabmatlowrate_bab*al_0' ,105, indAll_whi_al_0_vnoise_vclean,0,16)

for j = 1 : 7; for k = 1 : 8; [postAll_bab_al_0_2_allDim_majRulModGablowrate_vnoise_vnoise(j,k,:) filesAll_whi_al_0_2_majRulGab_vnoise_vnoise(j,k,:)] = getPosterior_crossvalid_majority_mod(folder1BabbleGab(k).name, [ '*_1.gabmatlowrate__bab*al_0_0.2' '*dim_' num2str(dimensions(j))] , '_1.gabmatlowrate__bab' , ['*gabmatlowrate__bab*al_0_0.2*dim_' num2str(dimensions(j))], modelsAll_bab_al_0_vnoise_vnoiseGablowrate, indAll_whi_al_0_vnoise_vclean, 105) ;end;end
save gab3Run.mat

for j = 1 : 7; for k = 1 : 8; [postAll_bab_al_0_4_allDim_majRulModGablowrate_vnoise_vnoise(j,k,:) filesAll_whi_al_0_4_majRulGab_vnoise_vnoise(j,k,:)] = getPosterior_crossvalid_majority_mod(folder1BabbleGab(k).name, [ '*_1.gabmatlowrate__bab*al_0_0.4' '*dim_' num2str(dimensions(j))] , '_1.gabmatlowrate__bab' , ['*gabmatlowrate__bab*al_0_0.4*dim_' num2str(dimensions(j))], modelsAll_bab_al_0_vnoise_vnoiseGablowrate, indAll_whi_al_0_vnoise_vclean, 105) ;end;end
save gab3Run.mat

for j = 1 : 7; for k = 1 : 8; [postAll_bab_al_0_6_allDim_majRulModGablowrate_vnoise_vnoise(j,k,:) filesAll_whi_al_0_6_majRulGab_vnoise_vnoise(j,k,:)] = getPosterior_crossvalid_majority_mod(folder1BabbleGab(k).name, [ '*_1.gabmatlowrate__bab*al_0_0.6' '*dim_' num2str(dimensions(j))] , '_1.gabmatlowrate__bab' , ['*gabmatlowrate__bab*al_0_0.6*dim_' num2str(dimensions(j))], modelsAll_bab_al_0_vnoise_vnoiseGablowrate, indAll_whi_al_0_vnoise_vclean, 105) ;end;end
save gab3Run.mat

for j = 1 : 7; for k = 1 : 8; [postAll_bab_al_0_8_allDim_majRulModGablowrate_vnoise_vnoise(j,k,:) filesAll_whi_al_0_8_majRulGab_vnoise_vnoise(j,k,:)] = getPosterior_crossvalid_majority_mod(folder1BabbleGab(k).name, [ '*_1.gabmatlowrate__bab*al_0_0.8' '*dim_' num2str(dimensions(j))] , '_1.gabmatlowrate__bab' , ['*gabmatlowrate__bab*al_0_0.8*dim_' num2str(dimensions(j))], modelsAll_bab_al_0_vnoise_vnoiseGablowrate, indAll_whi_al_0_vnoise_vclean, 105) ;end;end
save gab3Run.mat

for j = 1 : 7; for k = 1 : 8; [postAll_bab_al_0_4_allDim_majRulModGablowrate_vnoise_vclean(j,k,:) filesAll_whi_al_0_4_majRulGab_vnoise_vclean(j,k,:)] = getPosterior_crossvalid_majority_mod(folder1BabbleGab(k).name, [ '*_1.gabmatlowrate__bab*al_0_0.4' '*dim_' num2str(dimensions(j))] , '_1.gabmatlowrate__bab' , ['*gabmatlowrate__bab*al_0_0.4*dim_' num2str(dimensions(j))], modelsAll_bab_al_0_vnoise_vcleanGablowrate, indAll_whi_al_0_vnoise_vclean, 105) ;end;end
save gab3Run.mat

for j = 1 : 7; for k = 1 : 8; [postAll_bab_al_0_6_allDim_majRulModGablowrate_vnoise_vclean(j,k,:) filesAll_whi_al_0_6_majRulGab_vnoise_vclean(j,k,:)] = getPosterior_crossvalid_majority_mod(folder1BabbleGab(k).name, [ '*_1.gabmatlowrate__bab*al_0_0.6' '*dim_' num2str(dimensions(j))] , '_1.gabmatlowrate__bab' , ['*gabmatlowrate__bab*al_0_0.6*dim_' num2str(dimensions(j))], modelsAll_bab_al_0_vnoise_vcleanGablowrate, indAll_whi_al_0_vnoise_vclean, 105) ;end;end

save gab3Run.mat

for j = 1 : 7; for k = 1 : 8; [postAll_bab_al_0_8_allDim_majRulModGablowrate_vnoise_vclean(j,k,:) filesAll_whi_al_0_8_majRulGab_vnoise_vclean(j,k,:)] = getPosterior_crossvalid_majority_mod(folder1BabbleGab(k).name, [ '*_1.gabmatlowrate__bab*al_0_0.8' '*dim_' num2str(dimensions(j))] , '_1.gabmatlowrate__bab' , ['*gabmatlowrate__bab*al_0_0.8*dim_' num2str(dimensions(j))], modelsAll_bab_al_0_vnoise_vcleanGablowrate, indAll_whi_al_0_vnoise_vclean, 105) ;end;end

for j = 1 : 7; for k = 1 : 8; [postAll_bab_al_0_2_allDim_majRulModGablowrate_vnoise_vclean(j,k,:) filesAll_whi_al_0_2_majRulGab_vnoise_vclean(j,k,:)] = getPosterior_crossvalid_majority_mod(folder1BabbleGab(k).name, [ '*_1.gabmatlowrate__bab*al_0_0.2' '*dim_' num2str(dimensions(j))] , '_1.gabmatlowrate__bab' , ['*gabmatlowrate__bab*al_0_0.2*dim_' num2str(dimensions(j))], modelsAll_bab_al_0_vnoise_vcleanGablowrate, indAll_whi_al_0_vnoise_vclean, 105) ;end;end
save gab3Run.mat




