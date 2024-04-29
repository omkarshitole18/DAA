function arr = selectionSort(arr)
    n = length(arr);
    
    for i = 1:n-1
        minIndex = i;
        
        for j = i+1:n
            if arr(j) < arr(minIndex)
                minIndex = j;
            end
        end
        
        if minIndex ~= i
            [arr(i), arr(minIndex)] = swap(arr(i), arr(minIndex));
        end
    end
endfunction

function [a, b] = swap(a, b)
    temp = a;
    a = b;
    b = temp;
endfunction

// Example usage
function arr= generateRandomIntArray(size, minValue, maxValue)
    arr = round((maxValue - minValue + 1) * rand(1, size) + minValue - 0.5);
endfunction

sizeOfArray = input('Enter the size of the array: ');
minValue = input('Enter the minimum value: ');
maxValue = input('Enter the maximum value: ');

arr = generateRandomIntArray(sizeOfArray, minValue, maxValue);

disp('Generated Random Integer Array:');
disp(arr);
disp('Original array:');
disp(arr);

arr = selectionSort(arr);
disp('Sorted array:');
disp(arr);
