var
    i,yellow,blue,p,s,delta,x1,x2 : Longint;
    x1, x2 : Real;
begin
    read(blue,yellow);

    s := (blue - 4) div 2;
    p := yellow;

    delta := sqr(s) - 4 * 1 * p;
    x1 := (s + sqrt(delta)) / 2;
    x2 := (s - sqrt(delta)) / 2;

    if (x1 < x2) then
        write(x1 + 2:0:0, ' ', x2 + 2:0:0)
    else
        write(x2 + 2:0:0, ' ', x1 + 2:0:0);
end.