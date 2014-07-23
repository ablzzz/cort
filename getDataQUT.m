function [temp]=getSpace(file, ext)
k = 1; temp = 0;
load(file, '-mat'); 
[m2 n2] = size(gabFeat)
for j2 = 1 : n2
    temp = squeeze(gabFeat(j2).cr.crtemp1); 
	k=k+1;
end
temp = temp/(k-1);