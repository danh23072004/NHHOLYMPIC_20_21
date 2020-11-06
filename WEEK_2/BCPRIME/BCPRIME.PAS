var
    i,n,t,a : Longint;
    kt : Boolean;
    f : Text;
begin
    assign(f,'BCPRIME.INP');
    reset(f);
    readln(f,n);
    close(f);

    kt := true;
    if (n = 0) or (n = 1) then
        kt := false
    else if (n = 2) then
        kt := true
    else
    a := trunc(sqrt(n));
    for i := 2 to trunc(sqrt(n)) do
    begin
        if n mod i = 0 then
        begin
            kt := false;
            break;
        end;
    end;

    assign(f,'BCPRIME.OUT');
    rewrite(f);
    if (kt = true) then
        write(f,'YES')
    else
        write(f,'NO');
    close(f);
end.
