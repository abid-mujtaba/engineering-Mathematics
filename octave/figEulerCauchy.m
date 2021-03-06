clear;
clf;


x=0.001:0.01:2;

plot (x,x.^(1).*log(x));

khorcat=rot90([x.^(1).*log(x);x],-1);

kkk=fopen("figEulerCauchyA.txt","w");
fdisp(kkk,khorcat)
fclose(kkk);

khorcat=rot90([x.^(0.5).*log(x);x],-1);

kkk=fopen("figEulerCauchyB.txt","w");
fdisp(kkk,khorcat)
fclose(kkk);

khorcat=rot90([x.^(-0.5).*log(x);x],-1);

kkk=fopen("figEulerCauchyC.txt","w");
fdisp(kkk,khorcat)
fclose(kkk);

khorcat=rot90([x.^(-1.5).*log(x);x],-1);

kkk=fopen("figEulerCauchyD.txt","w");
fdisp(kkk,khorcat)
fclose(kkk);
