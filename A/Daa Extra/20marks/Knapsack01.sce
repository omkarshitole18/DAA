function knapsack(values, weights, capacity)
    n = length(values);
    dp = zeros(n + 1, capacity + 1);

    // Build the DP table
    for i = 1:n + 1
        for w = 1:capacity + 1
            if (i == 0) | (w == 0)
                dp(i, w) = 0;
                elseif weights(i) <= w
                dp(i, w) = max(dp(i - 1, w), values(i) + dp(i - 1, w - weights(i)));
                    else
                dp(i, w) = dp(i - 1, w);
                end
        end
    end

    // Reconstruct the solution
    selectedItems = [];
    i = n + 1;
    w = capacity;

    while i > 0 & w > 0
        if dp(i, w) ~= dp(i - 1, w) then
            selectedItems = [i - 1, selectedItems];
            i = i - 1;
            w = w - weights(i);
        else
            i = i - 1;
        end
    end

    disp("Selected items for maximum value:");
    disp(selectedItems);
    disp("Maximum value: " + dp(n + 1, capacity));
end

// Example usage:
values = [60, 100, 120];
weights = [10, 20, 30];
capacity = 50;

knapsack(values, weights, capacity);

