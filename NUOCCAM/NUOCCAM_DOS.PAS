var
    i,n,kq,val : byte;
    f : Text;
begin
    read(n);
    kq := 0;
    for i := 1 to n do
    begin
        read(val);
        inc(kq,val);
    end;
    close(f);

    { N trong truong hop nay la ket qua }
    writeln(kq/i:0:5);
    close(f);
end.
