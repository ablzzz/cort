function lda = ldaReshapeScript(data, lab, options)
lda.weights = LDA2(lab, options, data);
lda.reshape = reshape(lda.weights, 11, 18, 128);
lda.w1 = lda.reshape;
lda.w2 = lda.reshape;
lda.w1(lda.w1 <= 0) = 0;
lda.w2(lda.w2 > 0) = 0;
lda.w11_0_2 = 0.2*(lda.w1/max(lda.w1(:)));
lda.w12_0_2 = -0.2*(lda.w2/min(lda.w2(:)));
lda.wproject_0_2 = lda.w11_0_2 + lda.w12_0_2 + 1;
lda.w11_0_4 = 0.4*(lda.w1/max(lda.w1(:)));
lda.w12_0_4 = -0.4*(lda.w2/min(lda.w2(:)));
lda.wproject_0_4 = lda.w11_0_4 + lda.w12_0_4 + 1;
lda.w11_0_6 = 0.6*(lda.w1/max(lda.w1(:)));
lda.w12_0_6 = -0.6*(lda.w2/min(lda.w2(:)));
lda.wproject_0_6 = lda.w11_0_6 + lda.w12_0_6 + 1;
lda.w11_1_0 = 1*(lda.w1/max(lda.w1(:)));
lda.w12_1_0 = 1*(lda.w2/min(lda.w2(:)));
lda.wproject_1_0 = lda.w11_1_0 + lda.w12_1_0 + 1;