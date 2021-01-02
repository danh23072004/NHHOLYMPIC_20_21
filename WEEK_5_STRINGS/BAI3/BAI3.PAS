var
    i,n,t : Integer;
    f : Text;
    s,st : String;
begin
    assign(f,'BAI3.INP');
    reset(f);
    read(f,st);
    close(f);

    n := 0;
    for i := 1 to length(s) do
        if st[i] in ['0'..'9'] then
        begin
            s := s + st[i];
            inc(n);
        end;
    for i := 1 to n do
    begin
    end;

    assign(f,'BAI3.OUT');
    rewrite(f);
    close(f);
end.