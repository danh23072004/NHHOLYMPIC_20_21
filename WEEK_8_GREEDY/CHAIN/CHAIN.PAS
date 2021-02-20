type
    List = array[1..100000] of Longint;
var
    i,n,t,dem,space : Longint;
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
    if (right > L) then
        QuickSort(a,L,right);
end;

begin
    assign(f,'CHAIN.INP');
    reset(f);
    readln(f,n);
    for i := 1 to n do read(f,a[i]);
    close(f);

    QuickSort(a,1,n);
    space := n - 1;
    dem := 0;
    i := 1;
    while (space > 0) do
    begin
        while (a[i] > 0) and (space > 0) do
        begin
            inc(dem);
            dec(space);
            dec(a[i]);
        end;
        dec(space);
        inc(i);
    end;


    assign(f,'CHAIN.OUT');
    rewrite(f);
    write(f,dem);
    close(f);
end.
