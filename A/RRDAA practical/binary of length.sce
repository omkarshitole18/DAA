function generate_binary_strings(N)
    binary_string = zeros(1, N); // Initialize binary string with zeros

    // Function to recursively generate binary strings
    function generate_binary_strings_util(index)
        if index == N
            disp(binary_string);
            return;
        end

        binary_string(index + 1) = 0;
        generate_binary_strings_util(index + 1);

        binary_string(index + 1) = 1;
        generate_binary_strings_util(index + 1);
    end

    generate_binary_strings_util(0);
end

// Example usage with N = 2
generate_binary_strings(4);
