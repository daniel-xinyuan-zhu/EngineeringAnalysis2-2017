function [cost] = calcCostAndTensions (x, z)

%This function takes in a range of x and z values and returns a matrix with
%the corresponding cost of each x and z pair of input.

cost = zeros(size(x,2), size(z,2));
counterTwo = 1; 
while counterTwo <= size(z,2);
    counter = 1; 
    while counter <= size(x,2);
        lengthAB = sqrt((-x(1,counter))^2 + (-4)^2 + (-z(1,counterTwo))^2); % length of the rope 
        cost(counterTwo,counter) = lengthAB * calcTenAB(x(1,counter),z(1,counterTwo)); %calculate cost
        counter = counter+1;
    end; 
    counterTwo = counterTwo+1;
end;
