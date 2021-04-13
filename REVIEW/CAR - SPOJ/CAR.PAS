type
    List = array[1..10000] of Longint;
var
    i,n,t,min,j,wait,pos,res : Longint;
    a,b : List;
    c : array[1..10000] of Boolean;
    f : Text;
begin
    assign(f,'CAR.INP');
    reset(f);
    readln(f,n);
    for i := 1 to n do read(f,a[i]);
    readln(f);
    for i := 1 to n do read(f,b[i]);
    close(f);

    res := 0;
    fillchar(c,10000,true);
    for i := 1 to n do
    begin
        pos := 0;
        min := 0;
        for j := 1 to n do
        begin
            wait := res;
            for t := 1 to n do
            begin
                if (c[j] = true) and (c[t] = true) and (j <> t) then
                    inc(wait,b[j] * a[t]);
            end;
            if (j = 1) or (wait < min) and (c[j] = true) then
            begin
                min := wait;
                pos := j;
            end;
        end;
        c[pos] := false;
        inc(res,min);
    end;

    for i := 1 to n do
        inc(res,a[i]*b[i]);

    assign(f,'CAR.OUT');
    rewrite(f);
    write(f,res);
    close(f);
end.