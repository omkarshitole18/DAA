function arr = quickSort(arr, low, high)
    if low < high
        [arr, pivotIndex] = partition(arr, low, high);
        arr = quickSort(arr, low, pivotIndex - 1);
        arr = quickSort(arr, pivotIndex + 1, high);
    end
endfunction

function [arr, pivotIndex] = partition(arr, low, high)
    pivot = arr(high);
    i = low - 1;

    for j = low:high-1
        if arr(j) <= pivot
            i = i + 1;
            [arr(i), arr(j)] = swap(arr(i), arr(j));
        end
    end

    [arr(i+1), arr(high)] = swap(arr(i+1), arr(high));
    pivotIndex = i + 1;
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
disp(arr)
disp('Original array:');
disp(arr);

arr = quickSort(arr, 1, length(arr));
disp('Sorted array:');
disp(arr);
