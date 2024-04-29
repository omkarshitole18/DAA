function assignment = greedyFcfsJobSequencing(costMatrix)
    N = size(costMatrix, 1);
    assignment = zeros(N, 1);

    for i = 1:N
        // Worker i picks the job with the lowest cost available
        [minVal, minIndex] = min(costMatrix(i, :));
       
        // Store the job assignment for the worker
        assignment(i) = minIndex;
       
        // Ensure this job isn't selected again by any other worker
        costMatrix(:, minIndex) = %inf;
    end
endfunction

// Get user input for the number of jobs/workers
N = input("Enter the number of workers: ");

// Initialize costMatrix
costMatrix = zeros(N, N);

// Get user input for the cost matrix values
disp("Enter the cost matrix values:");
for i = 1:N
    for j = 1:N
        costMatrix(i, j) = input("Enter the cost for Worker " + string(i) + " for Job " + string(j) + ": ");
    end
end

disp("Cost Matrix:");
disp(costMatrix);

assignment = greedy


FcfsJobSequencing(costMatrix);

disp("Assignment (Worker -> Job) using Greedy FCFS:");
for i = 1:length(assignment)
     disp("Worker " + string(i) + " -> Job " + string(assignment(i)));
end       

