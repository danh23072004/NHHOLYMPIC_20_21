var
    i,n,t,j,max : Longint;
    f : Text;
    s1,s2,stmp : String;
begin
    assign(f,'XAUCHUNG.INP');
    reset(f);
    readln(f,s1);
    readln(f,s2);
    close(f);

    res := '';
    max := 0;
    for i := 1 to length(s2) do
    begin
        stmp := '';
        for j := i to length(s2) do
        begin
            stmp := stmp + s2[j];
            if (Pos(stmp,s1) > 0) and (length(stmp) > max) then
                max := length(stmp);
        end;
    end;

    assign(f,'XAUCHUNG.OUT');
    rewrite(f);
    write(f,max);
    close(f);
end.