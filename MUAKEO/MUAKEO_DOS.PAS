var
    n,k : Byte;
    f : Text;
begin
    read(n,k);
    if (n = 1) then
        write(k)
    else
        write(n * (k - 1) + 1);
end.