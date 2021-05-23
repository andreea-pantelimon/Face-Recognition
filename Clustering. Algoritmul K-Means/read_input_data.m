% reads cluster count and points from input files 
function [NC points] = read_input_data(file_params, file_points)
	
	% set these values correctly
	NC = 0;
	points = [];
  
	% TODO read NC
    NC = load(file_params); %citesc numarul de clustere
	% TODO read points
   load(file_points); %citesc punctele cu care voi lucra
endfunction
[NC points] = read_input_data("cls/cluster_1.param","cls/cluster_1.points")
