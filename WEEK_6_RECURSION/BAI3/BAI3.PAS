var
    i,n,t : Longint;
    f : Text;

function Binary(x : Longint) : Longint;
begin
    if (x div 2 = 0) then
    begin
        write(f,x mod 2,' ');
        exit();
    end;
    Binary := Binary(x div 2);
    write(f,x mod 2,' ');
end;

begin
    assign(f,'BAI3.INP');
    reset(f);
    read(f,n);
    close(f);

    assign(f,'BAI3.OUT');
    rewrite(f);
    Binary(n);
    close(f);
end.