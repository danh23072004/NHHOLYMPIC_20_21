var
    i,n,m,k,p,s,l,r : Integer;
    f,g : Text;
begin
    assign(f,'NHATTAO.INP');
    reset(f);

    read(f,n,m);
    read(f,k);

    l := 1; {left side of the boat}
    r := m; {right side of the boat}
    s := 0; {s is number of step of the boat}

    for i := 1 to k do
    begin
        read(f,p);
        if (p > r) then
        begin
            inc(s,p - r);
            r := p;
            l := p - m + 1;
        end
        else if (p < l) then
        begin
            inc(s,l - p);
            l := p;
            r := p + m - 1;
        end;
    end;
    close(f);

    assign(f,'NHATTAO.OUT');
    rewrite(f);
    write(f,s);
    close(f);
end.