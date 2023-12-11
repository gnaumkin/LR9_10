program z3;
var
  arr: array[1..10] of Integer;
  lastnegi, i: Integer;
begin
  arr[1] := 2;
  arr[2] := -5;
  arr[3] := 10;
  arr[4] := -8;
  arr[5] := 3;
  lastnegi := 0;
  for i := 1 to 10 do
  begin
    if arr[i] < 0 then
      lastnegi := i;
  end;
  WriteLn('Последний отрицательный элемент: ', lastnegi);
end.