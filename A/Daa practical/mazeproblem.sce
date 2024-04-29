function move(m, n, x, y, maze)

    maze(x, y) = 2;

    disp(maze);


    if x == goal(1) & y == goal(2) then

        return;

    end

      if x < m & maze(x + 1, y) == 1 then


        move(m, n, x + 1, y, maze);

    end

      if y < n & maze(x, y + 1) == 1 then


        move(m, n, x, y + 1, maze);

    end

    if y > 1 & maze(x, y - 1) == 1 then

        move(m, n, x, y - 1, maze);

    end

      if x > 1 & maze(x - 1, y) == 1 then


        move(m, n, x - 1, y, maze);

    end

endfunction

function backtrack(x, y, maze)


    maze(x, y) = 1;

    disp(maze);

      if x == start(1) & y == start(2) then


        return;

    end

      if x < m & maze(x + 1, y) == 0 then


        backtrack(x + 1, y, maze);

    end

   

    if y < n & maze(x, y + 1) == 0 then

        backtrack(x, y + 1, maze);

    end

   

    if y > 1 & maze(x, y - 1) == 0 then

        backtrack(x, y - 1, maze);

    end

   

    if x > 1 & maze(x - 1, y) == 0 then

        backtrack(x - 1, y, maze);

    end

endfunction

 

maze = [1, 0, 0, 0;

        1, 1, 1, 1;

        0, 1, 0, 1;

        1, 0, 1, 1];

start = [1, 1];

goal = [4, 4];

n = size(maze, 1);

m = size(maze, 2);

disp(maze);

 

move(m, n, start(1), start(2), maze);

backtrack(goal(1), goal(2), maze);
