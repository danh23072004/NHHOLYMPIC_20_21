var
    t,n,l,m : double;
    i,c,dem : Integer;
    f,g : Text;
begin
    assign(f,'PTIT135J.INP');
    reset(f);
    assign(g,'PTIT135J.OUT');
    rewrite(g);

    readln(f,c);
    dem := 0;
    for i := 1 to c do
    begin
        read(f,n,l,m);
        l := l / 100;
        while n < m do
        begin
            n := n + (n * l);
            inc(dem);
        end;
        writeln(g,dem);
        dem := 0;
    end;
    close(f);
    close(g);
end.
