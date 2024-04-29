
function linear_search(arr, num)
    n = length(arr);
    found = -1;

    for i = 1:n
        if arr(i) == num
            found = i;
            break;
        end
    end

    if found == -1
        disp("Number not found in the array.")
    else
        disp("Number found at position: " + string(found))
    end
end

//Input 5 numbers from the user
//for i = 1:5
  //  arr(i) = input("Enter number " + string(i) + ": ");
//end
function arr= generateRandomIntArray(size, minValue, maxValue)
    arr = round((maxValue - minValue + 1) * rand(1, size) + minValue - 0.5);
endfunction

sizeOfArray = input('Enter the size of the array: ');
minValue = input('Enter the minimum value: ');
maxValue = input('Enter the maximum value: ');

arr = generateRandomIntArray(sizeOfArray, minValue, maxValue);

disp('Generated Random Integer Array:');
disp(arr);

//Input the number to find
num = input("Enter the number to find: ");

//Call the linear_search function to find the number
linear_search(arr, num)




