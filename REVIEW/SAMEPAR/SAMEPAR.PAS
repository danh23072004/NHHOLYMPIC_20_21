var
    i,n,t,c,p : Longint;
    kt : String;
    k : Byte;
    a : array[1..100] of Longint;
    f : Text;

function Decision(n : Longint; k : Byte) : Byte;
begin
    if (k mod 2 = 1) and (n mod 2 = 0) then
        exit(1);
    if (k mod 2 = 0) and (n mod 2 = 0) then
        exit(2);
    if (k mod 2 = 1) and (n mod 2 = 1) then
        exit(3);
    if (k mod 2 = 0) and (n mod 2 = 1) then
        exit(4);
end;

begin
    assign(f,'SAMEPAR.INP');
    reset(f);
    read(f,n,k);
    close(f);

    c := Decision(n,k);

    if (c = 1) then
    begin
        p := n - 2 * (k - 1);
        if p mod 2 = 0 then
        begin
            fillchar(a,100,2);
            a[k] := p;
            kt := 'YES';
        end
        else
            kt := 'NO'
    end
    else if (c = 2) then
    begin
        p := n - 2 * (k - 1);
        if p mod 2 = 0 then
        begin
            fillchar(a,100,2);
            a[k] := p;
            kt := 'YES';
        end
        else
        begin
            p := n - 1 * (k - 1);
            if p mod 2 = 1 then
            begin
                fillchar(a,100,1);
                a[k] := p;
                kt := 'YES';
            end
            else
                kt := 'NO';
        end;
    end
    else if c = 3 then
    begin
    end

    assign(f,'SAMEPAR.OUT');
    rewrite(f);
    close(f);
end.