type
    List = array[1..10000] of Longint;
var
    i,n,t : Integer;
    f : Text;
    a : List;

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
    end;
    if (left < R) then
        QuickSort(a,left,R);
    if (L < right) then
        QuickSort(a,L,right);
end;

begin
    assign(f,'LIXI.INP');
    reset(f);
    readln(f,n);
    for i := 1 to n do
    begin
        read(f,a[i]);
    end;
    close(f);

    assign(f,'LIXI.OUT');
    rewrite(f);
    QuickSort(a,1,n);
    for i := 1 to n do write(f,a[i],' ');
    close(f);
end.
