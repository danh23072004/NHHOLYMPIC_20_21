type
    List = array[1..10000] of Integer;
var
    i,n,t,j,max : Longint;
    fi : Text;
    f,a,b : List;

procedure swap(var x,y : Integer);
var
    tam : Integer;
begin
    tam := x;
    x := y;
    y := tam;
end;

procedure sort(var arr : List; left,right : Integer);
var
    x,L,R : Integer;
begin
    x := arr[(left + right) div 2];
    L := left;
    R := right;
    while L <= R do
    begin
        while arr[L] < x do inc(L);
        while arr[R] > x do dec(R);
        if L <= R then
        begin
            swap(arr[L],arr[R]);
            swap(a[L],a[R]);
            inc(L);
            dec(R);
        end;
    end;
    if L < right then sort(arr,L,right);
    if left < R then sort(arr,left,R);
end;

begin
    assign(fi,'PTIT127C.INP');
    reset(fi);
    readln(fi,n);
    for i := 1 to n do
    begin
        readln(fi,a[i],b[i]);
    end;
    close(fi);

    sort(b,1,n);
    for i := 1 to n do f[i] := 1;
    for i := 1 to n do
    begin
        for j := 1 to i - 1 do
            if (b[j] <= a[i]) and (f[i] < f[j] + 1) then
                f[i] := f[j] + 1;
    end;

    max := 0;
    for i := 1 to n do
        if max < f[i] then max := f[i];

    assign(fi,'PTIT127C.OUT');
    rewrite(fi);
    write(fi,max);
    close(fi);
end.