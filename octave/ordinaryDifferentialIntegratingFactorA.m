%Plot of implicit function

                  clear, clf, cla
                  xm = -3:0.2:3;  ym = -3:0.2:3;
                  [x, y] = meshgrid(xm, ym);

                  f = e.^x+x.*y+e.^(-y);

                contour(x,y,f,-10:24,'linewidth',2,'linecolor','black')
    %            [C,H]= contour(x,y,f,-10:10,'linewidth',2,'linecolor','black')
 % [C,LEV]= contour(x,y,f,'linewidth',2,'linecolor','black')
