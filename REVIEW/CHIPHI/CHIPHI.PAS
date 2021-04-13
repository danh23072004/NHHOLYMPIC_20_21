type
    val = record
        des : Longint;
        cos : Longint;
    end;
var
    i,n,t,p,m,r : Longint;
    d : array[1..100000] of val;
    x,y : array[1..100000] of Longint;
    a : array[1..250] of Longint;
    s : array[1..10000,1..2] of Longint;
    f : Text;

function Find(x : Longint) : Longint;
begin
    while x <> d[x].des do
    begin
        x := d[x].des
    end;
    exit(x);
end;

function Union(x,y,p : Longint) : Longint;
begin
    d[y].des := x;
    d[y].cos := p;
end;

begin
    assign(f,'CHIPHI.INP');
    reset(f);
    readln(f,n,m,r);
    for i := 1 to n do readln(f,a[i]);
    for i := 1 to m do readln(f,x[i],y[i],a[i]);
    for i := 1 to r do readln(f,s[i,1],s[i,2]);
    close(f);

    for i := 1 to r do
    begin
        fillchar(d,100000,0);

    end;

    assign(f,'CHIPHI.OUT');
    rewrite(f);
    close(f);
end.
