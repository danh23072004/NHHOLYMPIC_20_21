type
    List = array[1..100000] of Longint;
var
    i,n,t,k,x,y,dem : Longint;
    f : Text;
    d : List;

function Find(x : Longint) : Longint;
begin
    while (x <> d[x]) do
        x := d[x];
    Find := x;
end;

function Union(x,y : Longint) : Longint;
var
    masterx, mastery : Longint;
begin
    masterx := Find(x);
    mastery := Find(y);
    if (masterx = mastery) then exit(0);
    if (masterx > mastery) then
        d[masterx] := mastery
    else
        d[mastery] := masterx;
    exit(1);
end;

begin
    assign(f,'CONGVIEN.INP');
    reset(f);
    readln(f,n,k);
    for i := 1 to n do
        d[i] := i;

    dem := n;
    for i := 1 to k do
    begin
        readln(f,x,y);
        dec(dem,Union(x,y));
    end;

    assign(f,'CONGVIEN.OUT');
    rewrite(f);
    write(f,dem);
    close(f);
end.
