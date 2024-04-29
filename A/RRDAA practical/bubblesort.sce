function bubbleSort(arr)
   len= length(arr);
     for step = len-1 :-1:1
       for i=1:step
           if arr(i+1)< arr(i)
               temp =arr(i);
               arr(i)=arr(i+1);
               arr(i+1)=temp;
               
           end
           end
   end   
   disp("sorted array:");
   disp(arr);
   endfunction
arr=[100,42,37,55,10];
bubbleSort(arr)
