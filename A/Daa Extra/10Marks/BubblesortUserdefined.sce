function x=sort(n,y)
disp("Enter numbers")
for i = 1:n
    x(i) = input('')
end

swapped = 0
    while swapped == 0
        swapped = 1
        for i = 1:n-1
            if x(i+1) < x(i) then
                temp = x(i)
                x(i) = x(i+1)
                x(i+1) = temp
                swapped = 0
            end
        end
    end
disp("sorted values:")    
endfunction

a=input("Enter the number of values to sort: ")
disp(sort(a))


