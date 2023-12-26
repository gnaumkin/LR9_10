program z3;
var
  arr: array[1..10] of Integer;
  lastnegi, i: Integer; // фактические, глобальные, по ссылке
begin
  arr[1] := 2;
  arr[2] := -5;
  arr[3] := 10;
  arr[4] := -8;
  arr[5] := 3;
  lastnegi := 0; // локальные
  for i := 1 to 10 do
  begin
    if arr[i] < 0 then
      lastnegi := i;
  end;
  WriteLn('Последний отрицательный элемент: ', lastnegi); // фактические
end.
