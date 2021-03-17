var
    i,m,n,t : Integer;
    a : array[1..1000,1..1000] of Byte;
    f : Text;
begin
    assign(f,'CHEVUON.INP');
    reset(f);
    readln(f,n,m);
    for i := 1 to n do
    begin
        for t := 1 to m do
        begin
            read(f,a[i,t]);
        end;
        readln(f);
    end;
    close(f);

    assign(f,'CHEVUON.OUT');
    rewrite(f);
    close(f);
end.