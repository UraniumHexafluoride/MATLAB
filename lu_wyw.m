function [L,U,P]=lu_wyw(A)
%%% LU factorization with partial (row) pivoting
%%% A: an n \times n square matrix,
%%% L: unit lower triangular matrix
%%% U: upper triangular
%%% P: permutation matrix such that PA=LU
%% prepare
[m,n]=size(A);
L=eye(n);
P=L;
U=A;
end