
function B= triang(A) 
%%%Input A--> Matrix for m*n for the size
%%%Output B--> Is the upper triangular matrix of the same size
[m,n]=size(A);
for k=1:m-1
    for i=k+1:m
        u=A(i,k)/A(k,k);
        for j=(k):n
            A(i,j)=A(i,j)-u*A(k,j);
        end
    end
end
B = A; 
end