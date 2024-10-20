load("classGrades.mat");
head(namesAndGrades, 5)
grades = namesAndGrades(:, 2:end);
meanGrades = mean(grades)
meanGrades = mean(grades, "omitmissing")
meanMatrix = ones([15 1])*meanGrades
curvedGrades = 3.5*(grades./meanMatrix);
mean(curvedGrades, 'omitmissing')
curvedGrades(curvedGrades > 5) = 5;
totalGrade = ceil(mean(curvedGrades, 2, 'omitmissing'));
letters = 'FDCBA';
letterGrades = letters(totalGrade');
disp(['Grades: ' letterGrades]);

