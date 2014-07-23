function [temp]=getData(folder, ext)
addpath /home/bellur/workspace/svd
[m1 n1] = size(folder)

for j1 = 1 : n1
files = dir(fullfile(folder(j1).name, ext));
k=1;
temp = 0;
[m n] = size(files)
%fileNum = 00;
	    if j1 < 8 
	     	fileNum = 500;
	    else 
		fileNum = 500;
	    end
	    for j = 1 : fileNum
            
	    	[folder(j1).name '/' files(j).name]
	        a1=load([folder(j1).name '/' files(j).name], '-mat'); 
%	        a1.cr1 = a1.crtemp;
	        %		a1.cr1 = a1.crtmp(:,:,q,:);
%	        if o > 0
%		size(squeeze(a1.crtemp))
       		temp = temp + squeeze(a1.crtemp1); 
	    	k=k+1;
%	        end
	     end
end

temp = temp/(k-1);