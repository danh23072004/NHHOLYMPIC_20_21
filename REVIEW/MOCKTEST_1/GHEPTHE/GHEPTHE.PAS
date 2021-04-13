type
    List = array[1..101] of Longint;
var
    a,c,len,b,cb,lenb,res : List;
    i,n,t,tmp,dau,cuoi,max,j,k,tam : Longint;
    f : Text;

function cpare(x,y : Longint) : Boolean;
var
    valx,valy,kx,ky : Longint;
    i : Integer;
begin
    if c[x] > c[y] then exit(true);
    if c[x] < c[y] then exit(false);
    if c[x] = c[y] then
    begin
        valx := a[x];
        valy := a[y];
        i := 1;
        while (valx <> 0) and (valy <> 0) do
        begin
            kx := valx div len[x] div i;
            ky := valy div len[y] div i;
            valx := valx div 10;
            valy := valy div 10;
            if (kx > ky) then exit(true);
            if (kx < ky) then exit(false);
            i := i * 10;
        end;
        if (valx = 0) then
        begin
            if (valy div len[y] div i) > (valx div len[x]) then
                exit(false)
            else exit(true);
        end
        else if (valy = 0) then
        begin
            if (valx div len[x] div i) > (valy div len[y]) then
                exit(true)
            else exit(false);
        end;
        {
        if len[x] > len[y] then exit(true);
        if len[x] <= len[y] then exit(false);
        }
    end;
end;

procedure swap(var x,y : Longint);
var
    tam : Longint;
begin
    tam := x;
    x := y;
    y := tam;
end;

procedure sort(var a : List; left,right : Longint);
var
    x,tam,L,R,k : Longint;
begin
    { true: x > y or x = y
      false: x < y }
    L := left;
    R := right;
    {x := a[(left + right) div 2];}
    k := (left + right) div 2;
    while L <= R do
    begin
        while cpare(L,k) = true do inc(L);
        while cpare(k,R) = true do dec(R);
        if L <= R then
        begin
            swap(a[L],a[R]);
            swap(c[L],c[R]);
            swap(len[L],len[R]);
            inc(L);
            dec(R);
        end;
    end;
    if left < R then sort(a,left,R);
    if L < right then sort(a,L,right);
end;

function pow(x : Longint; y : Integer) : Longint;
var
    i : Longint;
begin
    pow := 1;
    for i := 1 to y do
        pow := pow * x;
    pow := pow div 10;
    exit(pow);
end;

begin
    assign(f,'GHEPTHE.INP');
    reset(f);
    n := 0;
    while not eof(f) do
    begin
        inc(n);
        read(f,a[n]);
    end;
    close(f);

    tmp := 0;
    for i := 1 to n do
    begin
        tmp := a[i];
        while tmp <> 0 do
        begin
            tmp := tmp div 10;
            inc(len[i]);
        end;
        len[i] := pow(10,len[i]);
        c[i] := a[i] div len[i];
    end;

    sort(a,1,n);
    for i := n downto 1 do
    begin
        if a[i] mod 2 = 0 then
        begin
            tam := a[i];
            a[i] := a[n];
            a[n] := tam;
            break;
        end;
    end;

    assign(f,'GHEPTHE.OUT');
    rewrite(f);
    for i := 1 to n do write(f,a[i],' ');
    close(f);
end.
