var
    i,a,b,c,t,dem : Longint
    kt : Boolean;
    f : Text;
begin
    assign(f,'PYTHAGORAS.INP');
    reset(f);
    readln(f,a);
    close(f);

    b := a + 1;
    c := a + 2;
    kt := false;
    dem := 0;
    while (sqr(c) - sqr(b) <= sqr(a)) do
    begin
        for i := b to c - 1 do
        begin
            if (sqr(c) - sqr(b) = sqr(a)) then
            begin
                inc(dem);
            end;
        end;
        c := c + 1;
    end;

    assign(f,'PYTHAGORAS.OUT');
    rewrite(f);
    write(f,dem);
    close(f);
end.