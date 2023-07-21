x = [20 30 40 50];
y = [512 390 360 243];
xp = 30;
n = length(x);
sum = 0;
sum1 = 0;
product = 1;
for i = 1 : n
    for j = 1 : n
        if i ~= j
          fprintf('Iter i: %d \t Iter j: %d\n',i,j)
          fprintf('********************************\n')
          fprintf('xi: %d yi: %d \t xj:%d  yj:%d \n',x(i),y(i),x(j),y(j));
          lasTerm = (xp - x(j)) /(x(i) - x(j));
          product = lasTerm * product;
          fprintf('_________________________________\n')
        end      
    end
    sum = sum + y(i) * product;
    %sum1 = sum1 + sum;
    if j == n
              product = 1;
    end
end
fprintf('Yp: %d', sum);