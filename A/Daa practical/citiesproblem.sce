function tsp_nearest_neighbor(cities)

    n=size(cities,1)//no.of cities

    tour=zeros(1,n)//initialize the tour

    visited=zeros(1,n)//track visited cities

    current_city=1

    tour(1)=current_city

    visited(1)=1

   

    for i=2:n

        min_distance=%inf

        for j=1:n

            if j~=current_city && visited(j)==0

                distance = norm(cities(current_city,:)-cities(j,:))

                if distance<min_distance

                    min_distance=distance

                    tour(i)=j

                end

            end

    end

    visited(tour(i))=1

    current_city=tour(i)

end

tour(n+1)=tour(1)

total_distance=0

for i=1:n

    total_distance=total_distance+norm(cities(tour(i),:)-cities(tour(i+1),:))

end

 

disp("Tour order:")

disp(tour)

disp(["Total tour length:",string(total_distance)])

end

 

cities=[0 15 1;

        0 10 2;

        0 20 3;

        1 35 2;

        1 25 3;

        2 30 2]

tsp_nearest_neighbor(cities)
