function isPRIME(x : Integer) : Boolean;
var
    i : Integer;
begin
    if (i = 2) then exit (true);
    for i := 2 to trunc(sqrt(x)) do
        if x mod i = 0 then exit(false);
    exit(true);
end;

var
    n,i,k,dem : Integer;
    f : Text;
begin
    assign(f,'BCFACTOR.INP');
    reset(f);
    read(f,n);
    close(f);

    assign(f,'BCFACTOR.OUT');
    rewrite(f);
    n := trunc(sqrt(n));

    if (n = 1) then
        write(f,'1 1')
    else
    begin
        n := sqrt(n);
    end;

    {
    else if (n <> 0) then
    begin
        i := 2;
        dem := 0;
        while (n <> 1) do
        begin
            while (n mod i = 0) do
            begin
                n := n div i;
                inc(dem);
            end;
            k := i;
            repeat
                inc(i);
            until (isPrime(i) = true);
            if (dem <> 0) then
                writeln(f, k, ' ', dem, ' ');
            dem := 0;
        end;
    end;
    }
    close(f);
end.
