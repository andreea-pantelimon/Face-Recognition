% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
	% TODO graphical representation coded here
  NC = size(centroids,1);
  [N d] = size(points);
  bestAssigment = zeros(N, 1);
  mindist = Inf*ones(N, 1);
  for k = 1:NC
       for n = 1:N
         dist = norm(points(n,:) - centroids(k, :));
         if dist < mindist(n)
           mindist(n) = dist;
           bestAssigment(n) = k;
         endif
       endfor
   endfor
   color = ['red';'yellow';'blue';'violet';'brown'];
   for k = 1:NC
      hold on
      clr = points(bestAssigment==k, :);
      scatter3(clr(:,1), clr(:,2), clr(:,3), 100, color(k), 'filled')
      %scatter3(centroids(:,1), centroids(:,2), centroids(:,3), clr, 100, 'Marker','o', 'LineWidth',3)
      hold off
      view(3), axis vis3d, box on, rotate3d on
      xlabel('x'), ylabel('y'), zlabel('z')
   endfor
end