program lab_s02_e1_procedures;
uses crt,math;
const n=3;
variant=11;
type Vector=array[1..n] of integer;
     Matrix=array[1..n] of Vector;
var i,j:integer;
    t:text;
    M:Matrix;
    V:Vector;
procedure ReadArr(var M:Matrix; V:vector);
begin
 for i:=1 to n do
  begin
  //writeln('Please enter vector ', n,' values:');
    for j:=1 to n do
     begin
      write('V[',i,',',j,']=');
      readln(V[i]);
      if V[i]=0 then V[i]:=variant;
      M[i,j]:=V[i];
  end;
 writeln;
 end;
 end;
 procedure WriteArr(var M:Matrix; V:vector);
 begin
 assign(t,'output.txt');
 rewrite(t);
 writeln('Your initial matrix: ');
   for i:=1 to n do
     begin
       for j:=1 to n do
         begin
           write(M[i,j]:4);
           write(t,M[i,j]:4);
         end;
       writeln;
       writeln(t);
     end;
 close(t);
end;
procedure Calc(var M:Matrix);
var k:integer;
begin
  k:=0;
   for i:=1 to n do
     begin
       for j:=1 to n do
         begin
           if(i>=j) then
            begin
              if(M[i,j]>=7) then k:=k+1; //the number of suitable numbers
            end;
         end;
     end;
  writeln('The number of suitable numbers= ',k);
  writeln(k,' mod 2= ',k mod 2);
  writeln(k,' mod 3= ',k mod 3);
end;
begin
  clrscr;
  ReadArr(M,V);
  WriteArr(M,V);
  Calc(M);
  write('Please press <Enter> to exit');
  readln;
end.

