var
    n,m,k,kq : Longint;
    f : Text;
begin
    assign(f,'TAOQUAN.INP');
    reset(f);
    read(f,n,m,k);
    close(f);


    kq := (n + m - k) div 3;
    if (kq > n div 2) then
        kq := n div 2;
    if (kq > m) then
        kq := m;
    if (kq < 0) then
        kq := 0;



    assign(f,'TAOQUAN.OUT');
    rewrite(f);
    {kq:=(min( min((m+n-k) div 3, n div 2) , m));
    if kq<0 then kq:=0;}
        writeln(f,kq);
    close(f);
end.
