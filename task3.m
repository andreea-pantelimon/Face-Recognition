function [A_k S] = task3(image, k)
  A_k = double(imread(image)); %citesc imaginea
  A = A_k;
  [m n] = size(A);
  b = zeros(1, m);
  a = zeros(1, n);
  u = zeros(m, 1);
  for j = 1:n
    b = A(1:m, j);
  endfor
  for i = 1:m
    s = 0;
    a = A(i, 1:n);
    for j = 1:n
      s += a(:, j);
    endfor
    u(i) = s/n;
    A(i, :) = A(i, :) - u(i);
  endfor
  Z = A' * (1/sqrt(n - 1));
  [U S V] = svd(Z);
  W = V(:, 1:k);
  Y = W' *A;
  A_k = W*Y + u(:, 1);
endfunction