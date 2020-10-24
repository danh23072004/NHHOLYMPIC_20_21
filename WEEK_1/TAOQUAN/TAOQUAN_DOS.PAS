var
    n,m,k,kq : Longint;
begin
    read(n,m,k);

    kq := (n + m - k) div 3;
    if (kq > n div 2) then
        kq := n div 2;
    if (kq > m) then
        kq := m;
    if (kq < 0) then
        kq := 0;
     
    write(kq);
end.