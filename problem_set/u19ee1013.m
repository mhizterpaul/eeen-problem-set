% QUESTION 1
% An analysis of an electRical ResistoR ciRcuit with two dc voltage souRces E1 and E2 
% pRoduces the following equations fRom which the loop cuRRents i1, i2, and i3 aRe deteRmined:
%A = [R1+R2+R3, -R2, -R3;
%     -R2, R2+R4+R5, -R5;
%     -R3, -R5, R3+R5+R6];
% i = [i1; i2;i3];
% b = [-E1;0;E2];
% eqtn = A*i == b;
%FoR R1=R3=R5 = 1 ohm, R2 = R4 = R6 = 2 ohm, E1 = 2V, and E2 = 3V. Using MATLAB scRipt deteRmine i1, i2, and i3.

[R1, R2, R3, R4, R5, R6, E1, E2] = deal(1,2,1,2,1,2,3,3);

i = [-E1;0;E2]\[R1+R2+R3, -R2, -R3;
                -R2, R2+R4+R5, -R5;
                -R3, -R5, R3+R5+R6];

t = num2cell(i);
[i1, i2, i3] = deal(t{:})



%Question two
% An ac electric circuit with resistors R and capacitances C is described by the following set of equations 
% in the Laplace transformed domain:
% 
% (2s + τ_o)V̄_1(s)   -s*V̄_2(s)             0          =  sŪ(s)
% -s*V̄_1(s)         (2s + τ_o)V̄_2(s)   -s*V̄_3(s)      =   0  
%   0                -s*V̄_2(s)        (s + τ_o)V̄_3(s) =   0  
% 
% where s is the Laplace transform parameter, τ_o = 1/RC, V̄_j(s), j = 1, 2, 3, are the transformed nodal voltages, 
% and Ū(s) is the transformed applied voltage. Use the Symbolic toolbox to solve for V̄_j(s).


% Define symbolic variables
syms s R C U

% Define tau as 1/(RC)
tau = 1/(R*C);

% Define symbolic functions for V1(s), V2(s), V3(s)
syms V1 V2 V3

% Define the system matrix A
A = [2*s + tau, -s, 0;
     -s, 2*s + tau, -s;
     0, -s, s + tau];

% Define the right-hand side vector b
b = [s*U; 0; 0];

% Set up the system of equations
eqns = A * [V1; V2; V3] == b;

% Solve the system for V1(s), V2(s), and V3(s)
solution = solve(eqns, [V1, V2, V3]);

% Display the solutions
disp('V1(s) = ')
disp(solution.V1)
disp('V2(s) = ')
disp(solution.V2)
disp('V3(s) = ')
disp(solution.V3)




% QUESTION 3
% Plot the following cosine functions, 𝑦1 = 2cos⁡(𝑥), 𝑦2 = cos⁡(𝑥), and 𝑦3 = 0.5 ∗ cos⁡(𝑥), in the
% interval 0 ≤ 𝑥 ≤ 2𝜋.


upperlimit = 2*pi;
x = 0:upperlimit/16:upperlimit;
y1 = 2*cos(x);
y2 = cos(x);
y3 = 0.5*cos(x);

subplot(2,2,1);
plot(x, y1);
title('2sin(x)');

subplot(2,2,2);
plot(x,y2);
title('sin(x)');

subplot(2,2,[3,4]);
plot(x, y3);
title('0.5sin(x)');




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



% QUESTION 5
% Calculate the following
% i.
% Determinate of Matrix A
% ii.
% Inverse of Matrix A
% iii.
% Transpose of Matrix A
% 𝐴=[1⁡2⁡3;4⁡5⁡6;⁡7⁡8⁡0⁡]

A = [1 2 3; 4 5 6; 7 8 0];

detA = det(A)
invA = inv(A)
TransA = A'



% QUESTION 6
% Given the following expression 𝑦 = 𝑒−𝑎 sin(𝑥) + 10√𝑧, for a = 5, x = 2, and z = 8. Determine
% the value of y using MATLAB script

[a x z] = deal(5,2,8);
f = exp(-a)*sin(x) + 10*sqrt(z)




%QUESTION 7
%Generate a script that asks the user to enter a positive integer from 1 to 
%19 and continues to make the request if any number other than one of these 19 integers is enter.

valid = 1:19;
res = input("enter a positive integer between between 0 and 20 ");
while class(res) ~= "double" 
    res = input("enter a positive integer between between 0 and 20 ");
end
index = find(valid == res,1);
while isempty(index)
    res = input("enter a positive integer between between 0 and 20 ");
    index = find(valid == res,1);
end


% QUESTION 8
% (a)
% Write a line of code to determine whether a is equal to 4, and b is not equal to 4. Given that b = 6.
% (b)
% Write a line of code that can count from 1 to 10 sequential.
%8a

a = 3;
b = 6;

if a == 4 & b ~= 4
    disp("a is 4 and b is not 4");
else
    disp("unmet requirement: a is " + a + " b is " + b);
end


%8b

for index = 1:10
    disp(index);
end

