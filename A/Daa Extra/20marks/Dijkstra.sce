

function printSolution(dist)
    printf('Vertex \t Distance from Source\n');
    for node = 1:length(dist)
        printf('%d \t\t %d\n', node-1, dist(node));
    end
endfunction

function min_index = minDistance(dist, sptSet)
   
    min = 1e7;

    
    for v = 1:length(dist)
        if dist(v) < min && ~sptSet(v)
            min = dist(v);
            min_index = v;
        end
    end
endfunction

function dijkstra(graph, src)
    numVertices = size(graph, 1);
    dist = ones(1, numVertices) * 1e7;
    dist(src + 1) = 0;
    sptSet = zeros(1, numVertices);

    for cout = 1:numVertices
        u = minDistance(dist, sptSet);

        
        sptSet(u) = 1;

       
        for v = 1:numVertices
            if (graph(u, v) > 0 && ~sptSet(v) && dist(v) > dist(u) + graph(u, v))
                dist(v) = dist(u) + graph(u, v);
            end
        end
    end

    printSolution(dist);
endfunction


graph = [
    0 4 0 0 0 0 0 8 0;
    4 0 8 0 0 0 0 11 0;
    0 8 0 7 0 4 0 0 2;
    0 0 7 0 9 14 0 0 0;
    0 0 0 9 0 10 0 0 0;
    0 0 4 14 10 0 2 0 0;
    0 0 0 0 0 2 0 1 6;
    8 11 0 0 0 0 1 0 7;
    0 0 2 0 0 0 6 7 0
];

dijkstra(graph, 1);
