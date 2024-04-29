function [minCost, minTree] = primMST(graph)
    n = size(graph, 1);
    visited = zeros(1, n);
    minCost = 0;
    minTree = zeros(n, n);
    
    visited(1) = 1;
    numEdges = 0;
    
    while numEdges < n-1
        minWeight = %inf;
        u = 0;
        v = 0;
        
        for i = 1:n
            if visited(i) == 1
                for j = 1:n
                    if visited(j) == 0 && graph(i, j) < minWeight
                        minWeight = graph(i, j);
                        u = i;
                        v = j;
                    end
                end
            end
        end
        
        visited(v) = 1;
        minTree(u, v) = minWeight;
        minTree(v, u) = minWeight;
        minCost = minCost + minWeight;
        numEdges = numEdges + 1;
    end
end

// Example usage
graph = [0 2 0 6 0;
         2 0 3 8 5;
         0 3 0 0 7;
         6 8 0 0 9;
         0 5 7 9 0];
[minCost, minTree] = primMST(graph);
disp("Minimum Cost: " + string(minCost));
disp("Minimum Cost Spanning Tree:");
disp(minTree);
