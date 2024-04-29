function [sequence, profit] = jobSequencing(deadlines, profits)
    n = length(deadlines);
    sequence = zeros(1, n);
    slot = zeros(1, n);
    for i = 1:n
        slot(i) = i;
    end

    for i = 1:n
        for j = min(n, deadlines(i)):-1:1
            if slot(j) != 0
                sequence(i) = slot(j);
                slot(j) = 0;
                break;
            end
        end
    end

    profit = 0;
    for i = 1:n
        if sequence(i) != 0
            profit = profit + profits(sequence(i));
        end
    end
end

// Example usage
deadlines = [2,1,2,1];
profits = [30,35,20,25];

[sequence, profit] = jobSequencing(deadlines, profits);
disp("Job sequence: ");
disp(sequence);
disp("Total profit: ");
disp(profit)



