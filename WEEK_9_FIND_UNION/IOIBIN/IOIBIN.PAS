type
    List3D = array[1..50000,1..3] of Longint;
    List2D = array[1..50000] of Longint;
var
    i,n,t,p,x,y,max : Longint;
    f : Text;
    a : List3D;
    d : List2D;

function Find(x : Longint) : Longint;
begin
    while (d[x] <> x) do x := d[x];
    exit(x);
end;

procedure Union(x,y : Longint);
var
    masterx, mastery : Longint;
begin
    masterx := Find(x);
    mastery := Find(y);
    if (masterx <> mastery) then
    begin
        if (masterx < mastery) then
            d[mastery] := masterx
        else
            d[masterx] := mastery;
    end;
end;

begin
    assign(f,'IOIBIN.INP');
    reset(f);
    readln(f,p);
    max := 0;
    for i := 1 to p do
    begin
        readln(f,a[i,1],a[i,2],a[i,3]);
        if max < a[i,1] then max := a[i,1];
        if max < a[i,2] then max := a[i,2];
        n := max;
    end;
    close(f);

    for i := 1 to n do d[i] := i;

    assign(f,'IOIBIN.OUT');
    rewrite(f);
    for i := 1 to p do
    begin
        if (a[i,3] = 1) then
        begin
            Union(a[i,1],a[i,2]);
        end;
        if (a[i,3] = 2) then
        begin
            x := Find(a[i,1]);
            y := Find(a[i,2]);
            if (d[x] = d[y]) then
                writeln(f,1)
            else
                writeln(f,0);
        end;
    end;
    close(f);
end.
