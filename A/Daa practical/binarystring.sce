function generateBinaryStrings(N)

      function generateStringsHelper(N, prefix)

        if N==0 then

            disp(prefix)

        else

            generateStringsHelper(N-1,prefix+'0')

            generateStringsHelper(N-1,prefix+'1')

            end

endfunction

if N > 0

    generateStringsHelper(N,"")

else

    disp("N must be a positive integer.")

end

end

N=3

generateBinaryStrings(N)
