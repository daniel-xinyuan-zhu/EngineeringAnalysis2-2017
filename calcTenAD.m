    function [TAD] = calcTenAD(x,z)
    % This function calculates the corresponding tensions in the cable AB given a range of x
    % and z values.
    
    TAD = zeros(size(x,2), size(z,2));
    counterTwo = 1;
    while counterTwo <= size(z,2);
        counter = 1; 
        while counter <= size(x,2);
            TAD(counterTwo,counter) = (sqrt(29)/3)*(((2*calcTenAC(x(1,counter),z(1,counterTwo)))/sqrt(29))-(z(1,counterTwo)*calcTenAB(x(1,counter),z(1,counterTwo)))/sqrt(x(1,counter)^2+z(1,counterTwo)^2+16));
            counter = counter+1;
        end; 
        counterTwo = counterTwo+1;
    end;