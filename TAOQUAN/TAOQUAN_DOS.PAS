var
    t,n,m,k : Longint;
begin
    read(n,m,k);
    
    if n mod 2 = 1 then
    begin
        dec(n);
        dec(k);
    end;
    if (n - k >= 2 * m) then
        write(m)
    else if (2 * m - k > n) then
    begin
        t := (2 * m - n) div 2;
        m := m - t;
        write(m);
    end
    else
    begin
        { Make m = n }
        if (n > 2 * m) then
        begin
            t := n - 2 * m;
            k := k - t;
            n := n - t;
        end
        { Make m = n }
        else if (2 * m > n) then
        begin
            t := (2 * m - n) div 2;
            k := k - t;
            m := m - t;
        end;
        n := n - 2 * (k div 3);
        m := m - 1 * (k div 3);
        n := n - (k mod 3);

        if (n mod m = 0) then
            write(m)
        else
            write(m - 1);
    end;
end.