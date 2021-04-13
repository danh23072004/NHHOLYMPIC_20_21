type
    List = array[1..10000] of Longint;
var
    i,n,m,t,val : Longint;
    a,b : Longint;
    c : Char;
    f : Text;
begin
    assign(f,'QUANHE.INP');
    reset(f);
    n := 0;
    while not eoln(f) do
    begin
        read(f,c);
        if c = 'x' then
        begin
            read(f,c);
            while c <> ' ' do
            begin
                val := Ord(c) - 48;
                inc(n);
                a[n] := val;
            end;
        end;
    end;
    readln(f);
    m := 0;
    while not eoln(f) do
    begin
        read(f,c);
        if c = 'y' then
        begin
            read(f,c);
            while c <> ' ' do
            begin
                val := Ord(c) - 48;
                inc(n);
                b[m] := val;
            end;
        end;
    end;
    close(f);
end;