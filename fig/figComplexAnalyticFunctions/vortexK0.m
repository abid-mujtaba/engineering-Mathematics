clf;
hold on;
c=1;
K=0;
r=linspace(1,3,1000);
t=asin((c.+K*log(r))./(2*pi*(r-1./r)));
polar(t,r);
polar(pi-t,r);
polar(-t,r);
polar(-pi+t,r);

c=2;
t=asin((c.+K*log(r))./(2*pi*(r-1./r)));
polar(t,r);
polar(pi-t,r);
polar(-t,r);
polar(-pi+t,r);
c=3;
t=asin((c.+K*log(r))./(2*pi*(r-1./r)));
polar(t,r);
polar(pi-t,r);
polar(-t,r);
polar(-pi+t,r);
c=4;
t=asin((c.+K*log(r))./(2*pi*(r-1./r)));
polar(t,r);
polar(pi-t,r);
polar(-t,r);
polar(-pi+t,r);
