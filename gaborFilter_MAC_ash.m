function [G,tidx,fidx] = gaborFilter_MAC(rateVal, scaleVal, psi, fs_t, fs_f, f0, bw1 ,bw2)

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
var_t = (1/(bw1*abs(rateVal)))^2;
var_f = (1/(bw2*scaleVal))^2;
 %var_t = 0.0039
%var_f = 0.0625

% time/freq indices extend roughly +/- two std in each direction
tidx = 1/fs_t:1/fs_t:1;
fidx = 5.3/128 : 1/fs_f: 5.3;
[T,F] = meshgrid(tidx ,fidx);
% design filter
G_env = exp(-0.5*((T - 0.2).^2/var_t + (F - f0).^2/var_f));        % envelope
G_sin = exp(j*2*pi*(rateVal*(T - 0.2) + scaleVal*(F -f0) + psi)); % sinusoid
G = G_env.*G_sin;
%G = G/sqrt(sum(sum(G.^2)));
G = real(G);
