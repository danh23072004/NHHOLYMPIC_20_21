var
    a,b,v,kq : Longint;
begin
    assign(f,'OCSEN.INP')
    reset(f);
    read(f,a,b,v);
    close(f)

    if (a = v) then
        kq := 1
    else
    begin
        kq := ((v - a) div (a - b)) + 1;
        if ((v - a) mod (a - b)) <> 0 then
            inc(kq);
    end;

    assign(f,'OCSEN.OUT');
    rewrite(f);
    writeln(f,kq);
    close(f);
end.