var
    i,n,t,k1,k2,posins,len,word,c,h : Longint;
    f : Text;
    s,st,stmp,s1,s2 : Ansistring;
    kt : Boolean;
begin
    assign(f,'XEPCHU.INP');
    reset(f);
    read(f,s);
    close(f);

    len := length(s);
    s := s + ' ';
    word := 0;
    kt := true;
    st := Copy(s,1,pos(' ',s) - 1);
    st := st + ' ';
    Delete(s,1,pos(' ',s));
    while s <> '' do
    begin
        stmp := st;
        kt := true;
        posins := 0;
        while stmp <> '' do
        begin
            k1 := pos(' ',s) - 1;
            k2 := pos(' ',stmp) - 1;
            s1 := copy(s,1,k1);
            s2 := copy(stmp,1,k2);
            if s1 < s2 then
            begin
                stmp := copy(s,1,k1) + ' ';
                c := pos(s2,st);
                h := length(s1);
                Insert(stmp,st,pos(s2,st));
                break;
            end;
            inc(posins,pos(' ',stmp) + 1);
            Delete(stmp,1,pos(' ',stmp));
        end;
        if stmp = '' then
        begin
            stmp := copy(s,1,k1) + ' ';
            Insert(stmp,st,length(st) + 1);
            stmp := '';
        end;
        Delete(s,1,pos(' ',s));
        inc(word);
    end;

    assign(f,'XEPCHU.OUT');
    rewrite(f);
    writeln(f,word + 1,' ',len);
    write(f,st);
    close(f);
end.