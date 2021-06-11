ga=@(x) x-x^5;
gb=@(x) x+x^5;
x(1)=2.5;
tolerence=10^-8;
x(2)=ga(x(1));
n=1;
%x-x^5
while(abs(x(n+1)-x(n))>tolerence)
n=n+1;
x(n+1)=ga(x(n));
end
fprintf("Solution for ga is %f and iteratoiion is %d\n",x(length(x)),n);
%x+x^5
x=[];
x(1)=2.4;
x(2)=gb(x(1));
n=1;
while(abs(x(n+1)-x(n))>tolerence)
n=n+1;
x(n+1)=gb(x(n));
end
fprintf("Solution for gb is %f and iteratoiion is %d\n",x(length(x)),n);