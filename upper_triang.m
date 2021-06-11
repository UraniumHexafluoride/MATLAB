B=1;
function B= upper_triang(A) 
%%%Input A--> Matrix for m*n for the size
%%%Output B--> Is the upper triangular matrix of the same size
[m,n]=size(A);
B = A; % copy the input matrix in B, and work with it from now on
for k=1:m-1
    for i=k+1:m
        u=B(i,k)/B(k,k);
        for j=(k):n
            B(i,j)=B(i,j)-u*B(k,j);
        end
    end
end
B = B - A; % not really sure about this
end