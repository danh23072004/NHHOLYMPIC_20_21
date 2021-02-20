type
    List = array[1..100001] of Longint;
var
    i,n,m,t,dem : Longint;
    f : Text;
    a,b : List;

procedure QuickSortDown(var a : List; left,right : Longint);
var
    x,L,R,tam : Longint;
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
    assign(f,'KIVU.INP');
    reset(f);
    readln(f,n,m);
    for i := 1 to n do read(f,a[i]);
    readln(f);
    for i := 1 to m do read(f,b[i]);
    close(f);

    QuickSortDown(a,1,n);
    QuickSortDown(b,1,m);
    dem := 0;
    i := 1;
    t := 1;
    while (i <= n) and (t <= m) do
    begin
	{ Code chay duoc vong lap while a[i] <= b[t] do co phan tu cuoi mang = 0 
	la chot de thoat vong lap }
        while (a[i] <= b[t]) do
            inc(t);
        if (i > n) or (t > m) then break;
        inc(dem);
        inc(i);
        inc(t);
    end;

    assign(f,'KIVU.OUT');
    rewrite(f);
    write(f,dem);
    close(f);
end.
