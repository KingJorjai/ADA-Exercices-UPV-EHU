with Laboratorio11; use  Laboratorio11;
--  with Lab11_sol; use Lab11_sol;
package Lab11_Escenarios is

   ---------------------
   -- Esta y Posicion --
   ---------------------
   --Nota: �Cuidado! L0 es constante, pero el resto de valores de la lista
   --      dinamica se puede modificar y Ada no lo comprueba.
   L0 : constant T_Lista_Dinamica := null; --()
   L1 : constant T_Lista_Dinamica :=  --(1)
      new T_Nodo_Enteros'(1, null);
   L2 : constant T_Lista_Dinamica :=  --(2)
      new T_Nodo_Enteros'(2, null);
   L3 : constant T_Lista_Dinamica :=  --(3)
      new T_Nodo_Enteros'(3, null);
   L12 : constant T_Lista_Dinamica :=  --(1 2)
      new T_Nodo_Enteros'(1, new T_Nodo_Enteros'(2,null));
   L23 : constant T_Lista_Dinamica :=  --(2 3)
      new T_Nodo_Enteros'(2, new T_Nodo_Enteros'(3,null));
   L123 : constant T_Lista_Dinamica := --(1 2 3)
      new T_Nodo_Enteros'(1,new T_Nodo_Enteros'(2,new T_nodo_Enteros'(3,null)));
   L124 : constant T_Lista_Dinamica := --(1 2 4)
      new T_Nodo_Enteros'(1,new T_Nodo_Enteros'(2,new T_nodo_Enteros'(4,null)));
   L1234 : constant T_Lista_Dinamica := --(1 2 3 4)
      new T_Nodo_Enteros'(1,new
          T_Nodo_Enteros'(2,new
          T_Nodo_Enteros'(3,new
          T_Nodo_Enteros'(4,null))));

   -----------
   -- Media --
   -----------
   type T_Vector_Enteros is array (Integer range<>) of Integer;
   V0: constant T_Vector_Enteros(1..10) := (1,1,1,1,1,1,1,1,1,1);
   V0_Ini : constant Integer :=  1;
   V0_Fin : constant Integer := 10;
   V0_Res : constant Float := 1.0;
   V1: constant T_Vector_Enteros(1..10) := (1,2,3,4,5,6,7,8,9,10);
   V1_Ini : constant Integer :=  1;
   V1_Fin : constant Integer := 10;
   V1_Res : constant Float := 5.5;
   --V2: constant T_Vector_Enteros(1..10) := (1,2,3,4,5,6,7,8,9,10);
   V2_Ini : constant Integer := 1;
   V2_Fin : constant Integer := 4;
   V2_Res : constant Float := 2.5;
   --V3: constant T_Vector_Enters(1..10) := (1,2,3,4,5,6,7,8,9,10);
   V3_Ini : constant Integer :=  8;
   V3_Fin : constant Integer := 10;
   V3_Res : constant Float := 9.0;
   --V4: constant T_Vector_Enteros(1..10) := (1,2,3,4,5,6,7,8,9,10);
   V4_Ini : constant Integer :=  6;
   V4_Fin : constant Integer := 10;
   V4_Res : constant Float := 8.0;

   V5_Ini : constant Integer :=  2;
   V5_Fin : constant Integer := 1;
   V5_Res : constant Float := Float'Last;
   ------------
   -- Append --
   ------------
   V: constant T_Vector_Enteros(1..20):= (1,2,3,4,5,6,7,8,9,10, others=>-1);

   -----------------------
   -- Insertar y Borrar --
   -----------------------
   -- Caso 1: Insertar en el medio (Pos 3 de 6)
   I1:constant T_Vector_Enteros(1..10) := (2,4,6,8,10,12,14,16,18,20);
   I1_Ini1 : constant Integer := 1;
   I1_Fin1 : constant Integer := 6;
   I1_Num  : constant Integer := 5;
   I1_Res  : constant T_Vector_Enteros(1..10):= (2,4,5,6,8,10,12,14,16,18);
   I1_Ini2 : constant Integer := 1;
   I1_Fin2 : constant Integer := 7;
   -- Caso 2: Insertar al final (Pos 6 de 5)
   I2:constant T_Vector_Enteros(1..10) := (2,4,6,8,10,12,14,16,18,20);
   I2_Ini1 : constant Integer := 1;
   I2_Fin1 : constant Integer := 5;
   I2_Num  : constant Integer := 11;
   I2_Res  : constant T_Vector_Enteros(1..10):= (2,4,6,8,10,11,12,14,16,18);
   I2_Ini2 : constant Integer := 1;
   I2_Fin2 : constant Integer := 6;
   -- Caso 3: Insertar al principio (pos 1 de 5)
   I3:constant T_Vector_Enteros(1..10) := (2,4,6,8,10,12,14,16,18,20);
   I3_Ini1 : constant Integer := 1;
   I3_Fin1 : constant Integer := 5;
   I3_Num  : constant Integer := 1;
   I3_Res  : constant T_Vector_Enteros(1..10):= (1,2,4,6,8,10,12,14,16,18);
   I3_Ini2 : constant Integer := 1;
   I3_Fin2 : constant Integer := 6;
   -- Caso 4: Insertar al principio lista de 1(pos 1 de 1)
   I4:constant T_Vector_Enteros(1..10) := (2,4,6,8,10,12,14,16,18,20);
   I4_Ini1 : constant Integer := 1;
   I4_Fin1 : constant Integer := 1;
   I4_Num  : constant Integer := 1;
   I4_Res  : constant T_Vector_Enteros(1..10):= (1,2,4,6,8,10,12,14,16,18);
   I4_Ini2 : constant Integer := 1;
   I4_Fin2 : constant Integer := 2;
   -- Caso 5: Insertar al final lista de 1(pos 2 de 1)
   I5:constant T_Vector_Enteros(1..10) := (2,4,6,8,10,12,14,16,18,20);
   I5_Ini1 : constant Integer := 1;
   I5_Fin1 : constant Integer := 1;
   I5_Num  : constant Integer := 3;
   I5_Res  : constant T_Vector_Enteros(1..10):= (2,3,4,6,8,10,12,14,16,18);
   I5_Ini2 : constant Integer := 1;
   I5_Fin2 : constant Integer := 2;
   -- Caso 6: Insertar en lista vacia (pos 1 de 0)
   I6:constant T_Vector_Enteros(1..10) := (2,4,6,8,10,12,14,16,18,20);
   I6_Ini1 : constant Integer := 2;
   I6_Fin1 : constant Integer := 1;
   I6_Num  : constant Integer := 2;
   I6_Res  : constant T_Vector_Enteros(1..10):= (2,4,6,8,10,12,14,16,18,20);
   I6_Ini2 : constant Integer := 1;
   I6_Fin2 : constant Integer := 1;

end Lab11_Escenarios;

