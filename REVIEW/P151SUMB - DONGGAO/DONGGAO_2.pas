const fi = 'DONGGAO.INP';
      fo = 'DONGGAO.OUT';
var n, i: longint;

procedure Stop;
begin
 close(input); close(output);
 halt;
end;

begin
 assign(input, fi); reset(input);
 assign(output, fo); rewrite(output);

 readln(n);
 for i:=n div 5 downto 0 do
  if (n-5*i) mod 3 = 0 then
   begin
    writeln(i + (n-5*i) div 3);
    Stop;
   end;

 writeln(-1);

 close(input); close(output);
end.
