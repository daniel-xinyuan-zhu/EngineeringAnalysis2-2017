% Xinyuan (Daniel) Zhu
% Engineering Analysis II Section 22
% January 9th 2017

% This program plots the tensions of cable AB, AC, and AD against the x and
% z values that determine the location of point B. This program corresponds
% to part i of the design project.

figure;
x = 1:0.1:3.5;
z = 1:0.1:3.5;
surf(x,z,calcTenAB(x,z));
xlabel('x coordinate');
ylabel('z coordinate');
zlabel('Tension in AB');
title('Tension in cable AB vs Position Of Point B');

figure;
x = 1:0.1:3.5;
z = 1:0.1:3.5;
surf(x,z,calcTenAC(x,z));
xlabel('x coordinate');
ylabel('z coordinate');
zlabel('Tension in AC');
title('Tension in cable AC vs Position Of Point B');

figure;
x = 1:0.1:3.5;
z = 1:0.1:3.5;
surf(x,z,calcTenAD(x,z));
xlabel('x coordinate');
ylabel('z coordinate');
zlabel('Tension in AD');
title('Tension of cable AD vs Position Of Point B');