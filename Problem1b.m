function [u]=Problem1b(u);
%Guassian Elimation
u= [1,0,0,0,0,0,0,0;-0.500000000000000,1,0,0,0,0,0,0;0,-0.666666666666667,1,0,0,0,0,0;0,0,-0.750000000000000,1,0,0,0,0;0,0,0,-0.800000000000000,1,0,0,0;0,0,0,0,-0.833333333333333,1,0,0;0,0,0,0,0,-0.857142857142857,1,0;0,0,0,0,0,0,-0.875000000000000,1]
% a is the matrix for the problem that undergoes Guassian elmiination. 
%u=[-2 1 0 0 0 0 0 0;0 -1.5 1 0 0 0 0 0;0 0 -1.3333 1 0 0 0 0;0 0 0 -1.25 1 0 0 0;0 0 0 0 -1.2 1 0 0;0 0 0 0 0 -1.1667 1 0;0 0 0 0 0 0 -1.1429,1;0,0,0,0,0,0,0,-1.125]
det(u)
%used to test the martix as a lower nxm
%a=[1 6 2 0;3 2 4 -1; 1 6 1 -1; 2 1 3 0]
N=length(u);
tol=1e-6;
%for each povit along the diongal

for ii = 1:N-1
    %for each row under the piviot
    for jj= ii+1:N
        %ii
        %jj
        %a(jj,ii)
        %tol used to ensure no fuction is ND.
        if abs(u(jj,ii))>tol
            %factor is the ratio between pivot value
            % and 
            fac=u(ii,ii)/u(jj,ii);
            %row replacment operation
            u(jj,:)=fac*u(jj,:)-u(ii,:);
            
        end
        
    end
end