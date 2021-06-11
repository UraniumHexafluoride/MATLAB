function x = forward(L,x)
% FORWARD. Forward elimination.
% For lower triangular L, x = forward(L,b) solves L*x = b.
[n,n] = size(L);
for k = 1:n
j = 1:k-1;
x(k) = (x(k) - L(k,j)*x(j))/L(k,k);
end
function x = backsubs(U,x)
% BACKSUBS. Back substitution.
% For upper triangular U, x = backsubs(U,b) solves U*x = b.
[n,n] = size(U);
for k = n:-1:1
j = k+1:n;
x(k) = (x(k) - U(k,j)*x(j))/U(k,k);
end
