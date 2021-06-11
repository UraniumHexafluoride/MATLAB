%%%This is for part a for problem 1a.
A=zeros(8,8);%%%For the column and row size of matrix A.
%Finding A
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
%The decomposition of the matrix into L and U.
  L=zeros(8,8);%%%For the column and row size of matrix L.
  U=zeros(8,8);%%%For the column and row size of matrix U.
  for i=1:8
  % Finding L
  for k=1:i-1
  L(i,k)=A(i,k);
  for j=1:k-1
  L(i,k)= L(i,k)-L(i,j)*U(j,k);
  end
  L(i,k) = L(i,k)/U(k,k);
  end
  % Finding U
  for k=i:8
  U(i,k) = A(i,k);
  for j=1:i-1
  U(i,k)= U(i,k)-L(i,j)*U(j,k);
  end
  end
  end
  for i=1:8
  L(i,i)=1;
  end
 % Showing U and L
disp("U:")
disp(U)
disp("L:")
disp(L)
 %Used to show by in-built Matlab tools that the code is correct.
%[L,U]=lu(A)

%Showing that L*U=A,thus it is correct.
disp("A:")
disp(L*U)

%%%This is for part b for problem 1b.
temp = [1 1 1 1 1 1 1 1] %We use this as the 1x8.
temp = temp' %Rotating the resulted matrix.
gauss = [A temp] %Creating the new 8x9 matrix for A and temp.
n=8%Is the value for n.
disp(gauss)
for j = 1:(n-1)
for i= (j+1) : n
mult = gauss(i,j)/gauss(j,j) ;
for k= j:n+1
gauss(i,k) = gauss(i,k) - mult*gauss(j,k) ;
%Guassian Elimination
end
end
end
for p = n:-1:1
for r = p+1:n
x(p) = gauss(p,r)/gauss(p,r-1)
end
end
disp("After the Gaussian Elimination the results now equal [1,1,1,1,1,1,1,1] for 1x8:")
disp(gauss)

