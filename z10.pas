program z10;
const
  r = 8;
  c = 8;
var
  matrix: array[1..r, 1..c] of Integer;
  resultArray: array[1..r] of Integer;
  i, j: Integer;
  maxc: Integer;
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
    maxc := 0;
    for j := 1 to c do
    begin
      if matrix[i, j] > matrix[i, maxc] then
      begin
        maxc := j;
      end;
    end;
    maxc := 0;
    for j := 1 to c do
    begin
      if matrix[i, j] = matrix[i, maxc] then
      begin
        Inc(maxc);
        if maxc > 1 then
        begin
          Break;
        end;
      end;
    end;
    if maxc = 1 then
    begin
      resultArray[i] := 1;
    end
    else
    begin
      resultArray[i] := -1;
    end;
  end;
  WriteLn('Одноменый массив:');
  for i := 1 to r do
  begin
    WriteLn(resultArray[i]);
  end;
end.