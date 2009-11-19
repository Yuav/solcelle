function [C] = nm_to_ev(X)
% Regner om nm til eV
h = 4.135667273e-15;
c = 299792458;
C = (h*c)./(X*10^-9);

