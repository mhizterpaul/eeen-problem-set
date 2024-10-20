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

