function plot_3d_reconstruction(point,method,h)

% Copyright (C) <2007>  <Francesc Moreno-Noguer, Vincent Lepetit, Pascal Fua>
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the version 3 of the GNU General Public License
% as published by the Free Software Foundation.
% 
% This program is distributed in the hope that it will be useful, but
% WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
% General Public License for more details.       
% You should have received a copy of the GNU General Public License
% along with this program. If not, see <http://www.gnu.org/licenses/>.
%
% Francesc Moreno-Noguer, CVLab-EPFL, September 2007.
% fmorenoguer@gmail.com, http://cvlab.epfl.ch/~fmoreno/ 


figure(h); hold on;
n=size(point,2);
%err=0;
for i=1:n
   plot3(point(i).Xcam(1),point(i).Xcam(2),point(i).Xcam(3),'.','color',[1 0 0]);
   plot3(point(i).Xcam_est(1),point(i).Xcam_est(2),point(i).Xcam_est(3),'o','color',[0 0 1]);
%   error_(i)=sqrt(dot(point(i).Xcam-point(i).Xcam_est,point(i).Xcam-point(i).Xcam_est));
end
%error_mean=mean(error_);
plot3(0,0,0,'.','markersize',30,'color',[0 0 0]);

%fprintf('error Ansar: %.2f\ttime:%.2f\n',error_mean,t(1));
txt=strcat(method,' - reprojection error');
title(txt,'fontsize',20);
grid on;  

