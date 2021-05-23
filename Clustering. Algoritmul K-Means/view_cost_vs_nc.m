function view_cost_vs_nc(file_points)
	% TODO compute cost for NC = [1..10] and plot 
  costtotal = [];
  load("cls/cluster_2.points");
  for NC = 1:10
    centroids = clustering_pc(points, NC);
    cost = compute_cost_pc(points, centroids);
    costtotal(NC) = cost; 
  endfor
    plot(costtotal, "b", "markersize", 20);
endfunction