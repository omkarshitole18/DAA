function breadthFirstSearch(graph, startNode)

    visited = zeros(1, size(graph, 1));
    queue = [];

    visited(startNode) = 1;
    queue = [queue, startNode];

    while ~isempty(queue)
        currentNode = queue(1);
        queue = queue(2:$);

        disp(currentNode);// % Replace with your desired functionality

        neighbors = find(graph(currentNode, :) == 1);
        for i = 1:length(neighbors)
            neighbor = neighbors(i);
            if visited(neighbor) == 0
                visited(neighbor) = 1;
                queue = [queue, neighbor];
            end
        end
    end

endfunction

// Example usage:

graph = [0 1 1 0 0;
         1 0 1 1 0 ;
         1 1 0 0 1;
         0 1 0 0 1;
         0 0 1 1 0  ];

startNode = 1;
breadthFirstSearch(graph, startNode)
