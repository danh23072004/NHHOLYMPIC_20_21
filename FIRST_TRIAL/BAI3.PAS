var
    i,n,t,k,dem,a,b : Longint;
    f : Text;

function DeQuy(var dem,n : Longint; k : Longint) : Longint;
var
    a,b,x,y : Longint;
begin
    if (n <= k) then
    begin
        inc(dem);
        exit();
    end;
        if ((n - k) mod 2 = 0) then
        begin
            dec(n,k);
            a := n div 2;
            b := n div 2;
            inc(b,k);
        end
        else
        begin
            dec(n,k + 1);
            a := n div 2;
            b := n div 2;
            inc(b,k + 1);
        end;
    if (abs(a - b) <> k) then
        inc(dem)
    else
    begin
        DeQuy(dem,a,k);
        DeQuy(dem,b,k);
    end;
end;

begin
    assign(f,'BAI3.INP');
    reset(f);
    read(f,n,k);
    close(f);

    a := 0;
    b := 0;
    DeQuy(dem,n,k);

    assign(f,'BAI3.OUT');
    rewrite(f);
    write(f,dem);
    close(f);
end.
