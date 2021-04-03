type
    List = array[1..10000] of Integer;
var
    i,n,t,dem : Longint;
    f : Text;
    a : List;
begin
    assign(f,'NGONDOI.INP');
    reset(f);
    read(f,n);
    for i := 1 to n do read(f,a[i]);
    close(f);

    dem := 0;
    for i := 2 to n - 1 do
    begin
        if (a[i] > a[i - 1]) and (a[i] > a[i + 1]) then
            inc(dem);
    end;

    assign(f,'NGONDOI.OUT');
    rewrite(f);
    write(f,dem);
    close(f);
end.