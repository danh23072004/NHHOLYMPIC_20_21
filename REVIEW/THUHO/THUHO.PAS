var
    i,n,t,dem,hai,m : Integer;
    f : Text;
    a : array[0..1001] of Integer;
begin
    assign(f,'THUHO.INP');
    reset(f);
    read(f,n,m);
    for i := 1 to n do read(f,a[i]);
    close(f);

    dem := 0;
    for i := 0 to n + 1 do
    begin
        hai := 0;
        if a[i] - m <= 0 then
        begin
            inc(dem,a[i]);
            hai := a[i];
            a[i] := 0;
            if (a[i + 1] - (m - hai)) >= 0 then
            begin
                inc(dem,m - hai);
                dec(a[i + 1],m - hai);
            end
            else
            begin
                inc(dem,a[i + 1]);
                a[i + 1] := 0;
            end;
        end
        else
        begin
            inc(dem,m);
            dec(a[i],m);
            hai := m;
        end;
    end;

    assign(f,'THUHO.OUT');
    rewrite(f);
    write(f,dem);
    close(f);
end.