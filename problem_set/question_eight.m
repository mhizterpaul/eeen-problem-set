% QUESTION 8
% (a)
% Write a line of code to determine whether a is equal to 4, and b is not equal to 4. Given that b = 6.
% (b)
% Write a line of code that can count from 1 to 10 sequential.

a = 3;
b = 6;

if a == 4 & b ~= 4
    disp("a is 4 and b is not 4");
else
    disp("unmet requirement: a is " + a + " b is " + b);
end

for index = 1:10
    disp(index);
end

