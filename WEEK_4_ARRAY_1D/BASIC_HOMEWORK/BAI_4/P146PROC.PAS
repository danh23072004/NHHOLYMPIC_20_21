type
    List = array[1..100] of Longint;
var
    dem,i,t,tam : Longint;
    f : Text;
    a : List;
begin
    assign(f,'P146PROC.INP');
    reset(f);
    for i := 1 to 4 do
        read(f,a[i]);
    close(f);

    dem := 0;
    for i := 1 to 4 do
        for t := i + 1 to 4 do
            if a[i] > a[t] then
            begin
                tam := a[i];
                a[i] := a[t];
                a[t] := tam;
            end;

    for i := 1 to 3 do
        if a[i] <> a[i + 1] then
            inc(dem);
    assign(f,'P146PROC.OUT');
    rewrite(f);
    write(f,4 - dem);
    close(f);
end.
