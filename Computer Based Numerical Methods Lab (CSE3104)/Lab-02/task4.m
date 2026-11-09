x=0.1234*10^4;
y=0.1232*10^4;

n = 4;
z=x-y;
dx=0.5*10^(-n)*abs(x);
dy=0.5*10^(-n)*abs(y);
dz=dx+dy;
relative_error=dz/abs(z);
percentage_error = relative_error * 100;

fprintf('Value of z = %.4f\n', z);
fprintf('Absolute Error = %.4f\n', dz);
fprintf('Relative Error = %.5f\n', relative_error);
fprintf('Percentage Error = %.3f%%\n', percentage_error);
