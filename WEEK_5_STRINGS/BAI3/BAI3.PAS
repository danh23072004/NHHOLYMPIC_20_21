var
    i,n,t,maxpos,endp : Integer;
    f : Text;
    s,st,kq : String;
    max : Char;
begin
    assign(f,'BAI3.INP');
    reset(f);
    read(f,st);
    close(f);

    n := 0;
    for i := 1 to length(st) do
        if st[i] in ['0'..'9'] then
        begin
            s := s + st[i];
            inc(n);
        end;

    max := '0';
    maxpos := 1;
    kq := '';
    endp := n - 4;
    for i := 1 to 5 do
    begin
        max := '0';
        for t := maxpos to endp do
        begin
            if max < s[t] then
            begin
                max := s[t];
                maxpos := t + 1;
            end;
        end;
        kq := kq + max;
        inc(endp);
    end;

    assign(f,'BAI3.OUT');
    rewrite(f);
    write(f,kq);
    close(f);
end.
