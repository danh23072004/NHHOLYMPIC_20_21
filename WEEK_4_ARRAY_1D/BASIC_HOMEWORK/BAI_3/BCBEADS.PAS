type
    List = array[1..80] of Byte;
var
    i,n,t,dem : Integer;
    f : Text;
    a : List;
begin
    assign(f,'BCBEADS.INP');
    reset(f);
    readln(f,n);
    for i := 1 to n do
    begin
        read(f,a[i]);
    end;
    close(f);

    { Bai nay co the toi uu la xet ca 1 doan 000 hoac 111 thay vi xet tung so }

    for i := 1 to n - 1 do
        if a[i] <> a[i + 1] then inc(dem);

    assign(f,'BCBEADS.OUT');
    rewrite(f);
    write(f,dem);
    close(f);
end.