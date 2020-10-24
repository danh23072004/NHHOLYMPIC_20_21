var
    i,n,m,k,p,s,l,r : Integer;
    f,g : Text;
begin
    read(n,m);
    read(k);

    l := 1; {left side of the boat}
    r := m; {right side of the boat}
    {s is number of step of the boat}

    for i := 1 to k do
    begin
        read(p);
        if (p > r) then
            inc(s,p - r)
        else if (p < l) then
            dec(s,l - p)
    end;
    write(s);
end.