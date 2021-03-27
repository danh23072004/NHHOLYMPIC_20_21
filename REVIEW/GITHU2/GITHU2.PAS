var
    j,q,so2,so5,dem,res,x : Longint;
    n,k,i : Int64;
    f,g : Text;
begin
    assign(f,'GITHU2.INP');
    reset(f);
    assign(g,'GITHU2.OUT');
    rewrite(g);
    read(f,x);

    for q := 1 to x do
    begin
        read(f,n);
        dem := 0;
        i := 2;
        k := 0;
        so2 := 0;
        so5 := 0;
        while dem <> n do
        begin
            k := i;
            while (k mod 2 = 0) or (k mod 5 = 0) do
            begin
                if (k mod 2 = 0) then
                begin
                    k := k div 2;
                    inc(so2);
                end
                else if (k mod 5 = 0) then
                begin
                    k := k div 5;
                    inc(so5);
                end;
            end;
            if so2 < so5 then
            begin
                inc(dem,so2);
                so5 := so5 - so2;
                so2 := 0;
            end
            else
            begin
                inc(dem,so5);
                so2 := so2 - so5;
                so5 := 0;
            end;

            if n = dem then break; {Sau khi biet ket qua thi ngat ra khoi vong lap}

            if (i mod 10 = 4) or (i mod 10 = 5) then
                inc(i,1)
            else
                inc(i,2);
        end;
        writeln(g,i);
    end;
    close(f);
    close(g);
end.
