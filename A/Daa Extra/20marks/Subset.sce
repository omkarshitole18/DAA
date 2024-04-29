function subsetSum(set, n, targetSum)
    dp = zeros(n + 1, targetSum + 1);

    // Initialize the first column
    for i = 1:n + 1
        dp(i, 1) = 1;
    end

    // Build the DP table
    for i = 2:n + 1
        for j = 2:targetSum + 1
            dp(i, j) = dp(i - 1, j) | (j >= set(i - 1) & dp(i - 1, j - set(i - 1)));
        end
    end

    // Check if a subset with the given sum exists
    if dp(n + 1, targetSum) == 0 then
        disp("No subset found with the given sum.");
        return;
    end

    // Reconstruct the subset
    subset = [];
    i = n + 1;
    j = targetSum;
    while (i > 1) & (j > 0)
        while i > 1 & (dp(i, j) == dp(i - 1, j))
            i = i - 1;
        end

        if i > 1
            subset = [set(i - 1), subset];
            j = j - set(i - 1);
        end
        i = i - 1;
    end

    disp("Subset with the given sum:");
    disp(subset);
end

// Example usage:
S = [1, 2, 5, 6, 8];
d = 9;

subsetSum(S, length(S), d);


