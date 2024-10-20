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