const   fi='';
        nmax=31622;
 
type    data=longint;
var
        f:text;
        n,i,x:data;
        A:array[1..nmax] of data;
 
begin
        assign(f,fi); reset(f);
        readln(f,n);
        close(f);
        x:=trunc(sqrt(n));
        for i:=2 to x do
                A[i]:=0;
 
        for i:=2 to x do
                begin
                        while n mod i = 0 do
                                begin
                                        inc(a[i]);
                                        n:=n div i;
                                end;
                        if n = 1 then
                                break;
                end;
        for i:=2 to x do
                if a[i]<>0 then
                        writeln(i,' ',a[i]);
        if n>1 then writeln(n,' ',1);
        //readln;
end.