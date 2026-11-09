x=input('Enter the value of x (example: 1/5, -1/5): ');
n=input('Enter the number of terms: ');
sum=0;

for i=0:n-1
    part=(x^i)/factorial(i);
    sum=sum+part;
end

exact=exp(x);
error=abs(exact-sum);

fprintf('Exact Value = %.10f\n', exact);
fprintf('Approximate Value = %.10f\n', sum);
fprintf('Truncation Error = %.10f\n', error);
