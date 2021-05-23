function task2()
   %primul grafic
   A_k = double(imread('in/images/image4.gif')); %citesc imaginea dorita
   [U S V] = svd(A_k);
   R = diag(S);
   R = sort(R, 'descend');
   figure(1) %am sa folosesc figure ca pe ecran sa imi apara toate graficele
   plot(R, "b", "markersize", 20);
   
   %al doilea grafic
   [m n] = size(A_k);
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
     A = task1('in/images/image4.gif', k(l)); %aplic task 1 pentru imaginea dorita
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
     R(i) = (m*k(i) + n*k(i) + k(i)) / (m*n);
   endfor
   figure(4)
   plot(k, R, "b", "markersize", 20);
endfunction
task2()