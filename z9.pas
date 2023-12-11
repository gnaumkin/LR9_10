program z9;
const
  r = 8;
  c = 8;
var
  matrix: array[1..r, 1..c] of Integer;
  resultArray: array[1..r] of Integer;
  i, j, sum, avr: Integer;
  cavr: Boolean;
begin
  Randomize;
  for i := 1 to r do
  begin
    for j := 1 to c do
    begin
      matrix[i, j] := Random(101);
    end;
  end;
  WriteLn('Двумерный массив:');
  for i := 1 to r do
  begin
    for j := 1 to c do
    begin
      Write(matrix[i, j]:4);
    end;
    WriteLn;
  end;
  for i := 1 to r do
  begin
    resultArray[i] := matrix[i, 1];
    for j := 2 to c do
    begin
      if matrix[i, j] < resultArray[i] then
      begin
        resultArray[i] := matrix[i, j];
      end;
    end;
  end;
  WriteLn('Одномерный массив:');
  for i := 1 to r do
    WriteLn(resultArray[i]);
  sum := 0;
  for i := 1 to r do
    sum := sum + resultArray[i];
  avr := sum div r;
  cavr := False;
  for i := 1 to r do
  begin
    if resultArray[i] = avr then
    begin
      cavr := True;
      Break;
    end;
  end;
  if cavr then
    WriteLn('Есть среднее арифметическое.')
  else
    WriteLn('Нет среднего арифметического.');
end.