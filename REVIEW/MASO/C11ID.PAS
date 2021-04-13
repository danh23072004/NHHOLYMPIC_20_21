type
    List = array[1..100000] of Longint;
var
    a : List;
    i,n,t,del : Longint;
    sum : Int64;
    f : Text;

procedure sort(a : List; left,right : Longint);
var
    x,tam,L,R : Longint;
begin
    x := a[(left + right) div 2];
    L := left;
    R := right;
    while L <= R do
    begin
        while a[L] < x do inc(L);
        while a[R] > x do dec(R);
        if L <= R then
        begin
            tam := a[L];
            a[L] := a[R];
            a[R] := tam;
            inc(L);
            dec(R);
        end;
    end;
    if L < right then sort(a,L,right);
    if left < R then sort(a,left,R);
end;

begin
    assign(f,'C11ID.INP');
    reset(f);
    readln(f,n);
    del := 0;
    for i := 1 to n do
    begin
        readln(f,a[i]);
        dec(a[i],i - 1);
    end;
    close(f);

    sort(a,1,n);
    assign(f,'C11ID.OUT');
    rewrite(f);
    sum := 1;
    for i := 1 to n do
    begin
        sum := sum * a[i];
    end;
    write(f,sum);
    close(f);
end.
