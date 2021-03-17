var
    a : array[1..1000000000000] of Boolean;
    i,m,n,t : Longint;
    f : Text;
begin
    assign(f,'ANT.INP');
    reset(f);
    read(f,n,m);
    close(f);

    dem := n;


    assign(f,'ANT.OUT');
    rewrite(f);
    close(f);
end.