function cr =  extractFeaturesGaborWavBF(folder,dest_folder, ext, rv, sv)
rand('state',sum(100*clock));
loadload;close;
paras(1)=4;
paras(2)=4;
paras(4)=0;
b=[1 -0.97]; a=[1];
gab_filters=create_filters_bf(paras,rv,sv);
d=dir(fullfile(folder,ext));
length(d)

for k= 1 : length(d)
    if(d(k).name(1)~='.')
        filename=[folder '/' d(k).name];
        dest_filename=[dest_folder '/' d(k).name];
        if (exist([dest_filename(1:end-3) 'gabmaidst'])==0)
        	cr1=[];
            save([dest_filename(1:end-3) 'mat'], 'cr1')
        	[x,fs]=wavread(filename);
            x = x(:,1);
        	if (length(x)>0.1*fs)
            	x=resample(x,16000,fs);
                x=filter(b,a,x);
                x=unitseq(x);
            	x=wind(x,16000);
            end
            size(x,1)
            for i= 1: size(x,1)
                y=wav2aud(x(i,:),paras);
                y=y.^(1/3);
                cr=aud2cor_gabmac(y,paras,rv,sv,gab_filters); %%%%%%%2D gabor filtering
                crtemp1 = mean(abs(cr),3);%%%%%%%%MISSING ABS
                save([dest_filename(1:end-3) '_' num2str(i) '.gabmatlowrate'], 'crtemp1')
            end
        else
            ds= 1;
        end
    else
        disp(['already done' filename]);
    end
end


 
