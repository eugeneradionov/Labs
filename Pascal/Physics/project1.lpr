program project1; //Created by Eugene Radionov

uses crt;
const a=0.9;
var n,i:integer;
    t,Avv,Dvi,Dvi2,Sdv,DV,E,Sx:real;
    M:array of real;

begin
  clrscr;
  write('Please enter the number of values: ');
  readln(n);
  setlength(M,n);

  Avv:=0;
  for i:=1 to n do
    begin
      write('X[',i,']=');
      readln(M[i]);
      Avv:=Avv+M[i];
    end;

  writeln;

  Avv:=Avv/n;
   writeln('Average value=',Avv:8:4);
   writeln;

      for i:=1 to n do
     begin
       Dvi:=abs(Avv-M[i]);
       Dvi2:=Dvi*Dvi;
       Sdv:=Sdv+Dvi2;
       writeln('Δx','[',i,']=',Dvi:8:4);
       writeln('Δx^2','[',i,']=',Dvi2:8:4);
       writeln;
     end;

   writeln;

   Sx:=sqrt(Sdv/(n*(n-1)));
   writeln('S<x>=',Sx:8:4);

   writeln;

   writeln('Please enter t(a,n)');
   readln(t);

   DV:=t*Sx;
   Writeln('ΔV=',DV:8:4);

   E:=(DV/Avv)*100;
   writeln('ε=',E:8:4,' %');

   writeln;

   writeln('Answer:',Avv:8:4,' ±',DV:8:4);

   writeln;

   write('Please press <Enter> to exit');
   readln;
end.

