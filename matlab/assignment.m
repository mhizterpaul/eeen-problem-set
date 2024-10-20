% Plotting
%{
Plot the learning trajectory
• In helloWorld.m, open a new figure (use figure)
• Plot knowledge trajectory using tVec and knowledgeVec
• When plotting, convert tVect to days by using secPerDay
• Zoom in on the plot to verify that halfTime was calculated correctly
%}

helloWorld;

%{
Functions: Exercise
• Write a function with the following declaration:
function plotSin(f1)
• In the function, plot a sine wave with frequency f1, on the
interval [0,2π]:
• To get good sampling, use 16 points per period.
%}

plotSin(3);

%{
Exercise: Conditionals
• Modify your plotSin(f1) function to take two inputs:
plotSin(f1,f2)
• If the number of input arguments is 1, execute the plot command
you wrote before. Otherwise, display the line 'Two inputs were given'
• Hint: the number of input arguments is stored in the built-in
variable nargin
%}

plotSin(3, 2)

%{
Advanced Plotting: Exercise
• Modify the plot command in your plotSin function to use
squares as markers and a dashed red line of thickness 2
as the line. Set the marker face color to be black
(properties are LineWidth, MarkerFaceColor)
• If there are 2 inputs, open a new figure with 2 axes, one on
top of the other (not side by side), and plot both
frequencies (subplot)
%}

plotSin(3, 2)


%{
Exercise: 3-D Plots
If two inputs are given, evaluate the following function:
• Modify plotsin to do the following:
    Z = sin(f1*x)+sin(f2*y)
• y should be just like x, but using f2. (use meshgrid to get
the X and Y matrices)
• In the top axis of your subplot, display an image of the Z
matrix. Display the colorbar and use a hot colormap. Set
the axis to xy (imagesc, colormap , bar, axis)
• In the bottom axis of the subplot, plot the 3-D surface of Z
(surf)
%}

plotSin(3, 2)
