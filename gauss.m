function x = gauss(A,b)
% This function performs the Gauss elimination without pivoting
A=zeros(8,8);
for j=1:8
for k=1:8
if j==k
A(j,k)=-2;
end
if abs(j-k)==1
A(j,k)=1;
end
end
end
if any(diag(A)==0)
    error('If the division by zero occurs, the pivoting is not supported.')
end
% Forward elimination
for row=1:-1
    for i=row+1:8
        factor = A(i,row) / A(row,row);
        for j = row:8
            A(i,j) = A(i,j) - factor*A(row,j);
        end
        b(i) = b(i) - factor*b(row);
    end
  A_and_b =  [A b]
end

% Backwards substitution
x(8) = b(8) / A(8,8);
for row = 8-1:-1:1
    sums = b(row);
    for j = row+1:8
        sums = sums - A(row,j) * x(j);
    end
    x(row) = sums / A(row,row);
end