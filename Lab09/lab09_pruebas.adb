with Laboratorio09, Ada.Text_Io, Ada.Integer_Text_Io;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
use Laboratorio09, Ada.Text_Io, Ada.Integer_Text_Io;
procedure Lab09_Pruebas is
   F: T_Fecha;
   C: T_Complejo_Polar;
   T: T_Complejo_Tri;
   L,L2:T_Lista_Estatica;
   I,J,Fila, Columna,Max:Integer;
   M:T_Matriz(1..5,1..5);
begin
   Put_Line("Algunas secciones del codigo han sido comentadas para reducir la carga en la consola.");
   new_line(2);
   -------------------
   -- Dia_Siguiente --
   -------------------
   Put("Dia Siguiente: ");
   new_line(3);
   Put_Line("***** Dia_Siguiente *****");
   new_line;

   -- Caso 1: Fecha normal
   F:= (4, Enero, 1972);
   Put_Line("El siguiente dia al 4 de enero del 1972 es el 5 de enero del 1972");
   Dia_Siguiente(F);
   Put_Line(F.Dia'img & " de " & F.Mes'img & " del " & F.anno'img);

   new_line;

   -- Caso 2: Cambio de mes
   F:= (31, Agosto, 2010);
   Put_Line("El siguiente dia al 31 de agosto del 2010 es el 1 de septiembre del 2010");
   Dia_Siguiente(F);
   Put_Line(F.Dia'img & " de " & F.Mes'img & " del " & F.anno'img);

   new_line;

   -- Caso 3: Cambio de mes (mes de 30 dias)
   F:= (30, Abril, 2013);
   Put_Line("El siguiente dia al 30 de Abril del 2013 es el 1 de Mayo del 2013");
   Dia_Siguiente(F);
   Put_Line(F.Dia'img & " de " & F.Mes'img & " del " & F.anno'img);

   new_line;

   -- Caso 4: Cambio de anno
   F:= (31, Diciembre, 2017);
   Put_Line("El siguiente dia al 31 de Diciembre del 2017 es el 1 de Enero del 2018");
   Dia_Siguiente(F);
   Put_Line(F.Dia'img & " de " & F.Mes'img & " del " & F.anno'img);

   new_line;

   -- Caso 5: 28 de febrero de anno no bisiesto
   F:= (28, Febrero, 2019);
   Put_Line("El siguiente dia al 28 de Febrero del 2019 es el 1 de Marzo del 2019");
   Dia_Siguiente(F);
   Put_Line(F.Dia'img & " de " & F.Mes'img & " del " & F.anno'img);

   new_line;

   -- Caso 6: 28 de febrero de anno bisiesto
   F:= (28, Febrero, 2020);
   Put_Line("El siguiente dia al 28 de Febrero del 2020 es el 29 de Febrero del 2020");
   Dia_Siguiente(F);
   Put_Line(F.Dia'Img & " de " & F.Mes'Img & " del " & F.Anno'Img);
  ------------
  -- Trigon --
  ------------
   Put_Line("***** Trigon *****");
   new_line;

   -- Caso 1
   C:= (0.0,0.0);
   Put_Line("Numero en forma polar (0.0, 0.0) a forma trigonometrica: (0.0, 0.0)");
   T := Trigon(C); Put("A: "); Put(T.A, 1, 2, 0); Put(". B: "); Put(T.B, 1, 2, 0);

   new_line(2);

   -- Caso 2
   C:= (23.45, 62.91);
   Put_Line("Numero en forma polar (23.45, 62.91) a forma trigonometrica: (23.38, 1.83)");
   T := Trigon(C);
   Put("A: "); Put(T.A, 1, 2, 0); Put(". B: "); Put(T.B, 1, 2, 0);

   new_line(2);

   -- Caso 3
   C:= (99.99, 1.11);
   Put_Line("Numero en forma polar (99.99, 1.11) a forma trigonometrica: (44.46, 89.56)");
   T := Trigon(C); Put("A: "); Put(T.A, 1, 2, 0); Put(". B: "); Put(T.B, 1, 2, 0);
  Put("Trigon: ");
   -----------
   -- Polar --
   -----------
   T.A:= 3.45;
   T.B:= 5.43;
   C:= Polar(T);
   Put("El polar de 3.45 y 5.43 es ");
   put("Modulo:");
   put(C.modulo'Img); put(" y ");
   put("Argumento:");
   put(C.argumento'Img);
   New_Line;
   New_Line;


  --------------------
       -- esta --
  --------------------
   L.cont:= 10;
   L.Dato:= (0,1,2,3,4,5,6,7,8,9,others => Integer'First);
   Put("Esta 0 en el vector (0 1 2 3 4 5 6 7 8 9) ");
   put(esta(L, 0)'Img);
   New_Line;
   New_Line;

  --------------------
     -- posicion --
  --------------------
   L.cont:= 10;
   L.Dato:= (0,1,2,3,4,5,6,7,8,9,others => Integer'First);
   Put("Posicion de 4 en el vector (0 1 2 3 4 5 6 7 8 9)");
   put(posicion(L, 4));
   New_Line;
   New_Line;
   -----------------
   -- Son_Iguales --
   -----------------
   L2.cont:= 10;
   L2.Dato:= (0,1,2,3,4,5,6,7,8,9,others => Integer'First);
   Put("Los vectores (0 1 2 3 4 5 6 7 8 9) y (0 1 2 3 4 5 6 7 8 9) son iguales ");
   Put(Son_Iguales(L, L2)'Img);
   New_Line;
   New_Line;

   L.cont:= 15;
   L.Dato:= (0,1,2,3,4,5,6,7,8,9,others => Integer'First);
   L2.cont:= 10;
   L2.Dato:= (0,1,2,3,4,5,6,7,8,9,others => Integer'First);
   Put("False -> ");
   Put(Son_Iguales(L, L2)'Img);
   New_Line;
   New_Line;

   L.cont:= 15;
   L.Dato:= (0,1,2,3,4,5,6,7,8,9,others => Integer'First);
   L2.cont:= 15;
   L2.Dato:= (0,1,2,3,4,5,6,7,8,9,others => Integer'First);
   Put("True -> ");
   Put(Son_Iguales(L, L2)'Img);
   New_Line;
   New_Line;

   L.cont:= 10;
   L.Dato:= (0,1,2,4,3,5,6,7,8,9,others => Integer'First);
   L2.cont:= 10;
   L2.Dato:= (0,1,2,3,4,5,6,7,8,9,others => Integer'First);
   Put("False -> ");
   Put(Son_Iguales(L, L2)'Img);
   New_Line;
   New_Line;

   -----------------------
   -- eliminar_elemento --
   -----------------------
   Put("El vector (0 1 2 3 4 5 6 7 8 9) sin el 3 es (0 1 2 4 5 6 7 8 9)");
   eliminar_elemento(3,L);
   I:= L.Dato'First;
   while I <= L.cont loop
      Put(L.Dato(I));
      I:= I+1;
   end loop;
   New_Line;
   New_Line;

   Put("El vector (0 0 0 0 0 0 0 0 0 0) sin el 0 es ()");
   L2.Dato:= (0,0,0,0,0,0,0,0,0,0,others => Integer'First);
   L2.cont:= 10;
   eliminar_elemento(0,L2);
   I:= L2.Dato'First;
   while I <= L2.cont loop
      Put(L2.Dato(I));
      I:= I+1;
   end loop;
   New_Line;
   New_Line;

   ------------------------------
   -- insertar_elemento_en_pos --
   ------------------------------
   Put("El vector (1 2 3 4 5 7 8 9 0) con un 6 en la posicion 6 es (1 2 3 4 5 6 7 8 9 0)");
   L.Dato:= (1,2,3,4,5,7,8,9,0,others => Integer'First);
   L.cont:= 9;
   insertar_elemento_en_pos(6,6,L);
   I:= L.Dato'First;
   while I <= L.cont loop
      Put(L.Dato(I));
      I:= I+1;
   end loop;
   New_Line;
   New_Line;
   ----------------
   -- Pos_Maximo --
   ----------------
   L2.Dato:= (1,2,3,4,5,6,7,8,9,0,others => Integer'First);
   L2.cont:= 10;
   Put("El maximo de (1 2 3 4 5 7 8 9 0) es ");
   Put(Pos_Maximo(L2)'Img);
   New_Line;
   New_Line;


   ---------------------
   -- Ordenar_Burbuja --
   ---------------------
   Ordenar_Burbuja(L2);
   I:= L2.Dato'First;
   while I <= L2.cont loop
      Put(L2.Dato(I));
      I:= I+1;
   end loop;
   new_line;
   new_line;

   --------------
   -- Posicion --
   --------------

   M := ((1,2,3,4,5),
         (1,2,others => 0),
         (1 => 9, 3 => 8, 5 => 7, others => 0),
         others => (others => 0));
   Posicion(M,9,Fila,Columna);
   Put("La primera posicion del 9 en la matriz: ");
   new_line;
   for i in M'Range(1) loop
      for j in M'Range(2) loop
         Put(M(i,j));
      end loop;
      new_line;
   end loop;
   new_line;
   put("esta en la fila ");put(Fila, Width => 1);put(", columna ");put(Columna, Width => 1);
   new_line;
   new_line;

   M := ((1,2,3,4,5),
         (1,2,3,4,5),
         (1,2,3,4,5),
         (1,2,3,4,5),
         (1,2,3,4,5));
   Posicion(M,3,Fila,Columna);
   Put("La primera posicion del 3 en la matriz: ");
   new_line;
   for i in M'Range(1) loop
      for j in M'Range(2) loop
         Put(M(i,j));
      end loop;
      new_line;
   end loop;
   new_line;
   put("esta en la fila ");put(Fila, Width => 1);put(", columna ");put(Columna, Width => 1);
   new_line;
   new_line;

      M := ((1,1,1,1,1),
         (2,2,2,2,2),
         (3,3,3,3,3),
         (4,4,4,4,4),
         (5,5,5,5,5));
   Posicion(M,4,Fila,Columna);
   Put("La primera posicion del 4 en la matriz: ");
   new_line;
   for i in M'Range(1) loop
      for j in M'Range(2) loop
         Put(M(i,j));
      end loop;
      new_line;
   end loop;
   new_line;
   put("esta en la fila ");put(Fila, Width => 1);put(", columna ");put(Columna, Width => 1);
   new_line;
   new_line;

   ------------
   -- Maximo --
   ------------
   Put("El maximo y su posicion en la matriz ");
   new_line;
   for i in M'Range(1) loop
      for j in M'Range(2) loop
         Put(M(i,j));
      end loop;
      new_line;
   end loop;
   new_line;
   Maximo(M,Max,Fila,Columna);put("es ");put(Max, Width => 1);put(" y ");put("esta en la fila ");put(Fila, Width => 1);put(", columna ");put(Columna, Width => 1);
   new_line;
  New_Line;

  --No hacer 9.13 ni 9.14

   -----------------------
   -- Ordenar_Quicksort --
   -----------------------
   L2.Dato:= (1,2,3,4,5,6,7,8,9,0,others => Integer'First);
   L2.cont:= 10;
  Put("La lista (1 2 3 4 5 7 8 9 0) ordenada es ");
  Ordenar_Quicksort(L2);
   I:= L2.Dato'First;
   while I <= L2.cont loop
      Put(L2.Dato(I));
      I:= I+1;
   end loop;
   New_Line;
   New_Line;

   ------------
   -- Patron --
   ------------
   M:= Patron(5);
   I:= M'First(1);
  while I <= M'Last(1) loop
    J := M'First(2);
    while J <= M'Last(2) loop
      Put(M(i,J));
      J:= J+1;
    end loop;
    I := I + 1;
   end loop;
   New_Line;
   New_Line;

   --------------------
   -- Patron Espiral --
   --------------------
   M := Patron_espiral(5);
   I:= M'First(1);
  while I <= M'Last(1) loop
    J := M'First(2);
    while J <= M'Last(2) loop
      Put(M(i,J));
      J:= J+1;
    end loop;
    I := I + 1;
   end loop;
   New_Line;
   New_Line;
end Lab09_Pruebas;

