program project1;
uses crt;
const n=11;
      variant=3;
      r=2/3;
      p=0.000000007;
var z,x,y,a,b,t:real;
begin
  clrscr;
  t:=1.5;
  x:=sin(t)/cos(t);
  if t>0 then
  begin
    a:=exp(2*ln(sin(pi/n+p)));//numenator
    b:=3*exp((5-r)*(ln(t)/ln(10)))-n/2;//denominator
    if b<>0 then
      begin
        z:=a/b;
        y:=exp(2*ln(z));
        writeln('z= ',z);
        writeln('y= ',y);
      end
     else writeln('Invalid b');
  end
  else writeln('Invalid t, Z and Y can not be calculated');
  writeln('x= ',x);

  write('Please press <Enter> to exit');
  readln;
end.

