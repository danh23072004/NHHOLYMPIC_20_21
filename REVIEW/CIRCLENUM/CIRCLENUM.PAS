var
    s1,s2 : String;
    dau,cuoi,n,t,dem : Longint;
    f : Text;
begin
    assign(f,'CIRCLENUM.INP');
    reset(f);
    read(f,s1,s2);
    close(f);



    assign(f,'CIRCLENUM.OUT');
    rewrite(f);
    close(f);
end.