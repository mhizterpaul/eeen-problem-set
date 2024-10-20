clear;

% runge kutta 4th order method

f=input('enter the function');% the function 
x=input('enter the inital x:');
y=input('enter the inital value of y: ');
h=input('enter the step size(h): ');
X=input('enter X at which Y is required: ');

while X-x>=-10^(-10)
    fprintf('value of y at x=%0.2f is %f \n',x,y);
    k1=h.*f(x,y);
    k2=h.*f(x+h/2,y+k1/2);
    k3=h.*f(x+h/2,y+k2/2);
    k4=h.*f(x+h,y+k3);
    k=1/6.*(k1+2.*k2+2.*k3+k4);
    y=y+k;
    x=x+h;
end

%runge kutta 2rd order method

f=input ('enter your function');
to=input('enter the inital x:');
yo=input('enter the inital value of y: ');
h=input('enter the step size(h): ');
tn=input('enter X at which Y is required: ');
n=(tn-to)/h;
t(1)=to;
y(1)=yo;

for i=1:n
    t(i+1)=to+i*h;
    k1=h.*f(t(i),y(i))
    k2=h.*f(t(i+1),y(i)+k1);
    y(i+1)=y(i)+ 1/2.*(k1+k2);
    
    fprintf('y(%0.2f)=%0.4f\n',t(i+1),y(i+1))
end



    