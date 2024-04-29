function insertionSort(arr)
    n = length(arr)
    
    for i = 1:n
        key = arr(i)
        j = i - 1
        
        while j > 0 && arr(j) > key
            arr(j + 1) = arr(j)
            j = j - 1
        end
        
        arr(j + 1) = key
    end
    
    disp(arr)
endfunction

//numbers = [5, 3, 1, 4, 2]
for i=1:10
    numbers(i)=input("enter a no ")
end
insertionSort(numbers)


