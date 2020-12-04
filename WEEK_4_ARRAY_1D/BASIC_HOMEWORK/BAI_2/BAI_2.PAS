type
    list = array[1..100] of Integer;
var
    i,n,t,x1,x2 : Integer;
    a : list;
    f : Text;

procedure Input(var a : list; var n : Integer);
begin
    assign(f,'BAI_2.INP');
    reset(f);
    readln(f,n);
    for i := 1 to n do readln(f,a[i]);
    close(f);
end;

{ Cau a }
function Nearest(a : list; x,n : Integer) : Integer;
var
    delta,min : Integer;
begin
    min := 0;
    for i := 1 to n do
    begin
        delta := abs(x - a[i]);
        if (min <> 0) and (delta < min) then
        begin
            min := delta;
            Nearest := a[i];
        end;
    end;
end;

{Cau b}
function MaxBelowX(a : list; x,n : Integer) : Integer;
var
    max,t : Integer;
begin
    for i := 1 to n do
        if a[i] < x then
        begin
            max := a[i];
            t := i;
            break;
        end;
    for i := t + 1 to n do
    begin
        if (a[i] < x) and (a[i] > max) then
            max := a[i];
    end;
    MaxBelowX := max;
end;

{Cau c}
procedure FindAdjacent(a : list; x1,x2,n : Integer);
var
    i,max : Integer;
begin
    max := abs(a[1] - a[2]);
    for i := 2 to n - 1 do
        if (max < abs(a[i + 1] - a[i])) then
        begin
            max := abs(a[i + 1] - a[i]);
            x1 := a[i];
            x2 := a[i + 1];
        end;
end;

{Cau d}
function FindRepeat(a : list; n : Integer) : Integer;
var
    i,t,dem : Integer;
    c : list;
begin

    for i := 1 to n do
    begin
        for
    end;
end;
{Main Program}
begin

end.
