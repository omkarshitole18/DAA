function linear_search(arr,num)

    n=length(arr)

    found=-1

    for i=1:n

        if arr(i) ==num

            found=1

            break

         end

    end

    if found == -1 then

        disp("Element is not found. ")

    else
disp("Element is found at position "+string(i)+":")

    end

endfunction

arr=[]

for i=1:5

    arr(i)=input("Enter Number :"+string(i)+":")

end

num=input("Enter number to be searched :")

linear_search(arr,num)

