var
    i,t,min : Integer;
    f : Text;
    a : array[1..10] of Integer;
begin
    assign(f,'P152PROA.INP');
    reset(f);
    readln(f,n);
    for i := 1 to n do readln(f,a[i]);
    close(f);

    min := 0;
    for i := 1 to n do
        if a[i] > min then


    assign(f,'P152PROA.OUT');
    rewrite(f);
    close(f);
end.