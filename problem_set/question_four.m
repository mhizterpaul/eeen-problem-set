%Question 4
%Find the solution x to the system of equations
% x + 2y + 3z = 1
% 3x + 3y + 4z = 1
% 2x + 3y + 3z = 2

syms x y z

A = [1 2 3; 3 3 4; 2 3 3];

b = [1; 2; 3];

eqtn = A*[x; y; z] == b;

solution = solve(eqtn, [x y z]);

disp('x = ')
solution.x
