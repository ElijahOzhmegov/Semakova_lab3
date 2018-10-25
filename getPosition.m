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

pos = zeros(4,5); % the coordinate space under number 0 cannot move

A01 = DHtransform(0, -pi/2, a,  th1);
A12 = DHtransform(b,     0, 0,  th2-pi/2);
A23 = DHtransform(c,     0, 0,  th3+pi/2);
A34 = DHtransform(0,  pi/2, 0,  th4+pi/2);
A45 = DHtransform(0,     0, d,  th5+pi);

A02 = round(A01*A12, 4);
A03 = round(A02*A23, 4);
A04 = round(A03*A34, 4);
A05 = round(A04*A45, 4);

pos(:,2) = A01*R;
pos(:,3) = A02*R;
pos(:,4) = A03*R;
pos(:,5) = A04*R;

pos(:,6) = A05*[ 0;   0; -e; 1];
pos(:,7) = A05*[ g/2; 0; -e; 1];
pos(:,8) = A05*[-g/2; 0; -e; 1];
pos(:,9)  = A05*[ g/2; 0; 0; 1];
pos(:,10) = A05*[-g/2; 0; 0; 1];

pos = pos(1:3,:).';