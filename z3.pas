program z3;
var a:array of integer; // глобальные, формальные
i, zd: integer; // локальные, формальные
function zad(b: array of integer) : integer; // фактические
var j,z : integer;
begin
  for j:=length(b)-1 downto 0 do begin
    if b[j]<0 then begin
      z:=j+1;
      break;
      end
    else z:=0;
  end;
  zad:=z;
end;
  begin
    setlength(a,5);
    for i:=0 to length(a)-1 do
      read (a[i]);
    zd:=zad(a);
    writeln(zd)
end.
