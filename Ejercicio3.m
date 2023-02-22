%3.1
b1=[0.05;9]; %columna
c=3;
A1=[c,0;0,c];
n1=30;
range1=3;

%3.2
b2=[1;2]; %columna
A2=[24,0;0,12];
n2=30;
range2=3;
%3.3
A3=[2,3;3,5];
b3=[0;0];
n3=30;
range3=3;
%eig(A3)
%IV
%1y2)




subplot(2,2,1), paraboloide(A1,b1,n1,range1), legend ('3.1')
subplot(2,2,2), paraboloide(A2,b2,n2,range2), legend ('3.2')
subplot(2,2,3), Quiver(A3,b3,n3,range3), legend ('3.3')
%subplot(2,2,3), regresion(A3,b3,n3,range3), legend ('IV 1 y 2')
%Ejercicio4



