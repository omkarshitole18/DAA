function sortedArray= insertionSort(arr)
    len = length(arr)
    for i= 2:len
        key =arr(i);
        j = i-1;
        while(j>0&&arr(j)>key)
            arr(j+1)=arr(j);
            j=j-1;
           end
           arr(j+1)=key;
       end
       sortedArray=arr;
endfunction

arr=[5,4,3,2,1]
a=insertionSort(arr);
disp(a);
