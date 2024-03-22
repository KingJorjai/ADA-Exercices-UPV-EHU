with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics; use Ada.Numerics;
with Ada.Numerics.Elementary_Functions; use  Ada.Numerics.Elementary_Functions;
with Ada.Calendar; use Ada.Calendar;
package body Laboratorio03 is
   -- Autor(a): Jorge Arévalo Fernández
   -- No borres ningún programa (aun cuando no lo implementes)
   -- si no, el compilador avisara de que hay programas sin implmentar y no podran
   -- funcionar las pruebas.

   --------
   -- f1 --
   --------

   function f1 (X: in Integer) return Integer is (Integer'First);

   --------
   -- f2 --
   --------

   function f2 (A: in Integer) return Integer is (Integer'First);

   --------
   -- f3 --
   --------

   function F3 (C: in Integer) return Integer is (Integer'First);

   --------
   -- f4 --
   --------

   function f4 (P,Q: in Integer) return Integer is (Integer'First);

   --------
   -- f5 --
   --------

   function f5 (A,B: in Integer) return Integer is (Integer'First);

   --------
   -- f6 --
   --------

   function f6 (P,Q: in Integer) return Integer is

   begin
      --(3p+2q)(p-3q)
      return (3*P+2*Q)*(P-3*Q);
   end f6;

   --------
   -- f7 --
   --------

   function f7 (X,Y: in Float) return Float is (Float'LAst);

   ----------------
   -- Porcentaje --
   ----------------

   procedure Porcentaje(A,B,C: in out Integer) is
      Total:Integer;
   begin
      --Almacenamos los valores originales de A,B,C para operar sin problemas
      Total := A+B+C;
      --Calculamos los porcentajes
      A := A*100/Total;
      B := B*100/Total;
      C := C*100/Total;
   end Porcentaje;

   ---------
   -- IMC --
   ---------

   function Imc(Peso_Kg,Altura_M: in Float) return Float is (Float'last);


   -------------------
   -- Sumar digitos --
   -------------------
   procedure Sumar(D1,D2: in Character; Resultado: out Character; Llevada: in out Boolean) is null;

   -------------------
   -- Restar digitos --
   -------------------
   procedure Restar(D1,D2: in Character; Resultado: out Character; Llevada:in out Boolean) is null;

   ------------
   -- Area 1 --
   ------------

   function Area_triangulo1 (base,altura: in Float) return Float is (Float'First);

   ------------
   -- Area 2 --
   ------------

   function Area_triangulo2 (A,B,C: in Float) return Float is (Float'First);

   ------------
   -- Area 3 --
   ------------

   function Area_triangulo3 (A,B,C: in Float) return Float is  (Float'First);

   ------------
   -- Area 4 --
   ------------

   function Area_triangulo4 (A,B,C: in Float) return Float is
   --Pasar de grados a radianes
   B_rad:Float:=B*Pi/180.0;
   C_rad:Float:=C*Pi/180.0;

   begin
      --Aplicando el teorema de las alturas
      return A**2*sin(B_rad)*sin(C_rad)/(2.0*sin(B_rad+C_rad));
   end Area_triangulo4;


   ------------
   -- Area 5 --
   ------------

   function Area_Triangulo5 (Lado_A,Angulo_Contiguo,Angulo_No_Contiguo: in Float) return Float is
   --Pasar de grados a radianes
   B_rad:Float:=Angulo_Contiguo*Pi/180.0;
   A_rad:Float:=Angulo_No_Contiguo*Pi/180.0;
   C_rad:Float:=Pi-B_rad-A_rad;

   begin
      --Aplicando el teorema de las alturas
      return Lado_A**2*sin(B_rad)*sin(C_rad)/(2.0*sin(B_rad+C_rad));
   end Area_Triangulo5;

   ------------
   -- Area 6 --
   ------------

   function Area_triangulo6 (X1,Y1,X2,Y2,X3,Y3: in Float) return Float is  (Float'First);

   ----------
   -- hora --
   ----------

   procedure Hora (Segundos: in Natural; Hh,Mm,Ss: out Natural) is
      
   begin
      Hh := Segundos / 3600;
      Mm := Segundos rem 3600 / 60;
      Ss := Segundos rem 60;
   end Hora;
   
   --------------
   -- segundos --
   --------------

   function Segundos (Hh,Mm,Ss: in Natural) return Natural is (Integer'Last);

   -----------
   -- sumar --
   -----------

   procedure Sumar (Hh1,Mm1,Ss1,Hh2,Mm2,Ss2: in Natural; Hh,Mm,Ss: out Natural) is null;

   ----------------------
   -- entero_a_digitos --
   ----------------------

   procedure entero_a_digitos (num: in Natural; unidades, decenas, centenas, u_millar: out Natural) is null;

   ----------
   -- swap --
   ----------

   procedure Swap (C1, C2: in out Character) is
   x:Character;
   y:Character;
      begin
         x:=C1;
         y:=C2;
         
         C1:=y;
         C2:=x;
      end Swap;

   -----------
   -- valor --
   -----------

   function Valor(Unidades, Decenas, Centenas, U_Millar: in Natural) return Integer is (Integer'First);

   ----------------
   -- Shaw_Basho --
   ----------------

   function Shaw_Basho (X: in Natural) return Integer is (Integer'First);

   --------------------
   -- multiplo_de_10 --
   --------------------

   function Multiplo_De_10 (X: in Positive) return Boolean is (Boolean'Last);

   ------------------
   -- area_circulo --
   ------------------

   procedure area_circulo (r: in Float; area: out Float) is null;

   ----------------------
   -- volumen_cilindro --
   ----------------------

   function Volumen_Cilindro (R: in Float; H: in Float) return Float is

   begin
      return Pi*R**2*H;
   end Volumen_Cilindro;

   --------------------
   -- volumen_esfera --
   --------------------

   function Volumen_Esfera (R: in Float) return Float is

   begin
      return 4.0/3.0*Pi*R**3;
   end Volumen_Esfera;

   ---------------------------------
   -- volumen_cilindro_semiesfera --
   ---------------------------------

   procedure volumen_cilindro_semiesfera(r, h: in Float; volumen: out Float) is

   begin
      volumen := volumen_cilindro(r,h)+volumen_esfera(r)/2.0;
   end volumen_cilindro_semiesfera;

   -----------------
   -- multiplo_de --
   -----------------

   function Multiplo_De (X,N: in Integer) return Boolean is (Boolean'Last);

   ----------------------
   -- a_trigonometrica --
   ----------------------

   procedure a_trigonometrica(modulo_polar, argumento_polar: in Float; a,b: out Float) is null;

   ---------
   -- "+" --
   ---------

   function "+" (C: in Character; N: in Integer) return Character is
   ASCII:Integer;
   begin
      ASCII := Character'Pos(C) + N;
      return Character'Val(ASCII mod 256);
   end "+";

   -----------------
   -- es_bisiesto --
   -----------------

   function Es_Bisiesto (Anno: in Positive) return Boolean is

   begin
      return   (Anno rem 4 = 0 and Anno rem 100 /= 0)
               or
               (Anno rem 100 = 0 and Anno rem 400 = 0);
   end Es_Bisiesto;

   ---------
   -- hoy --
   ---------

   procedure hoy (dd,mm,aa: out Positive) is
   fecha:Time:=Clock;
   begin
      aa:=Year(fecha);
      mm:=Month(fecha);
      dd:=Day(fecha);
   end hoy;

   ----------------------
   -- cuantos_dias --
   ----------------------

   function cuantos_dias(d1,m1,a1: in Positive; d2,m2,a2: in Positive) return Natural is
   fecha_inicial:Time := Time_Of(a1,m1,d1);
   fecha_final:Time := Time_Of(a2,m2,d2);
   Segundos_Por_Dia : constant Duration := 24.0 * 60.0 * 60.0;
   Duracion:Duration := fecha_final - fecha_inicial;
   begin
      return Natural(Duracion/Segundos_Por_Dia);
   end cuantos_dias;

   ------------------------
   -- digito_como_entero --
   ------------------------

   function digito_Como_entero(d: in Character) return Natural is (Natural'Last);

   ------------------------
   -- entero_como_digito --
   ------------------------

   function entero_Como_Digito(d: in Natural) return Character is ('@');

   -----------
   -- sumar --
   -----------

   procedure Suma (D1,D2: in Character; Resultado: out Character; Llevada: out Boolean) is null;

   ---------------------
   -- Codificar Fecha --
   ---------------------
   function Codificar_Fecha(D,M,A: in Positive) return Positive is (Positive'Last);

   procedure Decodificar_Fecha(F: in Positive; D,M,A: out Positive) is null;
   
   -------------------------
   -- Display 7 segmentos --
   -------------------------
   procedure Display_7_segmentos(N: in Natural; a,b,c,d,e,f,g: out Boolean) is
   -- a: 0,2,3,5,6,7,8,9
   -- b: 0,4,5,6,8,9
   -- c: 0,1,2,3,4,7,8,9
   -- d: 2,3,4,5,6,8,9
   -- e: 0,2,6,8
   -- f: 0,1,3,4,5,6,7,8,9
   -- g: 0,2,3,5,6,8,9
   begin
      a := N=0 or N=2 or N=3 or N=5 or N=6 or N=7 or N=8 or N=9;
      b := N=0 or N=4 or N=5 or N=6 or N=8 or N=9;
      c := N=0 or N=1 or N=2 or N=3 or N=4 or N=7 or N=8 or N=9;
      d := N=2 or N=3 or N=4 or N=5 or N=6 or N=8 or N=9;
      e := N=0 or N=2 or N=6 or N=8;
      f := N=0 or N=1 or N=3 or N=4 or N=5 or N=6 or N=7 or N=8 or N=9;
      g := N=0 or N=2 or N=3 or N=5 or N=6 or N=8 or N=9;
   end Display_7_segmentos;

end Laboratorio03;
