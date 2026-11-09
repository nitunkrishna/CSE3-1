x=input('Enter the value of x (in radians): ');
n=input('Enter the number of terms: ');
sum=0;

for i=0:n-1
    p=2*i+1;
    if mod(p,2)==0
        part=0;
    else
        part=(x^p)/factorial(p);

        if mod(i,2)==1
            part=-part;
        end
    end
    sum=sum+part;
end

exact=sin(x);
error=abs(exact-sum);
fprintf('Exact Value=%.10f\n', exact);
fprintf('Approximate Value=%.10f\n', sum);
fprintf('Truncation Error=%.10f\n', error);
