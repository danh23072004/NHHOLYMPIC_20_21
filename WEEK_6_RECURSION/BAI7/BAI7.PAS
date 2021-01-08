var
    i,n,t : Integer;
    f : Text;

function Tong(x,sum : Longint) : Longint;
begin
    if (x = 0) then
    begin
        inc(sum,1);
        exit(sum);
    end
    else
    begin
        inc(sum,x * 2 + 1);
        Tong := Tong(x - 1,sum);
    end;
end;

begin
    assign(f,'BAI7.INP');
    reset(f);
    readln(f,n);
    close(f);

    assign(f,'BAI7.OUT');
    rewrite(f);
    write(f,Tong(n,0));
    close(f);
end.
