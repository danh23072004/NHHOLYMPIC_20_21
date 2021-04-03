type
    List = array[1..2000] of Integer;
    xebuyt = record
        k : Longint;
        t : Longint;
        a : List;
    end;
var
    i,n,m,k,dem,time,seat,j,demng : Longint;
    f : Text;
    tram : array[1..200000] of xebuyt;
    best : array[1..200000] of Longint;
    c : array[1..200000] of Boolean;
    kt : Boolean;

function IsBetter(pos,time : Longint) : Boolean;
var
    kt,ktc : Boolean;
    i,j,dem,max : Longint;
begin
    kt := false;
    ktc := false;
    for i := pos to n do
    begin
        dem := 0;
        for j := 1 to tram[i].k do
        begin
            if tram[i].a[j] <= time then
                inc(dem);
        end;
        if (dem > max) and (ktc = true) then kt := true;
        if (ktc = false) then
        begin
            max := dem;
            ktc := true;
        end;
    end;
    exit(kt);
end;

begin
    assign(f,'XEBUYT.INP');
    reset(f);
    time := 0;
    dem := 0;
    seat := 0;
    read(f,n,m);
    for i := 1 to n do
    begin
        read(f,tram[i].t);
        read(f,tram[i].k);
        for j := 1 to tram[i].k do read(f,tram[i].a[j]);
    end;

    for i := 1 to n do
    begin
        kt := true;
        fillchar(c,200000,true);
        while (kt = true) and (IsBetter(i,time) = false) do
        begin
            kt := false;
            for j := 1 to tram[i].k do
            begin
                if (tram[i].a[j] <= time) and (seat < m) and (c[j] = true) then
                begin
                    inc(seat);
                    kt := true;
                    c[j] := false;
                end;
            end;
            inc(time);
            demng := 0;
            for j := 1 to tram[i].k do
                if c[j] = true then inc(demng);
            if demng = 0 then break;
        end;
    end;

    assign(f,'XEBUYT.OUT');
    rewrite(f);
    write(f,time);
    close(f);
end.
