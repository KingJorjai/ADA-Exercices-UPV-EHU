with Laboratorio03; use Laboratorio03;
with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
procedure Prog20230921_sol is
  Horas,Minutos,Segs:Natural;
  Mi_Area: Float;
  El_Volumen:Float;
  dia,mes,ano:Positive;
  Total: Character;
  Hay_llevada:Boolean;
  por1, por2, por3: Integer;
begin

  --Calcular Cuantas horas minutos y segundos son 84669 segundos (69)
  --dejar el resultado en horas,minutos y segs
  --Put_Line("Calculando las horas minutos y segundos de 84669 segundos (69)...");
  Hora(Hh=>Horas,Ss=>Segs, Segundos=>84669, Mm=>Minutos);
  Hora(84669,Horas,Minutos,Segs);
  Put(Item=>Horas,width=>3); Put(" Horas"); New_Line;
  Put(Minutos,3); Put(" Mins"); New_Line;
  Put(Segs,3); Put(" Segs"); New_Line;
  delay 2.0;

  --Calcular cuanto son 5h 20' y 50" m�s 1h 55' 13" (77)
  --dejar el resultado en h,m y s
  New_Line(5);
  Put_Line("Calculando 5h 20' 50'' + 1h 55' 13'' (77)...");
  Sumar(Hh1=>5,Hh2=>1,Mm2=>55,Ss2=>13,Ss1=>50,Mm1=>20,Hh=>Horas,Mm=>Minutos,Ss=>Segs);
  Sumar(5,20,50,1,55,13,horas,minutos,segs);
  Put(Item=>Horas,width=>2); Put(" Horas"); New_Line;
  Put(Minutos,3); Put(" Mins"); New_Line;
  Put(Segs,3); Put(" Segs"); New_Line;
  delay 2.0;

  --Calcular el area del circulo de radio 10 (101)
  --dejar en resultado en mi_area
  New_Line(5);
  Put_Line("Calculando el area del circulo de radio 10 (101)...");
  Area_Circulo(Area=>Mi_Area,R=>10.0);
  area_circulo(10.0,mi_area);
  Put("Area = "); Put(Item=>Mi_Area,fore=>2,AFT=>2,Exp=>0); New_Line;
  delay 2.0;

  --Calcular el volumen cilindro de altura 20 y de la semiesfera de radio 10 (113)
  --dejar el resultado en el_volumen
  New_Line(5);
  Put_Line("Calculando el volumen cilindro de altura 20 y de la semiesfera de radio 10 (113)...");
  Volumen_Cilindro_Semiesfera(volumen=>el_Volumen, h=>20.0, r=>10.0);
  Volumen_Cilindro_Semiesfera(10.0,20.0,el_Volumen);
  Put("Volumen = "); Put(el_volumen,2,2,0); New_Line;
  delay 2.0;

  --Que dia es hoy (132)
  --dejar el resultado en dia,mes,ano
  New_Line(5);
  Put_Line("Calculando que dia es hoy (132)...");
  Hoy(Aa=>ano,Mm=>mes, Dd=>dia);
  Hoy(Dia,Mes,Ano);
  Put("Hoy es: "); Put(dia,0);Put('-');Put(Mes,width=>2);Put('-');Put(Item=>Ano,Width=>4); New_Line;
  delay 2.0;

  --Decodificar el d�a 08_01_2024 (159)
  --dejar el resultado en dia,mes,ano
  New_Line(5);
  Put_Line("Calculando decodificar el d�a de hoy 08_01_2024...");
  Decodificar_Fecha(D=>Dia,A=>Ano,M=>Mes,F=>08_01_2024);
  decodificar_Fecha(08_01_2024,Dia,Mes,Ano);
  Put("El dia es: "); Put(dia,0);Put('-');Put(Mes,width=>2);Put('-');Put(Item=>Ano,Width=>4); New_Line;
  delay 2.0;

  --Cuanto es 6+1?  y 9+9? (147)
  --Dejar el resultado en Total y Hay_LLevada
  New_Line(5);
  Put_Line("Calculando Cuanto es 6+1? y 9+9? (147)...");
  Suma(Resultado=>Total, Llevada=>Hay_LLevada,D1=>'6',D2=>'1');
  Suma('6','1',Total,Hay_Llevada);
  Put("6 + 1 = ");Put(Total);New_Line;
  Put("Hay llevada: ");Put(Hay_Llevada'Img); New_Line;
  delay 2.0;
  Put_Line("Calculando Cuanto es 9+9? (147)...");
  Suma(Resultado=>Total, Llevada=>Hay_LLevada,D1=>'9',D2=>'9');
  Suma('9','9',Total,Hay_Llevada);
  Put("9 + 9 = ");Put(Total);New_Line;
  Put("Hay llevada: ");Put(Hay_Llevada'Img); New_Line;
  delay 2.0;
  
  --Definir los porcentajes que suponen 100 100 100 (17)
  --dejar el resultado Por1, por2 y por3
  New_Line(5);
  Put_Line("Calculando los porcentajes que suponen 100 100 100...");
  Por1:=100; Por2:=100;Por3:=100;
  Porcentaje(A=>Por1,C=>Por2,B=>Por3);
  Porcentaje(Por1,Por2,Por3);
  Put("Los porcentajes de 100, 100 y 100 son: "); Put(Por1,3);Put('-');Put(Por2,width=>2);Put('-');Put(Item=>Por3,Width=>4); New_Line;
  delay 2.0;
  
end Prog20230921_sol;