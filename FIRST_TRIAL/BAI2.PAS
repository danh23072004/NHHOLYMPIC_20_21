type
    List = array[1..10000] of Longint;
var
    i,n,t,maxa,maxpos,kq,u,max : Longint;
    f : Text;
    a,pos : List;

procedure QuickSort(var a : List; left,right : Longint);
var
    L,R,x,tam : Longint;
begin
    x := a[(left + right) div 2];
    L := left;
    R := right;
    while (L <= R) do
    begin
        while (a[L] < x) do inc(L);
        while (a[R] > x) do dec(R);
        if (L <= R) then
        begin
            tam := a[L];
            a[L] := a[R];
            a[R] := tam;
            inc(L);
            dec(R);
        end;

        if (left < R) then
            QuickSort(a,left,R);
        if (L < right) then
            QuickSort(a,L,right);
    end;
end;

begin
    assign(f,'BAI2.INP');
    reset(f);
    readln(f,n);
    for i := 1 to n do read(f,a[i]);
    readln(f);
    for i := 1 to n do read(f,pos[i]);
    close(f);

    kq := 0;
    QuickSort(a,1,n);
    QuickSort(pos,1,n);

    maxa := a[1];
    maxpos := pos[1];
    {u la so chuot hien tai}
    for i := 1 to n do
    begin

    end;

    assign(f,'BAI2.OUT');
    rewrite(f);
    max := 0;
    for i := 1 to n do
    begin
        if max < abs(pos[i] - a[i]) then
            max := abs(pos[i] - a[i]);
    end;
    write(f,max);
    close(f);
end.