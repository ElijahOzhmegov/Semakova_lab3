function A = DHtransform(a, alpha, d, theta)
% ======================================================================
%                                task 1
% 
% Made by ElijahOzmegov@gmail.com as a part of the third laboratory work
% 
% It represents Denavit-Hartenberg transformation from a, alpha, d, 
% theta to matrix A
% ======================================================================

% it cab check via DHtransform(5,0,3,pi/2) <- provided by the task

c_th = cos(theta);
s_th = sin(theta);

c_al = cos(alpha);
s_al = sin(alpha);

A = [c_th -s_th*c_al -s_th*s_al a*c_th;
     s_th  c_th*c_al -c_th*s_al a*s_th;
     0     s_al       c_al      d;
     0     0          0         1];