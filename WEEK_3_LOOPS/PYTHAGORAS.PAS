var
    i,a,b,c,k,dem : Longint;
    kt : Boolean;
    f : Text;
begin
    assign(f,'PYTHAGORAS.INP');
    reset(f);
    readln(f,a);
    close(f);

    b := a + 1;
    c := a + 2;
    k := b;
    kt := true;
    dem := 0;
    while sqr(c) - sqr(c - 1) <= sqr(a) do
    begin
        for i := c - 1 downto k do
        begin
            { Bien i dong vai tro la bien b}
            if (sqr(c) - sqr(i) = sqr(a)) then
            begin
                inc(dem);
            end
        end;
        c := c + 1;
    end;

    assign(f,'PYTHAGORAS.OUT');
    rewrite(f);
    write(f,dem);
    close(f);
end.
