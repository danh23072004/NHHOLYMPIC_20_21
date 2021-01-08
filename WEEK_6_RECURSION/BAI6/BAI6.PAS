var
    i,n,sum : Longint;
    f : Text;

function Binary(x,sum : Longint) : Longint;
begin
    if (x = 0) then
    begin
        exit(sum);
    end;
    sum := sum * (2 * x + 1);
    Binary := Binary(x - 1,sum)
end;

begin
    assign(f,'BAI6.INP');
    reset(f);
    read(f,n);
    close(f);

    assign(f,'BAI6.OUT');
    rewrite(f);
    sum := 1;
    write(f,Binary(n,1));
    close(f);
end.
