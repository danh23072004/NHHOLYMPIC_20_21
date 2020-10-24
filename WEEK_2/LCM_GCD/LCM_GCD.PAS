function GCD(a,b : Integer) : Integer;
begin
    while (a <> b) do
    begin
        if a > b then dec(a,b);
        if b > a then dec(b,a);
    end;
    exit(a);
end;

function LCM(a,b,resGCD : Integer) : Integer;
begin
    exit((a * b) div resGCD);
end;

var
    a,b,x,y,resGCD,resLCM : Integer;
    f,g : Text;
begin
    assign(f,'LCM_GCD.INP');
    reset(f);
    assign(g,'LCM_GCD.OUT');
    rewrite(g);
    a := -1;
    b := -1;
    read(f,a,b);
    while (a <> 0) and (b <> 0) do
    begin
        resGCD := GCD(a,b);
        resLCM := LCM(a,b,resGCD);
        writeln(g, resGCD, ' ', resLCM);
        read(f,a,b);
    end;
    close(f);
    close(g);
end.