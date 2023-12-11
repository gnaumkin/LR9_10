program z1;
var
  arr: array[1..5] of Integer;
  p,i: Integer;
begin
  arr[1] := 2;
  arr[2] := 4;
  arr[3] := 6;
  arr[4] := 8;
  arr[5] := 10;
  p := 1;
  for i := 1 to 5 do
  begin
    if arr[i] mod 2 = 0 then
      p := p  * arr[i];
  end;
  WriteLn('Произведение всех четных элементов массива равно: ', p);
end.