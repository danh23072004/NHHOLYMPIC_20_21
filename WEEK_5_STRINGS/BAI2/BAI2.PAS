var
    i,n,t,j : Integer;
    f : Text;
    s1,s2,tam,kq : String;
    st1,st2 : array[1..10000] of String;
begin
    assign(f,'BAI2.INP');
    reset(f);
    n := 0;
    while not eof(f) do
    begin
        inc(n);
        readln(f,st1[n]);
    end;
    close(f);

    for i := 1 to n do
        st2[i] := st1[i];
    kq := '';
    s1 := '';
    s2 := '';
    { s1 la 1 bo so goc sau khi doi tinh tu i
      s2 la cac bo chuyen doi tu i }

    for t := 1 to n do
            s1 := s1 + st1[t];

    for i := 1 to n do
    begin

        for t := i + 1 to n do
        begin
            for j := i to n do
                st1[j] := st2[j];
            tam := st2[i];
            st2[i] := st2[t];
            st2[t] := tam;

            s2 := '' + kq;
            for j := i to n do
                s2 := s2 + st2[j];

            if s2 > s1 then
            begin
                s1 := s2;
                kq := kq + st2[i];
            end;
        end;
    end;

    assign(f,'BAI2.OUT');
    rewrite(f);
    write(f,s1);
    close(f);
end.
