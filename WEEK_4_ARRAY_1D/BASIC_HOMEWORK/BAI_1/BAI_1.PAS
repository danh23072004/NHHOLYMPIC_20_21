type
    Mang = array[1..100] of Integer;
var
    i,n,t,dem,min,max, posmin1, posmin2, posmax1, posmax2, countmin, countmax : Integer;
    f : Text;
    a : Mang;

procedure Input(var a : Mang; var n : Integer);
begin
    assign(f,'BAI_1.INP');
    reset(f);
    readln(f,n);
    for i := 1 to n do
        read(f,a[i]);
    close(f);
end;

procedure DemSoChinhPhuong(a : Mang; var dem : Integer);
begin
    for i := 1 to n do
        if frac(sqrt(a[i])) = 0 then
            inc(dem);
end;

procedure MinMax(a : Mang; min, max, posmin1, posmin2, posmax1, posmax2, countmin, countmax : Integer);
var
    i : Integer;
begin
    min := a[1];
    max := a[1];
    posmin1 := -1;
    posmax1 := -1;
    posmin2 := -1;
    posmax2 := -1;
    countmin := 0;
    countmax := 0;
    for i := 2 to n do
    begin
        if a[i] < min then
        begin
            min := a[i];
            inc(countmin);
            posmin1 := i;
        end
        else if a[i] > max then
        begin
            max := a[i];
            inc(countmax);
            posmax1 := i;
        end
        else if a[i] = min then
        begin
            inc(countmin);
            posmin2 := i;
        end
        else if a[i] = max then
        begin
            inc(countmax);
            posmax2 := i;
        end;
    end;
end;

{Main Program}
begin
    Input(a,n);
    DemSoChinhPhuong(a,dem);
    MinMax(a, min, max, posmin1, posmin2, posmax1, posmax2, countmin, countmax);
end.
