const   fi='PTIT127C.INP';
        fo='PTIT127C.OUT';
        nmax=100;
type    data=longint;
var
        f:text;
        A:array[1..nmax,1..nmax] of byte;
        c:array[0..nmax+1,0..nmax+1] of ansistring;
        n:data;
        s:ansistring;

procedure docfile;
var     i,j:data;
begin
        assign(f,fi); reset(f);
        readln(f,n);
        for i:=1 to n do
        begin
                for j:=1 to n do
                        read(f,a[i,j]);
                readln(f);
        end;
        close(f);
end;

function max(a,b:ansistring):ansistring;
begin
if a>b then exit(a); exit(b);
end;

procedure bpa;
var     i,j:data;
begin
        for i:=0 to n do
                begin
                        c[i,0]:='';
                        c[0,i]:='';
                end;

        for i:=1 to n do
                for j:=1 to n do
                        C[i,j]:=max(c[i-1,j],c[i,j-1])+chr(a[i,j]+48);
        s:=c[n,n];
end;

function bindec(s:ansistring):data;
var     i:BYTE;
        dec:data;
begin
        dec:=0;
        for i:=0 to 3 do
                dec:=dec + trunc(exp(ln(2)*i))* (ord(s[4-i])-48);
        exit(dec);
end;

function dechex(n:data):ansistring;
var     du:data;
        tmp:ansistring;
        x:char;

begin
        tmp:='';
        if n=0 then
                exit('0');
        while n<>0 do
                begin
                        du:=n mod 16;
                        n:=n div 16;
                        case du of
                        1..9: x:=chr(du+48);
                        10: x:='A';
                        11: x:='B';
                        12: x:='C';
                        13: x:='D';
                        14: x:='E';
                        15: x:='F';
                        end;
                        tmp:=x+tmp;
        end;
        exit(tmp);

end;

procedure xuli;
var     i:data;
        x,z:data;
begin
        while (length(s)>1) and (s[1]='0') do
                delete(s,1,1);

        while length(s) mod 4 <>0 do
                s:='0'+s;
        z:=-3;
        for i:=1 to length(s) div 4 do
                begin
                        inc(z,4);
                        x:=bindec(copy(s,z,4));
                        write(dechex(x));
                end;

end;

begin
        docfile;
        bpa;
        xuli;
end.
