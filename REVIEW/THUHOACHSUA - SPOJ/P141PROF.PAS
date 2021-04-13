type
    List = array[0..200001] of Longint;
var
    i,n,t,k,temp,x,y,z,max,j,cx,cy,cz,bk : Longint;
    c : array[1..200000] of Boolean;
    a,b,p : List;
    f : Text;

procedure sort(var a : List; left,right : Longint);
var
    x,L,R,tam : Longint;
    tamc : Boolean;
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
            tamc := c[L];
            c[L] := c[R];
            c[R] := tamc;
            inc(L);
            dec(R);
        end;
    end;
    if L < right then sort(a,L,right);
    if left < R then sort(a,left,R);
end;

begin
    assign(f,'P141PROF.INP');
    reset(f);
    readln(f,n,x,y,z);
    k := 0;
    for i := 1 to n do
    begin
        read(f,a[i],b[i]);
        inc(k);
        p[k] := a[i];
        c[k] := true;
        inc(k);
        p[k] := b[i];
        c[k] := false;
        readln(f);
    end;
    close(f);

    p[0] := -1;
    p[2*n + 1] := -1;
    sort(p,1,2*n);
    cx := n;
    cy := 0;
    cz := 0;
    max := 0;
    for i := 1 to 2 * n do
    begin
        temp := 0;
        if c[i] = true then
        begin
            inc(cy);
            dec(cx);
            temp := x * cx + y * cy + z * cz;
        end
        else if c[i] = false then
        begin
            temp := x * cx + y * cy + z * cz;
            dec(cy);
            inc(cz);
        end;
        if temp > max then max := temp;
    end;

    assign(f,'P141PROF.OUT');
    rewrite(f);
    write(f,max);
    close(f);
end.
