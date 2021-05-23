% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
	% TODO K-Means code
  %fixez centroizi initiali aleator
  [N d] = size(points);
  [rp] = randperm(N);
  centroids = points(rp(1:NC), :);
  lastAssigment = zeros(N, 1);
  %stabilesc conditia pana cand centroizii nu se mai schimba
  while true
    bestAssigment = zeros(N, 1);
     mindist = Inf*ones(N, 1); 
     for k = 1:NC
       for n = 1:N %calculez distanta minima pana o gasesc pe cea potrivita
         dist = norm(points(n,:) - centroids(k, :));
         if dist < mindist(n)
           mindist(n) = dist;
           bestAssigment(n) = k; %gasesc indicele unde se afla cel mai bun centroid
         endif
       endfor
     endfor
     if all(bestAssigment == lastAssigment)
       break;
     endif
     for k = 1:NC %fixez centroidul
       centroids(k,:) = mean(points(bestAssigment == k, :));
     endfor
     lastAssigment = bestAssigment;
  endwhile
endfunction
centroids = clustering_pc(points, NC)