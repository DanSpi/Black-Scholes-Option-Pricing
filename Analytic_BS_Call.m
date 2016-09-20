function [ Price ] = Analytic_BS_Call(S, K,t, T, sigma, r)
%Computation of the analytical BS price of a Call option
%
%Input:
%S Underlying stock price
%K Strice price
%t Actual time
%T Maturity time 
%sigma Standard deviation
%r Risk free rate
%Output:
%Price

d_1=(log(S/K)+(r+0.5*sigma^2)*(T-t))/(sigma*sqrt(T-t));
d_2=d_1-sigma*sqrt(T-t);

Price=S*normcdf(d_1)-K*exp(-r*(T-t))*normcdf(d_2);

end

