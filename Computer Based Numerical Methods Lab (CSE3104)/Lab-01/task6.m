arr=input("Enter the numbers: ");

for i=1:length(arr)
    s=num2str(arr(i), 15);
    s=strrep(s, '.', '');
    s=strrep(s, '-', '');
    while length(s)>1 && s(1)=='0'
        s(1)=[];
    end

    count=length(s);
    disp(["Number: ", num2str(arr(i)), ...
          "   Significant Figures: ", num2str(count)]);
end
