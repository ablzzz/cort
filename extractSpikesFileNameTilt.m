
function [cr rt rsf1] = extractSpikesFileName(x,  bw, wt, theta)
    loadload;
    paras(1)=10;
    paras(2)=4;
    paras(4)=0;
    rv=2.^[1:1:5];
    sv=2.^[-2:1:3];
    %x = x();
    x=unitseq(x);
    fs = 16000;
    y=wav2aud(x,paras);
    [m n] = size(bw)
  for j = 1 : m
    gab_filters = create_filters_ashwintilt(paras,rv,sv, bw(j,:), wt, theta);
    cr=aud2cor_bf(y', gab_filters);
    rt = squeeze(sum(abs(cr), 4));
    rsf1 = mean(squeeze(sum(abs(cr), 3)),4);
    %d1 = ((rsf1 - rsf).*(rsf1 - rsf)); 
    %distval(j) = sum(d1(:)) ;
    %save('distval', 'distval');
  end
   
