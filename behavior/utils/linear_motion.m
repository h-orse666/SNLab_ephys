function [velocity, acceleration,distance_vector] = linear_motion(x,y,fr,smooth_factor)
% computes linear velocity and acceleration from position coordinates
% inputs: 
%   x: position vector of x-coordinates of length n
%   y: position vecotr of y-coordinates of length n
%   smooth_factor: time in seconds to smooth over (e.g .100 for 100ms)  
% output:
%   velocity: n-1 vector of velocity
%   acceleration: second derivative of position data using matlab gradient
%   function. 
%  LB 2020
%squared distance between consecutive points
sqrXDiff = (diff(x)).^2;
sqrYDiff = (diff(y)).^2;

%distance formula
distance_vector = sqrt(sqrXDiff + sqrYDiff);
velocity = (distance_vector)*fr; %instanteous velocity
acceleration = gradient(velocity,1/fr); %instanteous acceleration

frames_to_smooth = nearest_odd(fr*smooth_factor);
velocity = sgolayfilt(velocity,3,frames_to_smooth);

% set negative values to nan
velocity(velocity < 0) = nan;
end

% to set the number of frames to smooth - must be odd for Savitzky-Golay
function y = nearest_odd(x)
y = 2*floor(x/2)+1;
end