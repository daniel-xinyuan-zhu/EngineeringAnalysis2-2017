  function [TAB] = calcTenAB(x,z)
  
  % This function calculates the corresponding tensions in the cable AB given a range of x
  % and z values.
  
  TAB = zeros(size(x,2), size(z,2));
  counterTwo = 1; 
  while counterTwo <= size(z,2);
      counter = 1; 
      while counter <= size(x,2);
          TAB(counterTwo,counter) = (12753*sqrt(x(1,counter)^2+z(1,counterTwo)^2+16))/(52-4*z(1,counterTwo)+20*x(1,counter));
          counter = counter+1;
      end; 
      counterTwo = counterTwo+1;
  end;

