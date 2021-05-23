% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	cost = 0; 
	% TODO compute clustering solution cost
  %aflu care este distanta minima pentru a determina punctele din jurul centroidului
  NC = size(centroids,1);
  [N d] = size(points);
  for i=1:N
   bestAssigment = zeros(N, 1);
   mindist = norm(points(i,:) - centroids(1,:));
   for k = 2:NC
     dist = norm(points(i,:) - centroids(k,:));
     if dist < mindist
       mindist = dist;
     endif
   endfor
   cost += mindist; %fac costul
  endfor
endfunction
cost = compute_cost_pc(points, centroids)