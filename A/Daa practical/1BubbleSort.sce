function sortedarray=bubble_sort(arr)

    n=length(arr)

    for i=1:n-1

        swapping=0

        for j=1:n-i

            if arr(j)>arr(j+1)

                temp=arr(j)

                arr(j)=arr(j+1)

                arr(j+1)=temp

                swapping=1

            end

        end

        if swapping ==0 then

            break

    end

    sortedarray=arr

end

endfunction

 numbers=[5,7,2,3,1,9,6,4,10,9]

 sortedarray=bubble_sort(numbers)

disp("Sorted Array :")

disp(sortedarray)
