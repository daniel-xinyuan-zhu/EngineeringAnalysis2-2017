% Xinyuan (Daniel) Zhu
% Engineering Analysis II Section 22
% January 9th 2017

% This program calculates the total cost with two factors taken into
% account: Tension of the cable and length of the cable used. The costs
% corresponding to the x and z input are then plotted on a surface plot.
% This corresponds to part 2 of the design project.

dim = size(-5:0.1:5, 2);
cost = zeros(dim, dim); % matrix to store all costs 
counter = 1;
counterTwo = 1;
Xlowest = 0; % index of the lowest cost 
Zlowest = 0; % index of the lowest cost 
double LowestCost; % Lowest cost
LowestCost= 100000000.0;
b = [0; 981; 0]; % default b matrix values 
x = -1; 
while x < 5.1 
    z = -1;
    while z < 5.1 
        cost(counter,counterTwo) = calcCostAndTensions(x,z);
        if (cost(counter, counterTwo) < LowestCost && cost(counter, counterTwo) > 0)
            LowestCost = cost(counter, counterTwo);
            Xlowest = x;
            Zlowest = z;
        end;
        counter = counter + 1;
        z = z + 0.05;
    end;
    x = x + 0.05;
    counterTwo = counterTwo+1;
end;

%Print the lowest cost as well as the corresponding values of x and z
fprintf('\nThe lowest cost is $%5.2f and occurs at x = %2.2f and z = %2.2f. \n', LowestCost, Xlowest, Zlowest);

%Plot x, z, and the corresponding cost for each pair of points 
figure;
x = -1:0.1:3;
z = -1:0.1:3;
surf(x,z,calcCostAndTensions(x,z));
xlabel('x coordinate');
ylabel('z coordinate');
zlabel('cost');
title('Cost vs Position Of Point B');