var
    i,n,t : Longint;
    f : Text;

function Xuoi(x : Longint) : Longint;
begin
    if (x div 10 = 0) then
    begin
        write(f,x,' ');
        exit();
    end;
    write(f,x mod 10,' ');
    Xuoi := Xuoi(x div 10);
end;

function Nguoc(x : Longint) : Longint;
begin
    if (x div 10 = 0) then
    begin
        write(f,x,' ');
        exit();
    end;
    Nguoc := Nguoc(x div 10);
    write(f,x mod 10,' ');
end;

begin
    assign(f,'BAI2.INP');
    reset(f);
    read(f,n);
    close(f);

    assign(f,'BAI2.OUT');
    rewrite(f);
    Xuoi(n);
    writeln(f);
    Nguoc(n);
    close(f);
end.
