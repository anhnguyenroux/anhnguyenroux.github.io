var n,m,i,j: longint;
a: array[0..100,1..100] of longint;
Chon: array[1..100] of boolean;


begin
    write('Nhap so dong, so cot: '); readln(m,n);
    writeln('Nhap mang hai chieu: ');
    for i:= 1 to m do 
        for j:=1 to n do
        begin
            read(a[i,j]);
        end;
    
    for i:=1 to m do
    begin
        Chon[i]:=true;
        for j:=1 to n do
            if (a[i][j]<a[i][j-1]) then Chon[i]:=false;
    end;
        
    write('Nhung dong co thu tu tang dan la: ');
    for i:=1 to n do if Chon[i] then write(i,' ');
end.
