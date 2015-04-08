program lab_s01e02_vector_to_matrix;
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
        if M[i,j]>0 then
        begin
         if (M[i,j]<10) or (M[i,j]=0) then write(' ');
         write(' ',M[i,j]:5,' ');
        end
        else
        begin
          if M[i,j]>-10 then write(' ',M[i,j]:5,' ')
          else write(M[i,j]:5,' ');
        end;
        if (i>=j) then
          begin
            if (M[i,j]>0) and (M[i,j]>=7) then k:=k+1; //the number of suitable numbers
          end;
      end;
      writeln;
     end;

   writeln;
   write('Please enter line number, which will be replaced: ');
   readln(a);
   while (a<1) or (a>n) do
     begin
       write('Please enter line number, which will be replaced: ');
       readln(a);
     end;

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
       if M[i,j]>0 then
        begin
         if (M[i,j]<10) or (M[i,j]=0) then
           begin
             write(' ');
             write(t,' ');
           end;
         write(' ',M[i,j],' ');
         write(t,' ',M[i,j],' ');
        end
        else
        begin
          if M[i,j]>-10 then
            begin
              write(' ',M[i,j],' ');
              write(t,' ',M[i,j],' ');
            end
          else
            begin
              write(M[i,j],' ');
              write(t,M[i,j],' ');
            end;
        end;
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


