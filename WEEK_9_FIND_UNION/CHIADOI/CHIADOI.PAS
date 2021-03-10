type
    List = array[1..100000] of Longint;
    HS = record
        team : Longint;  { team la A, B, C, D quy doi thanh 1, 2, 3, 4}
        mem : Longint;
    end;
    ListHS = array[1..100000] of HS;
var
    i,n,t,j : Longint;
    f : Text;
    s,st : String;
    d : ListHS; {mang xu ly chu cai}
    a : List; {mang xu ly thanh vien}
procedure Omit(var s : String);
var
    c : Char;
    st : String;
    i,k : Longint;
begin
    st := '';
    while (s <> '') do
    begin
        st := st + s[1];
        c := s[1];
        while (Pos(c,s) > 0) do Delete(s,Pos(c,s),1);
    end;
    s := st;
end;

function FindLetter(x : Longint) : Longint;
begin
    while (d[x].team <> x) do x := d[x].team;
end;

function FindMember(x : Longint) : Longint;
begin
    while (a[x] <> x) do x := a[x];
end;

function UnionLetter(x,y : Longint) : Longint;
var
    mX,mY : Longint;
begin
    mX := FindLetter(x);
    mY := FindLetter(y);
    if (mX = mY) then exit(0)
    else
        if (mX > mY) then
        begin
            d[mX].team := d[mY].team;
            {d[mX].mem := d[mY].mem;}
        end
        else
        begin
            d[mY].team := d[mX].team;
            {d[mY].mem := d[mY].mem;}
        end;
    exit(1);
end;

function UnionMember(x,y : Longint) : Longint;
var
    mX,mY : Longint;
begin
    mX := FindMember(x);
    mY := FindMember(y);
    if (mX = mY) then exit(0)
    else
        if (mX > mY) then
        begin
            a[mX] := a[mY];
        end
        else
        begin
            a[mY] := a[mX];
        end;
    exit(1);
end;

procedure Process(s : String; id : Longint);
var
    i,t,kI,kT,mas : Longint;
begin
    i := 1;
    if length(s) > 1 then
    for t := i + 1 to length(s) do
    begin
        kI := Ord(s[i]) - 64;
        kT := Ord(s[t]) - 64;
        if (d[kI].mem = 0) then
            d[kI].mem := id;
        if (d[kT].mem = 0) then
            d[kT].mem := id;
        if UnionLetter(kI,kT) = 1 then
        begin
            UnionMember(d[kI].mem, d[kT].mem);
            {
            mas := find(kI);
            d[mas].mem := d[mas].mem + Chr(id + 48) + ' ';
            if kI <> mas then d[kI].mem := '';
            if kT <> mas then d[kT].mem := '';
            }

        end;
    end
    else
    begin
        kI := Ord(s[1]) - 64;
        {
        d[kI].mem := d[kI].mem + Chr(id + 48) + ' ';
        }
        if d[kI].mem = 0 then
            d[kI].mem := id;
    end;
end;

begin
    assign(f,'CHIADOI.INP');
    reset(f);
    readln(f,n);
    for i := 1 to 26 do
    begin
        d[i].team := i;
        {d[i].mem := '';}
        d[i].mem := 0;
    end;
    for i := 1 to n do a[i] := i;

    for i := 1 to n do
    begin
        readln(f,s);
        Omit(s);
        Process(s,i);
    end;
    close(f);

    assign(f,'CHIADOI.OUT');
    rewrite(f);
    {
    for i := 1 to 26 do
    begin
        if (d[i].team = i) and (d[i].mem <> '') then
            writeln(f,d[i].mem);
    end;
    }
    for i := 1 to n do
    begin
        if a[i] = i then
        begin
            for j := i to n do
                if FindMember(j) = i then write(f,j,' ');
            writeln(f);
        end;
    end;
    close(f);
end.
