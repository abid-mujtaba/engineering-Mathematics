diffBessel=@(x) 0.5.*(besselj(0,x)-besselj(2,x));

#=========

kread=fopen("figOctaveCircularMembraneNormalModesOne.dat","w");

for x=[-2.4048:0.1:2.4048];
fprintf(kread,"%i %s %i",x/2.4048,"    ",besselj(0,x)); fprintf(kread,"\n")
endfor

fclose(kread)
#=======================
#=========

kread=fopen("figOctaveCircularMembraneNormalModesTwo.dat","w");

for x=[-5.5201:0.1:5.5201];
fprintf(kread,"%i %s %i",x/5.5201,"    ",besselj(0,x)); fprintf(kread,"\n")
endfor

fclose(kread)
#=======================
#=========

kread=fopen("figOctaveCircularMembraneNormalModesThree.dat","w");

for x=[-8.6537:0.1:8.6537];
fprintf(kread,"%i %s %i",x/8.6537,"    ",besselj(0,x)); fprintf(kread,"\n")
endfor

fclose(kread)
#=======================
