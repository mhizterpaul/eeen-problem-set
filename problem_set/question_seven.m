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
