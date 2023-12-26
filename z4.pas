program z4;
const
  size = 5;
var
  array1: array[1..size] of Integer;
  array2: array[1..size] of Integer;
  sum1, sum2, i: Integer; // фактические, глобальные, по ссылке
begin
  Randomize;
  for i := 1 to size do
  begin
    array1[i] := Random(21) - 10;
    array2[i] := Random(21) - 10;
  end;
  WriteLn('Массив 1:');
  for i := 1 to size do
    WriteLn(array1[i]);
  WriteLn('Массив 2:');
  for i := 1 to size do
    WriteLn(array2[i]);
  sum1 := 0;  // локальные
  sum2 := 0;
  for i := 1 to SIZE do
  begin
    if array1[i] > 0 then
      sum1 := sum1 + array1[i];
    if array2[i] > 0 then
      sum2 := sum2 + array2[i];
  end;
  if sum1 < sum2 then
  begin
    WriteLn('Умножаем элементы 1 массива на 10:');
    for i := 1 to size do
    begin
      array1[i] := array1[i] * 10;
      WriteLn(array1[i]);
    end;
  end
  else
  begin
    WriteLn('Умножаем элементы 2 массива на 10:');
    for i := 1 to SIZE do
    begin
      array2[i] := array2[i] * 10;
      WriteLn(array2[i]); // фактические
    end;
  end;
end.
