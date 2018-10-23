function pos = getPosition(th1, th2, th3, th4, th5, g)
% ======================================================================
%                                task 2
% 
% Made by ElijahOzmegov@gmail.com as a part of the third laboratory work
% 
% It represents getting 10 special points of existing robot
% ======================================================================

a = 3;
b = 5.75;
c = 7.375;
d = 4.125;
e = 1.125;

R = [0; 0; 0; 1];
% DHtransform(a, alpha, d, theta)

pos = zeros(4,10); % the coordinate space under number 0 cannot move
pos(4,1) = 1;

A01 = DHtransform(0, -pi/2, a, th1);
pos(:,2) = A01*R;

A12 = DHtransform(b, 0, 0, th2-pi/2);
pos(:,3) = A01*A12*R;

A23 = DHtransform(c, 0, 0, th3+pi/2);
pos(:,4) = A01*A12*A23*R;

A34 = DHtransform(0, -pi/2, 0, th4+pi/2);
pos(:,5) = A01*A12*A23*A34*R;

A45 = DHtransform(0, 0, d, th5+pi);
pos(:,6) = A01*A12*A23*A34*A45*R;