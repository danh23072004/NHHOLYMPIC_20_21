var
    i,n,t,num,max,k : Longint;
    s,st : String;
    f,g : Text;
    snt : array[0..100000] of Boolean;

procedure PrimeSieve(n : Longint);
var
    i,j : Longint;
begin
    fillchar(snt,sizeof(snt),true);
    snt[0] := false;
    snt[1] := false;
    i := 2;
    while i <= trunc(sqrt(n)) do
    begin
        while (snt[i] = false) do
            inc(i);
        for j := 2 to (n div i) do
            snt[i * j] := false;
        inc(i);
    end;
end;

begin
    assign(f,'PRISUSTR.INP');
    reset(f);
    assign(g,'PRISUSTR.OUT');
    rewrite(g);
    while not eof(f) do
    begin
        readln(f,s);
        max := 0;
        for i := 1 to length(s) do
        begin
            num := 0;
            k := 1;
            for t := i to 6 do
            begin
                inc(num,(ord(s[t]) - 48));
                if (t > length(s)) or ((t = 6) and (num > 100000)) then break;
                PrimeSieve(num);
                if (snt[num] = true) and (num > max) then
                    max := num;
                num := num * 10;
            end;
        end;
        if (max <> 0) then writeln(g,max);
    end;

    repeat
    begin
        max := 1 + 2;
        s := '';
        s := '2';
    end
    until s <> ('12345');

    close(f);
    close(g);
end.
