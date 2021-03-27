var
    i,n,t,x,res : Integer;
    f : Text;
    dem : array[1..2] of Integer;
procedure Try(x,n : Integer);
var
    i,j : Integer;
begin
    if n < 0 then exit();
    if n = 0 then
    begin

        if x < res then
            res := x;
        exit();
    end
    else
    begin
        for i := 1 to 2 do
        begin
            Try(x + 1,n - dem[i]);
        end;
    end;
end;

begin
    assign(f,'DONGGAO.INP');
    reset(f);
    read(f,n);
    close(f);

    res := 5000;
    dem[1] := 3;
    dem[2] := 5;
    Try(0,n);

    assign(f,'DONGGAO.OUT');
    rewrite(f);
    if res = 5000 then
        write(f,-1)
    else
        write(f,res);
    close(f);
end.