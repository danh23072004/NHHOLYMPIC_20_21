var
    i,n,m,t,j,pos1,pos2,max : Longint;
    f : Text;
    a : array[1..100000,1..100000] of Byte;
    val : array[1..3] of Byte;

function FindPath(n,m,pos1,pos2 : Longint) : Longint;
var
begin
    for i := 1 to m do
    begin

    end;
end;

begin
    assign(f,'ROBOT.INP');
    reset(f);
    read(f,n,m);
    for i := 1 to n do
    begin
        for j := 1 to m do read(f,a[i,j]);
        readln(f);
    end;
    close(f);

    for i := 1 to n - 1 do
    begin
        pos1 := i;
        pos2 := 1;
        for j := 1 to m do
        begin
            max := -1;
            if (i > 1) and (i < n) then
            begin
                val[1] := a[pos1 - 1,pos2 + 1];
                val[2] := a[pos1,pos2 + 1];
                val[3] := a[pos1 + 1,pos2 + 1];
                if max <= a[pos1 - 1,pos2 + 1] then
                    max := a[pos1 - 1,pos2 + 1]
                else if max <= a[pos1,pos2 + 1] then
                    max := a[pos1,pos2 + 1]
                else if max <=
            end;
        end;
    end;

    assign(f,'ROBOT.OUT');
    rewrite(f);
    close(f);
end.