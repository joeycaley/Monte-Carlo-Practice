function [dots] = TBP_noisy(~,initial_conditions,w)

wp = w;
wv = w*1e-3;

% Grabbing the initial conditions 
r1 = initial_conditions(1);
r2 = initial_conditions(2);
r3 = initial_conditions(3);
v1 = initial_conditions(4);
v2 = initial_conditions(5);
v3 = initial_conditions(6);

% More defined parameters
mu = 3.986004*10^14;
denominator = (r1^2 + r2^2 + r3^2)^(3/2);

% Calculating the derivatives
r1_dot = v1 + wp;
r2_dot = v2 + wp;
r3_dot = v3 + wp;
v1_dot = -mu / denominator * r1 + wv;
v2_dot = -mu / denominator * r2 + wv;
v3_dot = -mu / denominator * r3 + wv;

dots = [r1_dot r2_dot r3_dot v1_dot v2_dot v3_dot]';
end
