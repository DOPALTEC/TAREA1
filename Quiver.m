function par = paraboloide (mat, vect,n,range)
  x1 = linspace(-range, range, n);
  x2 = linspace(-range, range, n);
  [x1, x2] = meshgrid(x1, x2);
  x = [x1(:), x2(:)]; % creamos un vector columna con todas las combinaciones de x1 y x2
  %mat = eye(2); % matriz identidad de 2x2
  %vect = [0; 0]; % vector de ceros de 2x1
  y = 0.5*sum(x'.*(mat*x'), 1) + vect'*x';
  y = reshape(y, [n, n]);
  [u,v,w]=surfnorm (x1,x2,y/250);
  h=quiver3(x1,x2,y,u,v,w);
  set(h,"maxheadsize", 0.05);
  hold on;
  surf (x1,x2,y);
endfunction
