type
    List = array[1..200000] of Longint;
var
    i,n,t,dem : Longint;
    f : Text;
    a : List;
    c : array[1..200000] of Boolean;

procedure swap(i,j : Longint);
var
    tam : Longint;
    tamkt : Boolean;
begin
    tam := a[i];
    a[i] := a[j];
    a[j] := tam;
    tamkt := c[i];
    c[i] := c[j];
    c[j] := tamkt;
end;

procedure sort(var a : List; left,right : Longint);
var
    x,L,R,tam : Longint;
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
            swap(L,R);
            inc(L);
            dec(R);
        end;
    end;
    if L > right then sort(a,L,right);
    if left < R then sort(a,left,R);
end;

begin
    assign(f,'BWPOINTS.INP');
    reset(f);
    read(f,n);
    { true : trang
      false : den }
    for i := 1 to n do
    begin
        read(f,a[i]);
       c[i] := true;
    end;
    t := n;
    readln(f);
    for i := 1 to n do
    begin
        read(f,a[i + t]);
        c[i + t] := false;
    end;
    close(f);
    sort(a,1,2*n);

    i := 1;
    while i <= (2 * n) - 1 do
    begin
        if ((c[i] = true) and (c[i + 1] = false))
        or ((c[i] = false) and (c[i + 1] = true)) then
        begin
            inc(dem);
            inc(i);
        end;
        inc(i);
    end;

    assign(f,'BWPOINTS.OUT');
    rewrite(f);
    write(f,dem);
    close(f);
end.
