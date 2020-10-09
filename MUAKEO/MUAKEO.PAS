var
    n,k : Byte;
    f : Text;
begin
    assign(f,'MUAKEO.INP');
    reset(f);
    read(f,n,k);
    close(f);

    assign(f,'MUAKEO.OUT');
    rewrite(f);
    if (n = 1) then
        write(f,k)
    else
        write(f,n * (k - 1) + 1);
    close(f);
end.