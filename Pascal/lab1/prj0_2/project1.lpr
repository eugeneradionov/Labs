program lab3_2;
uses crt;
const n=11;
      variant=3;
      r=2/3;
      p=0.000000007;
var z,x,y,a,b,t:real;
begin
  clrscr;
  writeln('Please enter t');
  readln(t);
  if t<>1 then
  begin
    x:=sin(t)/cos(t);
    writeln('x= ',x);
  end
  else writeln('Sorry, but cos(t)=0, X can not be calculated');
  if t>0 then
  begin
    a:=exp(2*ln(sin(pi/n+p)));//numenator
    b:=3*exp((5-r)*(ln(t)/ln(10)))-(n/2);//denominator
    if b<>0 then
      begin
        z:=a/b;
        z:=abs(z);
        y:=exp(2*ln(z));
        writeln('z= ',z);
        writeln('y= ',y);
      end
     else writeln('Invalid b');
  end
  else writeln('Invalid t, Z and Y can not be calculated');

  write('Please press <Enter> to exit');
  readln;
end.

