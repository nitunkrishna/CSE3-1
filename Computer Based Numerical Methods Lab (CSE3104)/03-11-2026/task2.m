str=f=input('Enter the equation: ', 's');
str=str2func(['@(x) ' str]);

a=-100;
b=100;

for x=-100:0.1:100
    if (str(x)*str(x+0.1))<0
        a=x;
        b=x+0.1;
        break;
    end
end

for i=1:100
    mid=(a+b)/2;

    if (str(a)*str(mid))<0
        b=mid;
    else
        a=mid;
    end
end
fprintf('Root = %f\n', mid);
