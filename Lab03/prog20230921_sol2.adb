with Laboratorio03; use Laboratorio03;
with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

--with ada.Numerics; use ada.Numerics;

procedure Prog20230921_sol2 is
  P,Q:Integer;
  n1,n2,n3:Integer;
  A,B,C,Area_Triangulo_4:Float;
  LadoA,AnguloContiguo,AnguloNocontiguo,Area_Triangulo_5:Float;
  Horas,Minutos,Segs,Segundos:Natural;
  C1,C2:Character;
  Radio,Altura,Vol:Float;
  C_in:Character; N_in:Integer;
  N:Natural; aa,bb,cc,dd,ee,ff,gg:Boolean;
  anno:Positive;
  dia,mes,anio:Positive;
  d1,d2,m1,m2,a1,a2:Positive;
  cerrar:Character;
begin

-------------------- F6 --------------------
Put_Line("Introduce el valor de p:");
Get(P);
Put_Line("Introduce el valor de q");
Get(Q);
Put("El valor de (3p+2q)(p-3q) es: "); Put(f6(p,q),0); New_Line(2);
--------------------------------------------

  --------------- PORCENTAJES ---------------
  Put_Line("Calculo del porcentaje de 3 valores:");
  Put_Line("Introduce 3 valores:");
  Get(n1); Get(n2); Get(n3);
  Porcentaje(n1,n2,n3);
  Put("Los porcentajes correspondientes a cada valor son: ");
  Put(n1,0); Put("% "); Put(n2,0); Put("% "); Put(n3,0); Put('%'); New_Line(2);

  -------------------------------------------

  --------------- TRIÁNGULO 4 ---------------
  Put_Line("Introduce la longitud de uno de los lados del triangulo:");
  Get(A);
  Put_Line("Introduce los angulos contiguos a dicho lado:");
  Get(B); Get(C);

  Area_Triangulo_4 := Area_triangulo4(A,B,C);
  Put("El area del triangulo es de "); Put(Area_Triangulo_4,0); Put(" unidades cuadradas."); New_Line(2);
  -------------------------------------------

  --------------- TRIÁNGULO 5 ---------------
  Put_Line("Introduce la longitud de uno de los lados del triangulo:");
  Get(LadoA);
  Put_Line("Introduce uno de los angulos contiguos a dicho lado:");
  Get(AnguloContiguo);
  Put_Line("Introduce el angulo no contiguo a dicho lado:");
  Get(AnguloNoContiguo);

  Area_Triangulo_5 := Area_triangulo5(LadoA,AnguloContiguo,AnguloNoContiguo);
  Put("El area del triangulo es de "); Put(Area_Triangulo_5,0); Put(" unidades cuadradas."); New_Line(2);
  -------------------------------------------

  ------------------ HORA ------------------
  Put_Line("Escribe el numero de segundos que quieres convertir a horas:");
  Get(Segundos);
  Hora(Hh=>Horas,Ss=>Segs, Segundos=>Segundos, Mm=>Minutos);
  Put(Horas,0); Put(':'); Put(Minutos,0); Put(':'); Put(Segs,0); New_Line(2);
  ------------------------------------------
  
  ------------------ SWAP ------------------
  Put_Line("Escribe el primer caracter:");
  Get(C1);
  Put_line("Escribe el segundo caracter:");
  Get(C2);
  Swap(C1,C2);
  Put("Los caracteres invertidos son: "); Put(C1); Put(" y "); Put(C2); Put('.'); New_Line(2);
  ------------------------------------------

  ------- VOLUMEN CILINDRO-SEMIESFERA -------
  Put_Line("Indroduce el radio del cilindro:");
  Get(Radio);
  Put_Line("Indroduce la altura del cilindro:");
  Get(Altura);
  volumen_cilindro_semiesfera(Radio,Altura,Vol);
  Put("El volumen de la figura es: "); Put(Vol); Put(" unidades cubicas."); New_Line(2);
  -------------------------------------------

  -------------------- + --------------------
  Put_Line("Introduce el caracter al que le quieres sumar un numero:");
  Get(C_in);
  Put_Line("Introduce el numero que le quieres sumar a ese caracter:");
  Get(N_in);
  
  Put("El resultado es: "); Put(plus(C_in,N_in)); Put(" ."); New_Line(2);
  -------------------------------------------

  --------------- ES BISIESTO ---------------
  Put_Line("Introduce un anno:");
  Get(anno);
  Put("Es bisiesto: " & Boolean'Image(es_bisiesto(anno))); New_Line(2);
  -------------------------------------------

  ------------------- HOY -------------------
  hoy(dia,mes,anio);
  Put("La fecha actual es: " & dia'Image & mes'Image & anio'Image);
  New_Line(2);
  -------------------------------------------

  --------------- CUANTOS DIAS ---------------
  Put_Line("Introduce la primera fecha:");
  Get(d1); Get(m1); Get(a1);
  Put_Line("Introduce la segunda fecha:");
  Get(d2); Get(m2); Get(a2);
  Put("Han transcurrido " & Natural'Image(cuantos_dias(d1,m1,a1,d2,m2,a2)) & "dias");
  --------------------------------------------

  ----------- DISPLAY 7 SEGMENTOS -----------
  Put_Line("Introduce el numero que quieres representar:");
  Get(N);
  Display_7_segmentos(N,aa,bb,cc,dd,ee,ff,gg);
  Put_Line("Los segmentos que se tienen que activar son:");
  Put("a: "); Put(aa'Image); New_Line;
  Put("b: "); Put(bb'Image); New_Line;
  Put("c: "); Put(cc'Image); New_Line;
  Put("d: "); Put(dd'Image); New_Line;
  Put("e: "); Put(ee'Image); New_Line;
  Put("f: "); Put(ff'Image); New_Line;
  Put("g: "); Put(gg'Image); New_Line(2);
  -------------------------------------------

  Put_Line("Cerrar programa");
  get(cerrar);

end Prog20230921_sol2;