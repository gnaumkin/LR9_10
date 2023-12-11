program z2;
var
  arr: array[1..5] of Integer;
  minabse, maxnege, i: Integer;
begin
  arr[1] := 2;
  arr[2] := -5;
  arr[3] := 10;
  arr[4] := -8;
  arr[5] := 3;
  minabse := arr[1];
  maxnege := 0;
  for i := 2 to 5 do
  begin
    if (maxnege = 0) or (arr[i] < 0) and (arr[i] > maxnege) then
      maxnege := arr[i];
    if abs(arr[i]) < abs(minabse) then
      minabse := arr[i];
  end;
  WriteLn('Минимальный элемент массива: ', minabse);
  WriteLn('Максимальный отрицательный элемент: ', maxnege);
end.