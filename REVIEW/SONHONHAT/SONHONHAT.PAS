var
    h,j,i,k,p,n,min,minres,size,dem,posc,res,max : Longint;
    f : Text;
    c : Char;
    st : array[1..1000] of String;
    a,ap : array[0..1000] of Longint;
    s,stmp,sc : String;

procedure deca(c : Char);
var
    i,v : Longint;
begin
    v := Ord(c) - 48;
    dec(a[v]);
end;

procedure count(s : String);
var
    i,k : Longint;
begin
    for i := 0 to 9 do a[i] := 0;
    for i := 1 to length(s) do
    begin
        k := ord(s[i]) - 48;
        inc(a[k]);
    end;
end;

function findmin() : Longint;
var
    i : Longint;
begin
    for i := 0 to 9 do
        if a[i] <> 0 then
        begin
            exit(i);
        end;
end;

procedure update(var x : Longint; k : Longint);
begin
    x := x * 10;
    inc(x,k);
end;

begin
    assign(f,'SONHONHAT.INP');
    reset(f);
    readln(f,p,k);
    for i := 1 to p do read(f,a[i]);
    readln(f);
    i := 1;
    st[1] := '';
    while not eoln(f) do
    begin
        read(f,c);
        if c <> ' ' then
            st[i] := st[i] + c
        else
        begin
            inc(i);
            st[i] := '';
        end;
    end;
    s := '';
    n := i - 1;
    for i := 1 to p do
    begin
        sc := '';
        for j := 1 to a[i] do sc := sc + st[i];
        s := s + sc;
    end;
    s := '12312312300004545';

    min := 0;
    size := length(s) - k;
    c := ' ';
    minres := 1000000000;
    res := 0;

    ap := a;
    for i := 1 to length(s) - size do
    begin
        stmp := copy(s,i,length(s) - i);
        count(stmp);
        res := 0;
        for j := 1 to size do
        begin
            if stmp = '' then
            begin
                res := 1000000000;
                break;
            end;
            min := findmin();
            {dec(a[min]);}
            c := Chr(min + 48);
            posc := Pos(c,stmp);
            dem := 0;
            while dem < posc do
            begin
                deca(stmp[1]);
                Delete(stmp,1,1);
                inc(dem);
            end;
            update(res,min);
        end;
        if minres > res then minres := res;
    end;

    assign(f,'SONHONHAT.OUT');
    rewrite(f);
    write(f,minres);
    close(f);
end.
