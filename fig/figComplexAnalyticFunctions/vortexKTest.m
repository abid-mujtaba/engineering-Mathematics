clf;
hold on;
rr=linspace(1.01,1.01,100);
tt=linspace(0,2*pi,100);
polar(tt,rr);

c=4;
K=2.8*pi;
r=linspace(2.15,3,100);
t=asin((c+K*log(r))./(2*pi*(r-1./r)));
polar(t,r);
polar(pi-t,r);
