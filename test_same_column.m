A = [ 1 1 1 0; 1 1 1 0; 1 0 0 1;1 0 1 1];
sizeA = size(A);
B = zeros(sizeA(1,1),sizeA(1,2));
C = zeros(1,sizeA(1,2)-1);

for i =1 :sizeA(1,1)-1
   temp = same_column_demo(A(:,i),A(:,sizeA(1,2)));
   B(:,i) = B(:,i) + temp;
   C(1,i) = sum(B(:,i)); 
end

C
