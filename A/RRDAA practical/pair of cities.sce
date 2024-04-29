function tour = tsp_nearest_neighbor(cities, dist)
n = size(cities, 1);
tour = zeros(n, 1);
visited = zeros(n, 1);
Inf=200;
current_city = 1;
tour(1) = current_city;
visited(current_city) = 1;
for i = 2:n
min_dist = Inf;
next_city = -1;
for j = 1:n
if (j ~= current_city && visited(j) == 0 && dist(current_city, j) < min_dist)
min_dist = dist(current_city, j);
next_city = j;
end
end
current_city = next_city;
tour(i) = current_city;
visited(current_city) = 1;
end
tour = [tour; tour(1)]; 
end
cities = [1, 2; 3, 4; 5, 6; 7, 8]; 
dist = [0, 2, 3, 4; 2, 0, 5, 6; 3, 5, 0, 7; 4, 6, 7, 0]; 
tour = tsp_nearest_neighbor(cities, dist);
disp(tour);
