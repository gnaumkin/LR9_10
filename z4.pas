program z4;
var a, b: array of integer;  // глобальные, формальные
i, sum1, sum2: integer; // локальные, формальные 
procedure mas(i, sum1, sum2: integer; var a, b: array of integer); // фактические
const size = 5;
var
  ae,be: array [1..size] of integer; // локальные
begin
  // создание и вывод начальных массивов
  writeln('Начальные 2  массива:');
  for i := 1 to size do
  begin
    ae[i] := random(21) - 10;
    be[i] := random(21) - 10;
  end;
  writeln(ae);
  writeln();
  writeln(be);
  writeln;
  // вычисление сумм положительных элементов в каждом массиве
  for i := 1 to size do
  begin
    if ae[i] > 0 then
      sum1 := sum1 + ae[i];
    if be[i] > 0 then
      sum2 := sum2 + be[i];
  end;
  // умножение на 10 элементов массива, у которого сумма положительных элементов меньше
  if sum1 < sum2 then
    for i := 1 to size do
      ae[i] := ae[i] * 10
  else
    for i := 1 to size do
      be[i] := be[i] * 10;
  // вывод изменённых массивов
  writeln('Изменённые 2 массива:');
  writeln(ae);
  writeln();
  writeln(be);
end;
begin
  mas(i, sum1, sum2, a, b);
end.
