var
    i,n,t,k2,k3,k4,k5,k7,k6,k8,k9,x,y : Longint;
    a : array[1..9] of Byte;
    f : Text;
begin
    assign(f,'TIMSO2.INP');
    reset(f);
    read(f,n);
    close(f);

    fillchar(a,9,0);
    if n <> 0 then
    begin
        while n mod 2 = 0 do
        begin
            n := n div 2;
            inc(a[2]);
        end;

        while n mod 3 = 0 do
        begin
            n := n div 3;
            inc(a[3]);
        end;

        while n mod 5 = 0 do
        begin
            n := n div 5;
            inc(a[5]);
        end;

        while n mod 7 = 0 do
        begin
            n := n div 7;
            inc(a[7]);
        end;
    end;

    k8 := a[2] div 3;
    k2 := a[2] mod 3;

    if n = 1 then
    begin
    if (a[2]+ a[3]) mod 2 = 0 then
        t := 0
    else
        t := 1;

        for i := 1 to ((a[2] + a[3]) div 2) do
        begin
            if a[2] > (1 + t) then
            begin
                x := 2;
                y := 2;
                dec(a[2],2);
            end
            else if (a[2] = 1 + t) then
            begin
                x := 2;
                y := 3;
                dec(a[2]);
                dec(a[3]);
            end
            else
            begin
                x := 3;
                y := 3;
                dec(a[3],2);
            end;
        if x * y = 4 then inc(a[4]);
        if x * y = 6 then inc(a[6]);
        if x * y = 9 then inc(a[9]);
        end;
    end;
    assign(f,'TIMSO2.OUT');
    rewrite(f);
    if (n = 1) then
        for i := 1 to 9 do
            for t := 1 to a[i] do write(f,i)
    else
        write(f,-1);
    close(f);
end.
