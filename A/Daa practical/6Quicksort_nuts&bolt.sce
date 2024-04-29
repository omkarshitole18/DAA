function quickSortNutsAndBolts(nuts,bolts,low,high)

    if low < high then

        pivotid = partition(nuts,low, high,bolts(high))

        partition(nuts,low,high,nuts(pivotid))


        partition(bolts,low,high,bolts(pivotid))

        quickSortNutsAndBolts(nuts,bolts,low,pivotid-1)

        quickSortNutsAndBolts(nuts,bolts,pivotid+1,high)      


    end

endfunction

function pivotid = partition(arr,low,high,pivot)

    left=low

    for i=low:high

        if arr(i)<pivot

            swap(arr,i,left)

            left=left+1

        elseif arr(i) == pivot

            swap(arr,i,high)

            i=i-1;

        end

    end

    swap(arr,left,high)

    pivotid=left;

endfunction

function swap(arr,i,j)

    temp =arr(i)

    arr(i)=arr(j)

    arr(j)=temp

endfunction

function matchNutsAndBolts(nuts,bolts)

    quickSortNutsAndBolts(nuts,bolts,1,length(nuts))

endfunction

nuts = [3,6,2,4];

bolts = [1,6,3,4];

matchNutsAndBolts(nuts,bolts)

disp("Matched Nuts and Bolts :")


disp(nuts)

disp(bolts)

 

 




