function [min_dist output_img_index] = face_recognition(image_path, m, A, eigenfaces, pr_img)
  A = double(rgb2gray(imread(image_path))); %citesc imaginea
  A = A';
  A_v = A(:);
  A_v = A_v - m;
  [o p] = size(pr_img);
  PrTestImg = eigenfaces' * A_v;
  min_dist = norm(PrTestImg - pr_img(:, 1)); %fixez distanta minima pentru prima imagine
  output_img_index=1;
  for i = 2 : p 
    d = norm(PrTestImg - pr_img(:, i)); %dupa care compar fiecare imagine pana cand gasesc min_dist
    if(d < min_dist)
      min_dist = d;
      output_img_index = i; %voi salva indexul pentru distanta minima
    endif
  endfor
endfunction