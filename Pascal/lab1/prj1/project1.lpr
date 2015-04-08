program lab_s01e02_invalid_number;
const MAXN=20;
var N:real;
begin
  repeat
    writeln('Plaese enter your number');
    readln(N);
  until (N<1) or (N>MAXN);
  writeln('You have entered an invalid number');
  writeln('Please press <Enter> to exit');
  readln;
end.

