    function extractFeaturesFileName(folder,dest_folder,ext)
  path(path,'/shared/persisted/nsltools');
%path(path,'~/workspace/nsltools');
%  path(path,'/home/kpatil/Timbre/rastamat');
   %path(path,'/home/kpatil/Timbre/AuditoryToolbox');
%   fcoefs = MakeERBFilters(16000,420,100);
  rand('state',sum(100*clock));
  if nargin<6
    snr=0;
  else
    snr=str2num(snr);
    fprintf('%s = %2.0f dB\n',noise,snr);
  end
  if nargin < 5
    noise='none'
  end
  if nargin<4
    state='';
  end
  if nargin < 3
    error('Not enough inputs');
  end
loadload;close;
paras(1)=10;
paras(2)=4;
paras(4)=0;
b=[1 -0.97]; a=[1];
rv=2.^[1:0.5:5];
sv=2.^[-2:0.5:3];
d=dir(fullfile(folder,ext))

parfor k= 1 : length(d)
 filename=[folder '/' d(k).name];
 dest_filename=[dest_folder '/' d(k).name];
 if (exist([dest_filename(1:end-3) ext 'mat'])==0)
     x =wavread(filename);
     x = x(:,1);
     fs = 16000;
     if (length(x)>0.1*fs)
	  x=resample(x,16000,fs);
      x=filter(b,a,x);
	  x=unitseq(x);
      x=wind(x,16000);
      size(x)
      for i= 1:size(x,1)
	     y=wav2aud(x(i,:),paras);
	     y=y.^(1/3);
         parsave([dest_filename(1:end-3) '_' num2str(i) '.aud'], y)
      end
	else
	  delete([dest_filename(1:end-3) ext '.mat']);
	end
 else
	disp(['already done' filename]);
 end
end
   

 function  cr1=bin_cr(crtemp)
 cr1=[];
  for i=0:64:64*18
    cr1(:,:,end+1,:)=mean(abs(crtemp(:,:,[1:64]+i,:)),3);
  end
 function parsave(fname, x)
 save(fname, 'x')
