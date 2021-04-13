var
    i,n,j,max : Longint;
    fi : Text;
    f,a : array[1..10000] of Longint;
begin
    assign(fi,'QHD.INP');
    reset(fi);
    readln(fi,n);
    for i := 1 to n do read(fi,a[i]);
    close(fi);

    for i := 1 to n do f[i] := 1;
    for i := 1 to n do
    begin
        for j := 1 to i - 1 do
            if (a[j] <= a[i]) and ((f[j] + 1) > f[i]) then
                f[i] := f[j] + 1;
    end;

    max := 0;
    for i := 1 to n do
        if f[i] > max then max := f[i];

    assign(fi,'QHD.OUT');
    rewrite(fi);
    write(fi,max);
    close(fi);
end.