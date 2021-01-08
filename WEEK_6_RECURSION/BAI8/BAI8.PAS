var
    n,s1,s2 : Longint;
    f : Text;

function Tong(var prod,sum : Longint; x : Longint) : Longint;
begin
    if (x = 1) then
    begin
        sum := 1;
    end
    else
    begin
        Tong := Tong(prod ,sum,x - 1);
        prod := prod * x;
        sum := sum + prod;
        exit(sum);
    end;
end;

begin
    assign(f,'BAI8.INP');
    reset(f);
    readln(f,n);
    close(f);

    assign(f,'BAI8.OUT');
    rewrite(f);
    s1 := 1;
    s2 := 0;
    write(f,Tong(s1,s2,n));
    close(f);
end.
