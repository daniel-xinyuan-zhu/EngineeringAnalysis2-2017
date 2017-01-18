   function [TAC] = calcTenAC(x,z)
   % This function calculates the corresponding tensions in the cable AB given a range of x
   % and z values.
   
   TAC = zeros(size(x,2), size(z,2));
   counterTwo = 1; 
   while counterTwo <= size(z,2);
       counter = 1; 
       while counter <= size(x,2);
           TAC(counterTwo,counter) = (-981*sqrt(29))/2 + (51012*sqrt(29) + 25506*sqrt(29)*x(1,counter))/((104-8*z(1,counterTwo)^2)+40*x(1,counter));  
           counter = counter+1;
       end; 
       counterTwo = counterTwo+1;
   end;