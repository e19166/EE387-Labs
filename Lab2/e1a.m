figure;
title('Ex 01 : A');
hold on;

% Different beta values
b = [-1.1, -0.5, 0.5, 1.1];
n = 1:20;

for idx = 1:4
  x = 10 * (b(idx).^n);
  subplot(2, 2, idx);
  stem(n, x);
  xlabel('x');
  ylabel('y');
  labels = ["\beta < -1", "-1 < \beta < 0", "0 < \beta < 1","1 < \beta"];
  title(labels(idx));
end

