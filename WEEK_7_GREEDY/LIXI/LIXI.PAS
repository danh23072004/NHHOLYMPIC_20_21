var
    i,n,t : Integer;
    f : Text;
begin
    assign(f,'LIXI.INP');
    reset(f);
    read(f,n);
    for i := 1 to n do
    begin

    end;
    close(f);

    assign(f,'LIXI.OUT');
    rewrite(f);
    close(f);
end.