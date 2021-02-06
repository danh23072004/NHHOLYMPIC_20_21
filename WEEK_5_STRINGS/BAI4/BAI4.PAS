var
    i,n,t : Integer;
    f : Text;
begin
    assign(f,'BAI4.INP');
    reset(f);

    close(f);

    assign(f,'BAI4.OUT');
    rewrite(f);
    close(f);
end.