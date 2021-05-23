function task5()
  %primul grafic
  A_k = double(imread('in/images/image4.gif')); %citesc imaginea pentru care doresc sa fac grafic
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
  D = diag(S);
  D = sort(D, 'descend');
  figure(1) %folosesc figure ca sa imi apara toate cele patru grafice
  plot(D, "b", "markersize", 20);
  
  %al doilea grafic
  [m n] = size(Z);
  k = [1:19 20:20:99 100:30:min(m, n)];
  I = [];
  [o p] = size(k);
  for j = 1:p
     s1 = 0;
     s2 = 0;
     for i = 1:k(j)
       s1 += S(i, i);
     endfor
     for i = 1:min(m,n)
       s2 += S(i,i);
     endfor
     I(j) = s1 / s2;
   endfor
   figure(2)
   plot(k, I, "b", "markersize", 20);

   %al treilea grafic
   E = [];
   for l = 1:p
     s3 = 0;
     A = task3('in/images/image4.gif', k(l)); %aplic task3 pentru imaginea dorita
     [m n] = size(A);
     for i = 1:m
       for j = 1:n
         s3 += (A_k(i,j) - A(i,j))^2;
       endfor
     endfor
     E(l) = s3 / (m*n);
   endfor
   figure(3)
   plot(k, E, "b", "markersize", 20);
   
   %al patrulea grafic
   R = [];
   for i = 1:p
     R(i) = (2*k(i) + 1) / n;
   endfor
   figure(4)
   plot(k, R, "b", "markersize", 20);
endfunction
task5()