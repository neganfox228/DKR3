uses crt;
var n:byte;
function func (var x:real):real;
begin
  var f:real;
 f:=1*(exp(ln(x)*3))+(0)*(exp(ln(x)*2))+(3)*x+(3);
 func:=f;
end;

function pervoobr(x:real):real;
begin
pervoobr:=1/4*(exp(ln(x)*4))+3/2*(exp(ln(x)*2))+3*x;
end;

procedure ploshad;
begin
 println('Пределы интегрирования');
  var a := ReadInteger('Первая координата:');
  var b := ReadInteger('Вторая координата:');
  var n := ReadInteger('Количество секций:');
  var h:=(b-a)/n;
  var f:real;
  var x:=a+h;
  var s:real;
  for var i:=0 to n-1  do begin
 s+=func(x);
 x+=h;
  end;
 s:=s*h;
 println('Площадь:',s);
 Textcolor(1);
 Println('----------------------------------------------------');
 Textcolor(15);
 println('Для вычисления погрешности введите 2');
 println('Чтобы выйти из программы введите любой другой символ');
 readln(n);
  if n=2 then begin
  var y:=pervoobr(b)- pervoobr(a);
  writeln('Погрешность = ',abs(y-s)/y);
  Textcolor(1);
  Println('----------------------------------------------------');
  Textcolor(15);
  end;
end;

begin
    Textcolor(1);
    Println('----------------------------------------------------');
    Textcolor(15);
    Println('Вычисление площади ограниченной кривой');
    println('Для вычисления площади введите 1');
    println('Чтобы выйти из программы введите любой другой символ');
    Textcolor(1);
    Println('----------------------------------------------------');
    Textcolor(15);
    readln(n);
    if n=1 then ploshad;
end.