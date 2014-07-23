projectFeaturesQUT(homelivingFold, '*gabFeat.mat' , space_speech_bbc, dim, extout);
for j = 1:4; projectFeaturesAdaptQUT(homelivingFold, '*gabFeat.mat', space_speech_bbc, dim , extout, alstr(j).name , weightsQUT_num3(j).weight); end 
save new.mat
for j = 1 : 6 ; post_Homeliving_al_0_2_noise(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0_2' , modelQUT_noise_gabmatlowrate_al_0_CAFE_CAFE_sB); end
for j = 1 : 6 ; post_Homeliving_al_0_4_noise(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0_4' , modelQUT_noise_gabmatlowrate_al_0_CAFE_CAFE_sB); end
for j = 1 : 6 ; post_Homeliving_al_0_6_noise(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0_6' , modelQUT_noise_gabmatlowrate_al_0_CAFE_CAFE_sB); end
save new.mat
for j = 1 : 6 ; post_Homeliving_al_0_8_noise(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0_8' , modelQUT_noise_gabmatlowrate_al_0_CAFE_CAFE_sB); end
for j = 1 : 6 ; post_Homeliving_al_0_2_clean(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0_2' , modelQUT_clean_gabmatlowrate_al_0_CAFE_CAFE_sB); end
for j = 1 : 6 ; post_Homeliving_al_0_4_clean(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0_4' , modelQUT_clean_gabmatlowrate_al_0_CAFE_CAFE_sB); end
save new.mat
for j = 1 : 6 ; post_Homeliving_al_0_6_clean(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0_6' , modelQUT_clean_gabmatlowrate_al_0_CAFE_CAFE_sB); end
for j = 1 : 6 ; post_Homeliving_al_0_8_clean(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0_8' , modelQUT_clean_gabmatlowrate_al_0_CAFE_CAFE_sB); end
for j = 1 : 6 ; post_Homeliving_al_0_clean(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0' , modelQUT_clean_gabmatlowrate_al_0_CAFE_CAFE_sB); end
for j = 1 : 6 ; post_Homeliving_al_0_clean(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0' , modelQUT_clean_gabmatlowrate_al_0_CAFE_CAFE_sB); end

