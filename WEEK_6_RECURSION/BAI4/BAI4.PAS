var
    n,max : Longint;
    f : Text;
function FindMax(x : Longint; var max : Longint) : Longint;
begin
    if (x div 10 = 0) then
        exit(max)
    else
    begin
        if (x mod 10) > max then
            max := x mod 10;
        FindMax := FindMax(x div 10,max);
    end;
end;

begin
    assign(f,'BAI4.INP');
    reset(f);
    readln(f,n);
    close(f);

    assign(f,'BAI4.OUT');
    rewrite(f);
    max := 0;
    write(f,FindMax(n,max));
    close(f);
end.