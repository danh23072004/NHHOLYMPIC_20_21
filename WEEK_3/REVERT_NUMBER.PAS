var
    i,n : Longint;
    f : Text;
procedure REVERT(x : Longint);
begin
    while (n <> 0) do
    begin
        write(f, n mod 10);
        n := n div 10;
    end;
end;
begin
    assign(f,'REVERT_NUMBER.INP');
    reset(f);
    readln(f,n);
    close(f);

    assign(f,'REVERT_NUMBER.OUT');
    rewrite(f);
    REVERT(n);
    close(f);
end.