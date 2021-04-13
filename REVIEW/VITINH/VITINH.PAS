var
    i,n,t,k,dem,len : Int64;
    f : Text;

function pow(x,y : Longint) : Int64;
var
    i,res : Int64;
begin
    res := 1;
    i := 1;
    while i <= y do
    begin
        res := res * x;
        inc(i);
    end;
    exit(res);
end;

begin
    assign(f,'VITINH.INP');
    reset(f);
    read(f,n);
    close(f);

    k := 0;
    len := 9;
    while (n >= len) do
    begin
        inc(dem,9 * pow(10,k) * (k + 1));
        inc(k);
        inc(len,9 * pow(10,k));
    end;
    inc(dem,(n - pow(10,k) + 1)*(k + 1));

    assign(f,'VITINH.OUT');
    rewrite(f);
    write(f,dem);
    close(f);
end.