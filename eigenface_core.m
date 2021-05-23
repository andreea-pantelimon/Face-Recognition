function [m A eigenfaces pr_img] = eigenface_core(database_path)
  T = [];
  for i = 1:10 %voi citi fiecare imagine in parte
    name = strcat("./", database_path, "/", num2str(i), ".jpg");
    A = double(rgb2gray(imread(name)));
    A = A';
    A_v = A(:); %transform in vector coloana
    T = [T A_v]; %voi adauga fiecare vecctor coloana obtinut in matrice T
  endfor
  [o p] = size(T);
  m = [];
  for i = 1:o
    S = 0;
    for j = 1:p
      S += T(i, j);
    endfor
    m(i) = S / p;
  endfor
  m = m';
  A = T - m;
  W = A' * A;
  [V S]= eig(W);
  [k l] = size(V);
  for i = 1:l
    if(S(i,i) < 1)
      V(:, i) = []; %voi sterge coloanele cu valorile proprii mai mici ca unu
    endif
  endfor
  eigenfaces = A * V;
  pr_img = eigenfaces' * A;
endfunction