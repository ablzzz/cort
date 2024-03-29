function gab_filter=create_filters(paras,rv,sv)

    for sind=1:length(sv)
      for rind=1:length(rv)
        tsf=1000/paras(1);
        fsf=128/5.3;
        v=rv(rind);
        s=sv(sind);
        G = gaborFilter_MAC(v,s ,0 , tsf , fsf);
        gab_filter(sind,rind).G=G;
      end
    end
    
    for sind=1:length(sv)
      for rind=1:length(rv)
        tsf=1000/paras(1);
        fsf=128/5.3;
        v=rv(rind);
        s=sv(sind);
        G = gaborFilter_MAC(v, s ,0 , tsf , fsf);
        gab_filter(sind,rind + length(rv)).G=flipud(G);
      end
    end
    


function [G,tidx,fidx] = gaborFilter_MAC(rateVal, scaleVal, psi, fs_t, fs_f)
[rateVal scaleVal]
% GABORFILTER Returns a complex-valued Gabor filter with specified tuning.
%
% Usage:
% [g,tidx,fidx] = gaborFilter(rateVal, scaleVal, psi, fs_t, fs_f);
%
% Input:
% rateVal  = char. rate (in Hz)
% scaleVal = char. scale (in cyc/oct)
% psi      = char. phase (in radians)
% fs_t     = temporal sampling rate (in Hz)
% fs_f     = spectral sampling rate (in cyc/oct)
% 
% Output:
% g    = Gabor filter
% tidx = temporal index for filter (in sec)
% fidx = spectral index for filter (in oct)

% Michael A. Carlin (macarlin@jhu.edu)
% Created: 15 Feb 2014

% setup filter bandwidths (roughly two peaks along time and freq)
var_t = (1/(2*abs(rateVal)))^2;
var_f = (1/(2*scaleVal))^2;

% time/freq indices extend roughly +/- two std in each direction
tidx = -1.25*(sqrt(var_t)):1/fs_t:1.25*(sqrt(var_t));
fidx = -1.25*(sqrt(var_f)):1/fs_f:1.25*(sqrt(var_f));
[T,F] = meshgrid(tidx,fidx);

% design filter
G_env = exp(-0.5*(T.^2/var_t + F.^2/var_f));        % envelope
%size(G_env)
G_sin = exp(j*2*pi*(rateVal*T + scaleVal*F + psi)); % sinusoid
%size(G_sin)
G = G_env.*G_sin;
G = real(G)';
size(G)

  
  
