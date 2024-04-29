function sortedArray=mergeSort(arr,start,last)
    if start<last
        mid = floor((start+last)/2);
        left = mergeSort(arr,start,mid);
        right = mergeSort(arr,mid+1,last);
        sortedArray = merge(left,right);
    else
        sortedArray = arr(start);
    end
endfunction
function mergedArray = merge(left,right)
    i=1;
    j=1;
    k=1;
    mergedArray = zeros(1,length(left)+length(right));
    while i<=length(left) && j<=length(right)
        if left(i)<right(j)
            mergedArray(k) = left(i);
            i=i+1;
        else
            mergedArray(k) = right(j);
            j=j+1;
        end
        k=k+1;
    end
    while i<= length(left)
        mergedArray(k)=left(i);
        i=i+1;
        k=k+1;
    end
    while j<= length(right)
        mergedArray(k)=right(j);
        j=j+1;
        k=k+1;
    end
endfunction
numbers=[12,15,11,5,6];
disp("Original Array :")
disp(numbers)
sortedNumbers =mergeSort(numbers,1,length(numbers));
disp("Sorted Array :")
disp(sortedNumbers);

