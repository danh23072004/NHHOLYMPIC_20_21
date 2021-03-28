var
    s : String;
    i,n,t,top,mas,x,res : Integer;
    f : Text;
    a : array[1..10000] of Integer;

procedure Push(x : Integer);
begin
    inc(top);
    a[top] := x;
end;

function Pop() : Integer;
begin
    Pop := a[top];
    dec(top);
end;

begin
    read(s);

    top := 0;
    mas := 0;
    res := 0;
    for i := 1 to length(s) do
    begin
        if (s[i] = '(') then
            Push(0)
        else if (s[i] = ')') then
        begin
            mas := 0;
            while a[top] <> 0 do
            begin
                if (a[top] = -1) then dec(top);
                if a[top] = 0 then break;
                inc(mas,Pop());
            end;
            a[top] := -1;
            Push(mas);
        end
        else
        begin
            if s[i] = 'C' then
                Push(12)
            else if s[i] = 'O' then
                Push(16)
            else if s[i] = 'H' then
                Push(1)
            else if s[i] in ['1'..'9'] then
            begin
                x := Ord(s[i]) - 48;
                mas := Pop() * x;
                Push(mas);
            end;
        end;
    end;

    for i := 1 to top do
    begin
        if a[i] <> -1 then
        inc(res,a[i]);
    end;

    write(res);
end.