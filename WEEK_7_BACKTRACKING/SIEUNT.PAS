type
    List = array[1..1000] of Longint;
var
    i,n,t : Longint;
    f : Text;
    x : List;
    k : array[1..4] of Longint;

function isPrime(m : List; k : Longint) : Boolean;
var
    i,kq,t : Longint;
begin
    {Bien t la bien tich}
    t := 1;
    kq := 0;
    for i := k downto 1 do
    begin
        inc(kq,m[i] * t);
        t := t * 10;
    end;
    for i := 2 to trunc(sqrt(kq)) do
        if kq mod i = 0 then exit(false);
    exit(true);
end;

procedure Try(i : Longint);
var
    t,j : Longint;
begin
    for j := 1 to 4 do
    begin
        x[i] := k[j];
        if isPrime(x,i) = true then
        begin
            if (i = n) then
            begin
                for t := 1 to n do write(f,x[t]);
                writeln(f);
            end
            else
                Try(i + 1);
        end;
    end;
end;

begin
    assign(f,'SIEUNT.INP');
    reset(f);
    read(f,n);
    close(f);

    k[1] := 1;
    k[2] := 3;
    k[3] := 7;
    k[4] := 9;

    assign(f,'SIEUNT.OUT');
    rewrite(f);
    for i := 1 to 4 do
    begin
        if i = 1 then x[1] := 2;
        if i = 2 then x[1] := 3;
        if i = 3 then x[1] := 5;
        if i = 4 then x[1] := 7;
        Try(2);
    end;
    close(f);
end.
