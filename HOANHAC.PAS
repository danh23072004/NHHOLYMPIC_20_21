var
    i,n,j,k,dem,max : Longint;
    f : Text;
    a : array[1..500000] of Longint;

function Count(p1,p2 : Longint) : Longint;
var
    i,j : Longint;
begin

end;

begin
    assign(f,'HOANHAC.INP');
    reset(f);
    readln(f,n);
    for i := 1 to n do readln(f,a[i]);
    close(f);

    max := 0;
    for i := 1 to n - 2 do
    begin
        max := 0;
        for j := i + 2 to n do
        begin
            if max < a[j - 1] then max := a[j - 1];
            if a[i] < max then break;
            if (a[j] >= max) and (a[i] >= max) then
                inc(dem);
        end;
    end;

    assign(f,'HOANHAC.OUT');
    rewrite(f);
    write(f,dem + n - 1);
    close(f);
end.
