function par = paraboloide (mat, vect,n, range)
  x1 = linspace(-range, range, n);
  x2 = linspace(-range, range, n);
  [x1, x2] = meshgrid(x1, x2);
  x = [x1(:), x2(:)]; % creamos un vector columna con todas las combinaciones de x1 y x2
  %mat = eye(2); % matriz identidad de 2x2
  %vect = [0; 0]; % vector de ceros de 2x1
  y = 0.5*sum(x'.*(mat*x'), 1) + vect'*x';
  y = reshape(y, [n, n]); % reorganizamos el vector y en una matriz de 30x30
  surf(x1, x2, y); % graficamos el paraboloide
endfunction
