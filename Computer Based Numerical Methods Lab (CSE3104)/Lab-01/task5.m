arr=input("Enter the numbers (eg: [1, 2, 3]): ");
most=0;
pos=1;

for i=1:length(arr)
    s=num2str(arr(i), 10);
    s=strrep(s, '.', '');
    s=strrep(s, '-', '');
    s=strrep(s, '0', '');

    if length(s)>most
        most=length(s);
        pos=i;
    end
end
fprintf("The most precise number is: %f\n", arr(pos));
