var
    i,n,kq,val : byte;
    a : array[1..100] of byte;
    f : Text;
begin
    assign(f,'NUOCCAM.INP');
    reset(f);
    readln(f,n);
    kq := 0;
    for i := 1 to n do
    begin
        read(f,val);
        inc(kq,val);
    end;
    close(f);

    assign(f,'NUOCCAM.OUT');
    rewrite(f);
    { N trong truong hop nay la ket qua }
    writeln(f,kq/i:0:5);
    close(f);
end.
