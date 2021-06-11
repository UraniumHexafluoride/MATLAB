A = zeros(8,8);
L = zeros(8,8);
U = zeros(8,8);

for i=1:8
    for j=1:8
        if(i==j)
            A(i,j) = -2;
        elseif(i-j==1 || j-i==1)
            A(i,j) = 1;
        else
            A(i,j)=0;
        end
        %https://www.mathworks.com/matlabcentral/answers/1351-l-u-decomposition
    end
    disp("["+A(i,1)+","+A(i,2)+","+A(i,3)+","+A(i,4)+","+A(i,5)+","+A(i,6)+","+A(i,7)+","+A(i,8)+"]");
end

disp("-----------------");



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
% Program shows U and L
disp("U:")
disp(U)
disp("L:")
disp(L)
disp("Original")
disp(A)







for(k=1:8)
    %disp("["+L(k,1)+","+L(k,2)+","+L(k,3)+","+L(k,4)+","+L(k,5)+","+L(k,6)+","+L(k,7)+","+L(k,8)+"]");
end

disp("-----------------");

for(l=1:8)
    disp("["+U(l,1)+","+U(l,2)+","+U(l,3)+","+U(l,4)+","+U(l,5)+","+U(l,6)+","+U(l,7)+","+U(l,8)+"]");
end

B =zeros(8);
B = A(1)./A(2);
disp(B+"A1"+A(1)+"A2"+A(2));

TEST = zeros(8,8);
TEST = multRows(U, 1, 2, 15);

for(l=1:8)
    disp("["+U(l,1)+","+U(l,2)+","+U(l,3)+","+U(l,4)+","+U(l,5)+","+U(l,6)+","+U(l,7)+","+U(l,8)+"]");
end
disp("-----------------");
for(l=1:8)
    disp("["+TEST(l,1)+","+TEST(l,2)+","+TEST(l,3)+","+TEST(l,4)+","+TEST(l,5)+","+TEST(l,6)+","+TEST(l,7)+","+TEST(l,8)+"]");
end


function res = multRows(arr, r1, r2, factor)
res = zeros(8);

for(i=1:8)
    res(i)=arr(r1,i)*factor*arr(r2,i);
    disp("R["+r1+","+i+"]:"+arr(r1,i)+" * "+factor+" * R["+r2+","+i+"]:"+arr(r2,i)+"="+res(i));
end
  
end



% https://www.mathworks.com/matlabcentral/answers/43397-performing-gauss-elimination-with-matlab