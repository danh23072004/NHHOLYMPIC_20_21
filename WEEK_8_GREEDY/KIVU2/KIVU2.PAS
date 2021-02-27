type
    List = array[1..100000] of Integer;
var
    i,n,t,dem : Integer;
    f : Text;
    a,b : List;

procedure QuickSortUp(var a : List; left,right : Integer);
var
    L,R,tam,x : Integer;
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
    if (L < right) then
        QuickSortUp(a,L,right);
    if (left < R) then
        QuickSortUp(a,left,R);
end;

procedure QuickSortDown(var a : List; left,right : Integer);
var
    L,R,tam,x : Integer;
begin
    x := a[(left + right) div 2];
    L := left;
    R := right;
    while (L <= R) do
    begin
        while (a[L] > x) do inc(L);
        while (a[R] < x) do dec(R);
        if (L <= R) then
        begin
            tam := a[L];
            a[L] := a[R];
            a[R] := tam;
            inc(L);
            dec(R);
        end;
    end;
    if (L < right) then
        QuickSortDown(a,L,right);
    if (left < R) then
        QuickSortDown(a,left,R);
end;

begin
    assign(f,'KIVU2.INP');
    reset(f);
    readln(f,n);
    for i := 1 to n do read(f,a[i]);
    readln(f);
    for i := 1 to n do read(f,b[i]);
    close(f);

    QuickSortUp(a,1,n);
    QuickSortDown(b,1,n);

    i := 1;
    t := 1;
    while (i <= n) and (t <= n) and (a[i] < 0) do
    begin
        if ((abs(a[i]) <= abs(b[t])) and (b[t] > 0)) then
        begin
            inc(dem);
            inc(i);
            inc(t);
        end;
        inc(t);
    end;

    i := n;
    t := n;
    while (i <= n) and (t <= n) and (a[i] > 0) do
    begin
        if ((abs(a[i]) >= abs(b[t])) and (b[t] < 0)) then
        begin
            inc(dem);
            dec(i);
            dec(t);
        end;
        dec(t);
    end;

    assign(f,'KIVU2.OUT');
    rewrite(f);
    write(f,dem);
    close(f);
end.
