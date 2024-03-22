with Laboratorio03; use Laboratorio03;
--with Lab03_sol; use Lab03_sol;
with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
procedure Lab03_Pruebas is
   H,M,S:Integer:=Integer'first;
   Segs: Integer:=integer'first;
   Un,De,Ce,Um: Integer := Integer'first;
   Letra1, Letra2: Character :='*';
   Num: Integer :=Integer'first;
   Imc_Total : Float := FLoat'first;
   P1,P2,P3: Integer := -1;
   Es: Boolean:= FAlse;
   Area, Vol:Float := Float'first;
   X,Y: Float:=Float'first;
   Letra: Character:='*';
   Dd,Mm,Aa: Integer:=0;
   L:Boolean:=false;
   a,b,c,d,e,f,g:Boolean := False;
begin
   null;
   --Comenta los casos que no quieras probar
   --Puedes comentar m�s de uno

   --------
   -- F6 --
   --------
   New_Line(4);
   Put_Line("Probando F6");
   Un := F6(123,0);
   Put("F6(123,0)= ");
   Put(Un,0);
   New_Line;
   --Poner m�s casos para probar F1 y asegurar que funciona: 10, -10, 0...


   ----------------
   -- Porcentaje --
   ----------------
   New_Line(4);
   Put_Line("Probando Porcentaje ");
   P1:= 30; P2:= 50; P3:= 20;
   Porcentaje(P1, P2, P3);
   Put("Porcentaje de 30, 50 y 20 es ");
   Put(P1,3);
   Put(P2,3);
   Put(P3,3);
   New_Line;
   --Poner m�s casos para probar porcentaje y asegurar que funciona: 50 50 50 ...


   
   Area := Area_Triangulo4(a=>6.0, b=>60.0, c=>60.0);
   Put("lado=6, angulos_adyacentes=60 ; Area (15.59) =>"); Put(Area,2,2,0); New_Line;
   New_Line(4);

   Area := Area_Triangulo5(Lado_a=>6.0, angulo_contiguo=>60.0, angulo_no_contiguo=>60.0);
   Put("lado=6, angulo_adyacente=60y angulo_no_adyacente=60; Area (15.59) =>"); Put(Area,2,2,0); New_Line;
   New_Line(4);

   

   ----------
   -- Hora --
   ----------
   New_Line(4);
   Put_Line("Probando Hora ");
   Hora(60, H,M,S);
   Put("60 segundos son: ");
   Put(H,0); Put(" horas ");
   Put(M,0); Put(" Minutos ");
   Put(S,0); Put(" segundos.");
   New_Line;
   --Poner m�s casos para probar Hora y asegurar que funciona: 86400,0,60,3600...


   
   ----------
   -- Swap --
   ----------
   New_Line(4);
   Put_Line("Probando Swap ");
   Letra1:='A';
   Letra2:='Z';
   Swap(Letra1,Letra2);

   Put_Line("Intercambiar dos variables con 'A' y 'Z' debe dejar 'Z' y 'A' ");
   Put("Intercambiar deja '");Put(Letra1);Put("' y '");Put(Letra2); Put("'.");
   New_Line;
   --Poner m�s casos de prueba

   ---------------------------------
   -- Volumen_cilindro_semiesfera --
   ---------------------------------
   New_Line(4);
   
   Put("El volumen de una esfera de radio 3 vale 113,1 y sale "); Put(volumen_esfera(3.0)); New_Line;
   Put ("El volumen de un cilindro de radio 3 y altura 10 vale 282,74 y sale: "); Put(volumen_cilindro(3.0,10.0));
   
   Put_Line("Probando Volumen_cilindro_semiesfera");
   Volumen_Cilindro_semiesfera(1.0, 1.0, vol);

   Put("El volumen de un cilindro de radio 1.0 y altura 1.0 ");
   Put("con una semiesfera encima de radio 1.0 es 5.24 y sale ");
   Put(vol,2,2,0); New_Line;
   --Poner algun caso m�s de prueba

   
   ---------
   -- "+" --
   ---------
   New_Line(4);
   Put_Line("Probando sumar un entero a un caracter");
   letra := 'A' + 193;
   Put("El codigo del caracter dado es: "); Put(Character'Pos('A')); New_Line;
   Put("'A' + 1 debe devolver 'B' y sale "); Put(letra); New_Line;
   Put("y su codigo es "); Put(Character'Pos(letra));
   --Poner algun caso m�s de prueba
   delay 2.0;

   -----------------------------
   -- Display siete segmentos --
   -----------------------------

   New_Line(4);
   Put_Line("Probando Display 7 segmentos");
   Display_7_Segmentos(0,a,b,c,d,e,f,g);
   Put("En 7 segmentos el 0 es [T-T-T-F-T-T-T] y sale: "&A'img&'-'&B'img&'-'&C'img&'-'&D'img&'-'&E'img&'-'&F'img&'-'&G'img&'.'); New_Line;




   -----------------
   -- Es_Bisiesto --
   -----------------
   New_Line(4);
   Put_Line("Probando Es_Bisiesto ");
   Es := Es_Bisiesto(2021);

   Put("2021 no es bisiesto (False) y sale ");
   Put(Es'img); Put(".");New_Line;
   --Poner algun caso m�s de prueba


   ---------
   -- Hoy --
   ---------
   New_Line(4);
   Put_Line("Probando Hoy ");
   Hoy(Dd,Mm,Aa);

   Put("Sabes que dia es hoy? Pues sale ");
   Put(dd,2);Put('-');Put(mm,2);Put('-');Put(aa,4);Put('.'); New_Line;


   ------------------
   -- Cuantos_Dias --
   ------------------
   New_Line(4);
   Put_Line("Probando Cuantos_Dias");

   Num := Cuantos_Dias(31,12,2020,31,1,2021);

   Put("Entre el 31-12-2020 y el  31-01-2021 hay 31 dias y sale ");
   Put(num,0); Put("dias."); New_Line;
   --Poner algun caso m�s de prueba


   
end Lab03_Pruebas;

