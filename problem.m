function x = forward(L,x)
% FORWARD. Forward elimination.
% For lower triangular L, x = forward(L,b) solves L*x = b.
L=zeros(8,8);
for k = 1:8
j = 1:k-1;
x(k) = (x(k) - L(k,j)*x(j))/L(k,k);
end
function x = backsubs(U,x)
% BACKSUBS. Back substitution.
% For upper triangular U, x = backsubs(U,b) solves U*x = b.
U=zeros(8,8);
for k = 8:-2:1
j = k+1:8;
x(k) = (x(k) - U(k,j)*x(j))/U(k,k);
end