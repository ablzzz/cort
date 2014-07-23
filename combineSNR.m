function nd = combineSNR(noise, data, snr)

% calculate desired average speech energy (as -26 dBov)
dBov=-26;
maxsignal=1.0;
desiredspeechenergy=maxsignal*10^(dBov/10);

% calculate desired average noise energy using SNR
desirednoiseenergy=desiredspeechenergy/(10^(snr/10));

% calculate average energy of noise sample
noiseenergy = sum(noise.*noise)/length(noise);

% scale noise to get desired noise energy
noise = noise .* sqrt(desirednoiseenergy/noiseenergy);

% activerange=[speechevents(i).active(1):speechevents(i).active(2)];
activedata = data;
activespeechenergy=sum(activedata.*activedata) / length(activedata);
  % calculate multiplier to match desired snr with noiseenergy
data = data .* sqrt(desiredspeechenergy/activespeechenergy);
%   % sanity check - calculate resulting snr value
%   snr = round(10*log10((sum(data(activerange).*data(activerange))/ length(activerange))/(sum(noise.*noise)/length(noise))))
  % add the speech data to the clean vector
%  clean(cur:cur+length(data)-1) = clean(cur:cur+length(data)-1) + data;
%figure; plot(data); hold on; plot(noise, 'r')
nd = noise + data;

% add clean speech to noise
%noisyspeech=noise+clean;
% clip resulting noisyspeech to [-1 1]
% (only noise should get clipped due to the speech being at -26dBov)
%noisyspeech(noisyspeech > 1) = 1;
%noisyspeech(noisyspeech < -1) = -1;

