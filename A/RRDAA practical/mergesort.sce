function mergedSort = merge(left, right)
    mergedSort = [];
    
    while length(left) > 0 && length(right) > 0
        if left(1) < right(1)
            mergedSort = [mergedSort, left(1)];
            left = left(2:$);
        else
            mergedSort = [mergedSort, right(1)];
            right = right(2:$);
        end
    end
    
    mergedSort = [mergedSort, left, right];
endfunction

function sortedArray = mergedSort(arr)
    if length(arr) <= 1 then
        sortedArray = arr;
    else
        middle = floor(length(arr) / 2);
        left = arr(1:middle);
        right = arr(middle + 1:$);
        sortedArray = merge(mergedSort(left), mergedSort(right));
    end
endfunction

arr = [2, 4, 6, 11, 7];
n = length(arr);
sortedArray = mergedSort(arr);
disp(sortedArray);
