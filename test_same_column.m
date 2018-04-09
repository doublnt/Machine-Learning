A = [ 1 2 3; 4 5 6; 1 2 3;1 1 1];
sizeA = size(A);
B = zeros(1,sizeA(1,2));


for i =1 :sizeA(1,1)-1
   temp = same_column_demo(A(i,:),A(sizeA(1,1),:));
   B = B + temp;
end

B