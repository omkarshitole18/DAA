function sortedArr = countingSort(arr)
    minVal = min(arr);
    maxVal = max(arr);
    range = maxVal - minVal + 1;
    
    countArray = zeros(1, range);
    outputArray = zeros(1, length(arr));
    
    for i = 1:length(arr)
        countArray(arr(i) - minVal + 1) = countArray(arr(i) - minVal + 1) + 1;
    end
    
    for i = 2:range
        countArray(i) = countArray(i) + countArray(i - 1);
    end
    
    for i = length(arr):-1:1
        outputArray(countArray(arr(i) - minVal + 1)) = arr(i);
        countArray(arr(i) - minVal + 1) = countArray(arr(i) - minVal + 1) - 1;
    end
    
    sortedArr = outputArray;
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

sortedArr = countingSort(arr);
disp('Sorted array:');
disp(sortedArr);


