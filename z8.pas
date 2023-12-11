program z8;
const
  r = 8;
  c = 8;
var
  matrix: array[1..r, 1..c] of Integer;
  resultArray: array[1..r] of Integer;
  i, j: Integer;
begin
  Randomize;
  for i := 1 to r do
  begin
    for j := 1 to c do
    begin
      matrix[i, j] := Random(11);
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
    resultArray[i] := -1;
    for j := 1 to c - 1 do
    begin
      if matrix[i, j] + matrix[i, j + 1] = 7 then
      begin
        resultArray[i] := 1;
        Break;
      end;
    end;
  end;
  WriteLn('Одномерный массив:');
  for i := 1 to r do
    WriteLn(resultArray[i]);
end.