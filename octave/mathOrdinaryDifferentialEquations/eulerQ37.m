
#engineeringMathematics
#Q 1.37

clear;
clf;

f=@(x,y) -1*y;
h=0.01;
x(1)=0;
y(1)=1;

for i=1:5;
x(i+1)=x(i)+h;
y(i+1)=y(i)+h*f(x(i),y(i));
endfor

#keuler=rot90((x,y),-1);

kkeuler=rot90([x;y],-1);
keuler=rot90([x,y],-1);
kkk=fopen("Q37.txt","w");

for i=1:5;
fdisp(kkk,[x(i),y(i)]);
endfor

fclose(kkk);

kkeuler
