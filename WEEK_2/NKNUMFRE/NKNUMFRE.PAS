function SWAP(x : Integer) : Integer;
var
    len,i,k,temp : Integer;
begin
    temp := x;
    len := 0;
    k := 1;
    while (temp <> 0) do
    begin
        temp := temp div 10;
        k := k * 10;
    end;
    temp := 0;
    k := k div 10;
    while (k <> 0) do
    begin
        inc(temp, (x mod 10) * k);
        x := x div 10;
        k := k div 10;
    end;
    exit(temp);
end;

function GCD(x,y : Integer) : Integer;
begin
    while (x <> y) do
    begin
        if x > y then dec(x,y);
        if y > x then dec(y,x);
    end;
    exit(x);
end;

{ Main Program }
var
    i,n,t,num,dem,a,b : Integer;
    f : Text;
begin
    assign(f,'NKNUMFRE.INP');
    reset(f);
    readln(f,a,b);
    close(f);

    dem := 0;
    for num := a to b do
    begin
        if GCD(num,SWAP(num)) = 1 then
            inc(dem);
    end;

    assign(f,'NKNUMFRE.OUT');
    rewrite(f);
    writeln(f,dem);
    close(f);
end.