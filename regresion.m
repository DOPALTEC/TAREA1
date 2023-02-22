function regresion(A, b, n, range)
  subplot(n,n,find(diag(ones(1,n))==1));
  [mat, vect] = paraboloide(A,b,n,range);
  paraboloide(mat, vect, n, range);
  subplot(n,n,find(diag(ones(1,n))~=1));
  X = [A(:,1) A(:,2) ones(size(A,1),1)];
  y = b;
  theta = (X'*X)\(X'*y);
  [X1,X2] = meshgrid(-range:0.1:range);
  Y = theta(1)*X1 + theta(2)*X2 + theta(3);
  surf(X1,X2,Y);
endfunction
A3=[2,3;3,5];
b3=[0;0];
n3=30;
range3=3;
regresion(A3,b3,n3,range3)
