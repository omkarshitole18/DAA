function dfs(graph, start)
    stack = [];
    visited = zeros(1, size(graph, 1));
    
    stack = [stack, start];
    visited(start) = 1;
    
    while ~isempty(stack)
        current = stack();
        stack = stack(1:$-1);
        
        disp(current);  // Print or process the current node
        
        neighbors = find(graph(current, :));  // Find neighbors of current node
        
        for i = 1:length(neighbors)
            neighbor = neighbors(i);
            
            if visited(neighbor) == 0
                stack = [stack, neighbor];
                visited(neighbor) = 1;
            end
        end
    end
end

// Example usage:

// Define a graph as an adjacency matrix
G = [0 1 1 0 0;
         1 0 1 1 0 ;
         1 1 0 0 1;
         0 1 0 0 1;
         0 0 1 1 0];

startNode = 1;  // Start node for DFS

// Call the DFS function
dfs(G, startNode);

