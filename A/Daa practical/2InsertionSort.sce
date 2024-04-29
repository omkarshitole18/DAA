
 function sortedarray=insertionSort(arr)

    n=length(arr)

    for i=2:n

        temp=arr(i)

        j=i-1

               while (j>0 && arr(j)>temp)

            arr(j+1)=arr(j)

            arr(j)=temp

            j=j-1

        end

    end

    sortedarray=arr

endfunction

 numbers=[5,2,8,3,9]

disp("Before Sorting Array:")

disp(numbers)

sortedarray=insertionSort(numbers)

disp("After Sorting Array:")

disp(sortedarray)
