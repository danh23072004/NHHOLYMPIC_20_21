var
    n,i,j : Longint;
    f : Text;
    s : String;

function check(st : String) : Boolean;
var
    i,n : Longint;
begin
    n := length(st);
    for i := 1 to n div 2 do
        if st[i] <> st[n - i + 1] then exit(false);
    exit(true);
end;

begin
    assign(f,'ROBOTCONGNGHIEP.INP');
    reset(f);
    read(f,s);
    close(f);

    assign(f,'ROBOTCONGNGHIEP.OUT');
    rewrite(f);
    write(f,check(s));
    close(f);
end.