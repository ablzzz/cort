for j = 1 : 6 ; post_Homeliving_al_0_6_clean(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0_6' , modelQUT_clean_gabmatlowrate_al_0_CAFE_CAFE_sB); end
for j = 1 : 6 ; post_Homeliving_al_0_8_clean(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0_8' , modelQUT_clean_gabmatlowrate_al_0_CAFE_CAFE_sB); end
for j = 1 : 6 ; post_Homeliving_al_0_clean(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0' , modelQUT_clean_gabmatlowrate_al_0_CAFE_CAFE_sB); end
for j = 1 : 6 ; post_Homeliving_al_0_noise(j,:,:) = getPosterior_QUT(homelivingFold(j).name , '*al_0' , modelQUT_noise_gabmatlowrate_al_0_CAFE_CAFE_sB); end


