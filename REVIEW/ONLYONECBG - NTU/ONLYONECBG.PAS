var
    i,n,t,pos1,pos2,res : Longint;
    a : array[1..100000,1..3] of Longint;
    f : Text;

function Check(x,y : Longint) : Boolean;
var
    i,t,dem,pos : Longint;
begin
    dem := 0;
    i := 1;
    t := 1;
    pos := 1;
    for i := 1 to 3 do
    begin
        if a[x,i] = a[y,i] then inc(dem);
        if dem = 2 then exit(false);
    end;
    if (dem = 1) then
        exit(true)
    else
        exit(false);
end;

begin
    assign(f,'ONLYONECBG.INP');
    reset(f);
    read(f,n);
    for i := 1 to n do
    begin
        read(f,a[i,1],a[i,2],a[i,3]);
    end;
    close(f);

    res := 0;
    for i := 1 to n - 1 do
    begin
        for t := 1 to 3 do
            if Check(
    end;

    assign(f,'ONLYONECBG.OUT');
    rewrite(f);
    write(f,res);
    close(f);
end.
