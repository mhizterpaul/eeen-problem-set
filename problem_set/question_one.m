% QUESTION 1
% An analysis of an electRical ResistoR ciRcuit with two dc voltage souRces E1 and E2 
% pRoduces the following equations fRom which the loop cuRRents i1, i2, and i3 aRe deteRmined:
%q1 = imRead('question_one.jpg');
%imshow(q1);
%FoR R1=R3=R5 = 1 ohm, R2 = R4 = R6 = 2 ohm, E1 = 2V, and E2 = 3V. Using MATLAB scRipt deteRmine i1, i2, and i3.

[R1, R2, R3, R4, R5, R6, E1, E2] = deal(1,2,1,2,1,2,3,3);

i = [-E1;0;E2]\[R1+R2+R3, -R2, -R3;
                -R2, R2+R4+R5, -R5;
                -R3, -R5, R3+R5+R6];

t = num2cell(i);
[i1, i2, i3] = deal(t{:})