program z6;
const
  r = 6;
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
      matrix[i, j] := Random(21) - 10;
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
    resultArray[i] := 0;
    for j := 1 to c do
    begin
      if Abs(matrix[i, j]) > 4 then
      begin
        resultArray[i] := matrix[i, j];
        Break;
      end;
    end;
  end;
  WriteLn('Одномерный массив:');
  for i := 1 to r do
    WriteLn(resultArray[i]);
end.