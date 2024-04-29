function binarySearch(x,no)

    n=length(x)

    low=0

    high=n

    mid=0

    result=-1

       for i=1:n-1

        swapping=0

        for j=1:n-i

            if x(j)>x(j+1)

                temp=x(j)

                x(j)=x(j+1)

                x(j+1)=temp

                swapping=1

            end

        end

        if swapping ==0 then

        break

    end

end

       while low<=high

        mid=floor((low+high)/2)

        if (no==x(mid))

            result=1

            break

        elseif (no<x(mid))

            high=mid-1

        else low=mid+1

        end

    end

    if (result ==1)

        disp("Sorted Input Array:")

        disp(x)

        disp("Element found at position :"+string(mid))

    else

        disp("Number not found ")

        break

    end

endfunction

 x=[]

for i=1:5

    x(i)=input("Enter element :"+string(i)+" :")

end

no=input("Enter number to be searched :")

binarySearch(x,no)
