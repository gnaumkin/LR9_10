program z5;
const
  size = 8;
var
  array1: array[1..size] of Integer;
  array2: array[1..size] of Integer;
  i, maxIndex, minIndex: Integer;
  maxElement, minElement: Integer;
  foundMultipleOf5: Boolean;
begin
  Randomize;
  for i := 1 to size do
  begin
    array1[i] := Random(31);
    array2[i] := Random(31);
  end;
  WriteLn('Array 1:');
  for i := 1 to size do
    WriteLn(array1[i]);
  WriteLn('Array 2:');
  for i := 1 to size do
    WriteLn(array2[i]);
  maxElement := array1[1];
  maxIndex := 1;
  for i := 2 to size do
  begin
    if array1[i] > maxElement then
    begin
      maxElement := array1[i];
      maxIndex := i;
    end;
  end;
  foundMultipleOf5 := False;
  for i := 1 to size do
  begin
    if array1[i] mod 5 = 0 then
    begin
      foundMultipleOf5 := True;
      Break;
    end;
  end;
  if foundMultipleOf5 then
  begin
    array1[maxIndex] := 0;
    WriteLn('Заменяем максимальный элемент 1 массива:');
    for i := 1 to size do
      WriteLn(array1[i]);
  end;
  minElement := array2[1];
  minIndex := 1;
  for i := 2 to size do
  begin
    if array2[i] < minElement then
    begin
      minElement := array2[i];
      minIndex := i;
    end;
  end;
  WriteLn('Умножаем на 2 элементы, расположенные после минимального элемента в массиве 2:');
  for i := minIndex + 1 to size do
  begin
    array2[i] := array2[i] * 2;
    WriteLn(array2[i]);
  end;
end.