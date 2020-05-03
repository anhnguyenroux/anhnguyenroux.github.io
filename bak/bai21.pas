uses math,crt;

var n,m,i,j : integer;
a: array[1..100,1..100] of longint;
timThay: boolean;
x: longint;


BEGIN
    clrscr();
    write('Nhap m,n: '); readln(m,n);
    write('Nhap x: '); readln(x);
    writeln('Nhap ma tran: ');
    timThay:=false;
    for i:=1 to m do
        for j:=1 to n do
        BEGIN
            read(a[i,j]);
            if (a[i,j]=x) then
            BEGIN
                timThay:=true;
            END;
        END;
        
    if timThay then writeln('Cac vi tri co gia tri bang ' , x,  ' la:');
    for i:=1 to m do
        for j:=1 to n do
        BEGIN
            if (a[i,j]=x) then
            BEGIN
                write('(',i,',',j,')',' ');
            END;
        END;
    if (timThay=false) then write(-1);
    readln();
END.

