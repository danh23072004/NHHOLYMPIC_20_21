var
    i,n,t,x,y,pos : Longint;
    s : array[1..50000] of Char;
    ktx,kty : Boolean;
    f : Text;
begin
    assign(f,'BAI1.INP');
    reset(f);
    n := 1;
    while not eoln(f) do
    begin
        read(f,s[n]);
        inc(n);
    end;
    close(f);
    dec(n);

    x := 0;
    y := 0;
    pos := 0;
    ktx := false;
    kty := false;
    for i := 1 to n - 1 do
    begin
        if (s[i] = '(') and (s[i + 1] = '(') then
        begin
            x := i;
            ktx := true;
        end
        else if (s[i] = ')') and (s[i + 1] = ')') then
        begin
            y := i;
            kty := true;
        end;

        if (ktx = true) or (kty = true) then
        for t := i + 1 to n - 1 do
        begin
            if ((ktx = true) and (s[t] = ')') and (s[t + 1] = ')')) then
            begin
                y := t;
                kty := true;
            end;
            if ((kty = true) and (s[t] = '(') and (s[t + 1] = '(')) then
            begin
                x := t;
                ktx := true;
            end;
            if (x < y) and (ktx = true) and (kty = true) then
            begin
                inc(pos);
                if (ktx = true) then kty := false;
                if (kty = true) then ktx := false;
            end;
        end;
        ktx := false;
        kty := false;
    end;

    assign(f,'BAI1.OUT');
    rewrite(f);
    write(f,pos);
    close(f);
end.