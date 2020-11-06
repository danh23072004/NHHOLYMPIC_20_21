var
    i,n,k : Longint;
    f : Text;
    kt : Boolean;
begin
    assign(f,'BCFACTOR.INP');
    reset(f);
    read(f,n);
    close(f);

    assign(f,'BCFACTOR.OUT');
    rewrite(f);
    k := 0;
    kt := false;
    for i := 2 to trunc(sqrt(n)) do
    begin
        if n mod i = 0 then
        begin
            kt := true;
            while (n mod i = 0) do
            begin
                n := n div i;
                inc(k);
            end;
            writeln(f,i,' ',k,' ');
            kt := false;
            k := 0;
        end;
    end;
    if n <> 1 then
        writeln(f,n,' ',1,' ');
    close(f);
end.
