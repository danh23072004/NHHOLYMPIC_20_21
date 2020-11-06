var
    i,n,t,x,dem,demdong : Longint;
    f,g : Text;
begin
    assign(f,'COUNTCBG.INP');
    reset(f);

    assign(g,'COUNTCBG.OUT');
    rewrite(g);
    dem := 0;
    demdong := 0;
    while not eof(f) do
    begin
        read(f,n);
        inc(demdong);
        for i := 1 to (n div 2 + 1) do
        begin
            x := n;
            for t := i to (n div 2 + 1) do
            begin
                dec(x,t);
                if (x = 0) then
                begin
                    inc(dem);
                    break;
                end
                else if (x < 0) then
                    break;
            end;
        end;
        writeln(g,dem);
        dem := 0;
    end;
    close(f);
    close(g);
end.
