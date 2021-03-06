diffBessel=@(x) 0.5.*(besselj(0,x)-besselj(2,x));

#=========

kread=fopen("figOctaveBesselZeroFunction.dat","w");

for x=[0:0.1:13.5];
fprintf(kread,"%i %s %i",x,"    ",besselj(0,x)); fprintf(kread,"\n")
endfor

fclose(kread)
#=======================

kread=fopen("figOctaveBesselOneFunction.dat","w");

for x=[0:0.1:13.5];
fprintf(kread,"%i %s %i",x,"    ",besselj(1,x)); fprintf(kread,"\n")
endfor

fclose(kread)
#=======================

#=======================



