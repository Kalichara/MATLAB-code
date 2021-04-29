% Tranformation of circle under given matrix

clear;clc;clf;
M=[1,-3/2;0,1];  % transformation matix
% for ploting
t  =  0:0.1:2*pi;
p  =  exp(1i.*t);         % point on cirles in complex form
x  =  [real(p);imag(p)];  % points of circle in X-Y plane
y  =  M*x;                % points in X-Y plane after transformation 
% domian x-points
x_node=[0,pi/6,pi/4,pi/3,pi/2,2*pi/3,3*pi/4,5*pi/6,pi,7*pi/6,5*pi/4,4*pi/3,3*pi/2,5*pi/3,7*pi/4,11*pi/6];
point=exp(1i.*x_node);
domain_point=[real(point);imag(point)];
codomain_point=M*domain_point;
% plot
figure(1)
plot(x(1,:),x(2,:),'k','Linewidth',2)
hold on
plot(domain_point(1,:),domain_point(2,:),'r*','Linewidth',2)
title('plot of input or domain x')
a=gca();
a.XAxisLocation='origin';
a.YAxisLocation='origin';
axis equal 
grid on
grid minor
% a.GridColor='r';
% a.MinorGridColor='r';
figure(2)
plot(y(1,:),y(2,:),'b','Linewidth',2)
hold on
plot(codomain_point(1,:),codomain_point(2,:),'r*','Linewidth',2)
title('plot of output y=Mx')
ax=gca();
ax.XAxisLocation='origin';
ax.YAxisLocation='origin';
axis equal
grid on
grid minor
% ax.GridColor='r';
% ax.MinorGridColor='r';
% general form of ellipse:
% Ax^2+Bxy+Cy^2+Dx+Ey+F=0