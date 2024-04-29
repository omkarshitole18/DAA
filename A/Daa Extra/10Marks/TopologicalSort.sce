function [sorted, topo_order] = topologicalSort(adj_matrix)
    topo_order = []
    n = size(adj_matrix, 1)
    
    // Step 1: Count incoming edges for each node
    incoming_edges = zeros(1, n)
    for i = 1:n do
        for j = 1:n do
            incoming_edges(i) = incoming_edges(i) + adj_matrix(j, i)
        end
    end
    
    // Step 2: Find nodes with no incoming edges
    nodes_with_no_incoming_edges = []
    for i = 1:n do
        if incoming_edges(i) == 0 then
            nodes_with_no_incoming_edges = [nodes_with_no_incoming_edges, i]
        end
    end
    
    // Step 3: Perform topological sort
    while length(nodes_with_no_incoming_edges) > 0 do
        node = nodes_with_no_incoming_edges(1)
        nodes_with_no_incoming_edges = nodes_with_no_incoming_edges(2:length(nodes_with_no_incoming_edges))
        topo_order = [topo_order, node]
        
        // Reduce incoming edgecount for nodes adjacent to 'node'
        for i = 1:n do
            if adj_matrix(node, i) == 1 then
                incoming_edges(i) = incoming_edges(i) - 1
                if incoming_edges(i) == 0 then
                    nodes_with_no_incoming_edges = [nodes_with_no_incoming_edges, i]
                end
            end
        end
    end
    
    // Step 4: Check for cycles
    if length(topo_order) < n then
        sorted = "Cyclic graph"
    else
        sorted = "Topological sorting: " + string(topo_order)
    end
endfunction

// define the adjacency matrix for the directed acyclic graph (DAG)
adj_matrix = [0, 1, 1, 0, 0;
              0, 0, 1, 1, 0;
              0, 0, 0, 1, 1;
              0, 0, 0, 0, 1;
              0, 0, 0, 0, 0]

// perform topological sorting
[sorted, topo_order] = topologicalSort(adj_matrix)

disp( topo_order )



