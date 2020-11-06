var
    i,n,t,k,kmax,x : Longint;
    f,g : Text;
begin
    assign(f,'COUNTCBG.INP');
    reset(f);
    assign(g,'COUNTCBG.OUT');
    rewrite(g);

    kmax := n div 2 + 1;


    close(f);
    close(g);
end.