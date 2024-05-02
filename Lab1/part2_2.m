% Define the rectangular pulse function
function x = rect(t)
  x = (t >= -0.5 & t < 0.5);
 endfunction

x2 = rect(t - 1);
plot(t, x2);

