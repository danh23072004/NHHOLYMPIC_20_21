var
    a,b,v,kq : Longint;
begin
    read(a,b,v);

    if (a = v) then
        kq := 1
    else
    begin
        kq := ((v - a) div (a - b)) + 1;
        if ((v - a) mod (a - b)) <> 0 then
            inc(kq);
    end;
    writeln(kq);
end.