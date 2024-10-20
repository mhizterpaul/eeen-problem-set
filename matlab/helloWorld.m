%clear all variables 
clear;
secPerDay = 24*60*60;

% converts the 5 day class to seconds
endOfClass = 5*secPerDay;

%learning rate
tau = 1.5*24*60*60;
tVec = 0:endOfClass/10000:endOfClass;
knowledgeVec = 1 - exp(-tVec/tau);
[minVal, idx] = min(abs(knowledgeVec-0.5));
halfTime = tVec(idx);

%create and plot into a figure window
figure;
plot(tVec/secPerDay, knowledgeVec);

