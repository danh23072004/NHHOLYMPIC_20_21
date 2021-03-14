var
    snt,c : array[0..500000] of Boolean;
    i,n,t,j,dem,rev : Longint;
    f : Text;

procedure Sieve(n : Longint);
var
    i : Longint;
begin
    fillchar(snt,500000,true);
    snt[0] := false;
    snt[1] := false;
    i := 2;
    while i <= trunc(sqrt(n)) do
    begin
        while snt[i] = false do
            inc(i);
        for j := 2 to (n div i) do
            snt[i * j] := false;
        inc(i);
    end;
end;

{
function CheckBigNum(n : Longint) : Boolean;
begin
    if (n mod 100000 = 5) then exit(false);
    if (n mod 100000 = 1) or (n mod 100000
    exit(true);
end;
}

function Swap(n : Longint) : Longint;
var
    k : Longint;
begin
    k := 0;
    while n <> 0 do
    begin
        k := k + n mod 10;
        n := n div 10;
        k := k * 10;
    end;
    k := k div 10;
    exit(k);
end;

begin
    assign(f,'BIPRIME.INP');
    reset(f);
    readln(f,n);
    close(f);

    Sieve(500000);
    dem := 0;
    fillchar(c,sizeof(c),false);
    for i := 100000 to n do
    begin
        rev := Swap(i);
        if (snt[i] = true) and (rev < 500000) then
                if (snt[rev] = true) and (c[i] = false) and (c[rev] = false) and (rev <> i) then
                begin
                        inc(dem);
                        c[i] := true;
                end;
    end;

    assign(f,'BIPRIME.OUT');
    rewrite(f);
    writeln(f,dem);
    for i := 13 to 500000 do
    begin
        rev := Swap(i);
        if (c[i] = true) then
        begin
            writeln(f,i,' ',rev);
        end;
    end;
    close(f);
end.
