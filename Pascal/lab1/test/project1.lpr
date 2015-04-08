program Vector_to_Matrix;
uses crt,math,sysutils;
const n=5;
      variant=11;
type Vector=array[1..n] of integer;
     Matrix=array[1..n] of Vector;
var V:Vector;
    M:Matrix;
    i,a,j,k:integer;
    t:text;
begin
  clrscr;
  randomize;
  writeln('Please enter vector ', n,' values:');
  for i:=1 to n do
    begin
      write('V[',i,']=');
      readln(V[i]);
      if V[i]=0 then V[i]:=variant;
    end;

  writeln;
  write('Your vector: ');
  for i:=1 to n do
  begin
    write(V[i]);
    if i<>n then write(',');
  end;

  writeln;
  writeln;

  k:=1;
  writeln('Your initial matrix:');
  for i:=1 to n do
    begin
    for j:=1 to n do
      begin
        M[i,j]:=random(100)-50;
        write(M[i,j]:4);
        if (i>=j) then
          begin
            if (M[i,j]>0) and (M[i,j]>=7) then k:=k+1; //the number of suitable numbers
          end;
      end;
      writeln;
     end;

   writeln;
   repeat
     write('Please enter line number, which will be replaced: ');
     readln(a);
   until (a>=1) and (a<=n);

     writeln;

     {for j:=1 to n do
     begin
        M[a,j]:=V[j];
     end;}

     M[a]:=V;

   assign(t,'output.txt');
   rewrite(t);

    writeln('Line ',a,' has been replased with your vector');
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

writeln;

  writeln('The number of suitable numbers= ',k);
  writeln(k,' mod 2= ',k mod 2);
  writeln(k,' mod 3= ',k mod 3);

  write('Please press <Enter> to exit');
  readln;
end.

