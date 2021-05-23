function A_k = task1(image, k)
  %TODO
  A_k = double(imread(image)); %citesc imaginea
  [m n] = size(A_k);
  [U, S, V] = svd(A_k);
  V = V';
  A_k = U(1:m,1:k)*S(1:k, 1:k)*V(1:k, 1:n);
  %imshow(uint8(A_k));
endfunction