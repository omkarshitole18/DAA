function chromatic_number = graph_coloring(adjacency_matrix)

    num_vertices = size(adjacency_matrix, 1);

    coloring = zeros(1, num_vertices);

    num_colors = 0;

 

    for vertex = 1:num_vertices

        available_colors = zeros(1, num_vertices);

 

        for neighbor = 1:num_vertices

            if adjacency_matrix(vertex, neighbor) == 1

                if coloring(neighbor) > 0

                    available_colors(coloring(neighbor)) = 1;

                end

            end

        end

 

        for color = 1:num_vertices

            if available_colors(color) == 0

                coloring(vertex) = color;

                num_colors = max(num_colors, color);

                break;

            end

        end

    end

 

    chromatic_number = num_colors;

end

 

adjacency_matrix = [

    0 1 1 1;

    1 0 1 0;

    1 1 0 1;

    1 0 1 0

];

 

chromatic_number = graph_coloring(adjacency_matrix);

disp('Minimum number of time slots required: ')

disp(chromatic_number)

 


