var
    i,n,t : Longint;
    f : Text;
begin
    assign(f,'DOANVAN.INP');
    reset(f);

    close(f);

    assign(f,'DOANVAN.OUT');
    rewrite(f);
    close(f);
end.