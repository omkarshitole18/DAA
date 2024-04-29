function assignment = greedyFcfsJobSequencing(costMatrix)

    N = size(costMatrix, 1);

    assignment = zeros(N, 1);

     for i = 1:N

        [minVal, minIndex] = min(costMatrix(i, :));

        assignment(i) = minIndex;

        costMatrix(:, minIndex) = %inf;

    end

endfunction

N = input("Enter the number of workers: ");

costMatrix = zeros(N, N);

disp("Enter the cost matrix values:");

for i = 1:N

    for j = 1:N

        costMatrix(i, j) = input("Enter the cost for Worker " + string(i) + " for Job " + string(j) + ": ");

    end

end

disp("Cost Matrix:");

disp(costMatrix);msc404

assignment = greedyFcfsJobSequencing(costMatrix);

disp("Assignment (Worker -> Job) using Greedy FCFS:");

for i = 1:length(assignment)

disp("Worker " + string(i) + " -> Job " + string(assignment(i)));

end 
