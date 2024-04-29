function quickSortNutsAndBolts(nuts, bolts, low, high) 
    if low < high then
        
          pivotIdx = partition(nuts, low, high, bolts(high))
        
            partition(nuts, low, high, nuts(pivotIdx)) 
           
            partition(bolts, low, high, bolts(pivotIdx)) 
           
             quickSortNutsAndBolts(nuts, bolts, low, pivotIdx - 1)
              quickSortNutsAndBolts(nuts, bolts, pivotIdx + 1, high)
           end 
endfunction
 
 function pivotIdx = partition(arr, low, high, pivot)
      left = low
       for i = low:high
            if arr(i) < pivot then
                 swap(arr, i, left)
                  left = left + 1
               elseif arr(i) == pivot then 
                   swap(arr, i, high)
                    i = i - 1 
                end 
            end
             swap(arr, left, high)
              pivotIdx = left
          endfunction
function swap(arr,i,j)
    temp=arr(i)
    arr(i)=arr(j)
    arr(j)=temp
end
function matchNutsAndBolts(nuts,bolts)
    quickSortNutsAndBolts(nuts,bolts,1,length(nuts))
end

nuts=[3,1,2,4,7]              
bolts=[1,3,4,2,1]
matchNutsAndBolts(nuts,bolts)

disp("Matched Nuts And Bolts")
disp(nuts)
disp(bolts)
