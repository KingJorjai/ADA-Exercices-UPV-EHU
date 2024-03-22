with Ada.Characters.Handling;

package body Laboratorio08 is

   --------------------
   -- esta_en_vector --
   --------------------

   function esta_en_vector
     (V: in T_vector_enteros;
      N: in Integer)
      return Boolean
   is
   esta:Boolean:=False;
   begin
      for i in V'Range loop
         exit when V(i)=VACIO;
         if V(i) = N then
            esta := True;
         end if;
      end loop;
   return esta;
   end esta_en_vector;

   --------------
   -- posicion --
   --------------

   function posicion
     (V: in T_Vector_enteros;
      Num: in Integer)
      return Integer
   is (Integer'Last);

   -----------------
   -- Son_Iguales --
   -----------------

   function Son_Iguales (F1, F2: in T_Fecha) return Boolean is
   res:Boolean:=False;
   begin
      if F1=F2 then
         res:=True;
      end if;
   return res;
   end Son_Iguales;

   ------------------
   -- Centesimales --
   ------------------

   function Centesimales (Grados: in T_Grados_Sex) return Float is
   begin
      return
         Float(Grados.Grados) +
         (Float(Grados.Minutos)*60.0+Float(Grados.Segundos))
         /3600.0;
   end Centesimales;

   -----------------
   -- Son_Iguales --
   -----------------

   function Son_Iguales (L1, L2: in T_vector_enteros) return Boolean is
   iguales:Boolean:=True;
   i:Integer:=L1'First;
   j:Integer:=L2'First;

   begin
      while L1(i)/=VACIO and L2(j)/=VACIO loop
         if L1(i)/=L2(j) then
            iguales := False;
         end if;
         i := i+1;
         j := j+1;
         if (L1(i)=VACIO and L2(j)/=VACIO) or (L2(j)=VACIO and L1(i)/=VACIO) then
            iguales := False;
            exit;
         end if;

      end loop;

   return iguales;
   end Son_Iguales;

   -----------------------
   -- eliminar_elemento --
   -----------------------

   procedure eliminar_elemento
     (pos: in Integer;
      V: in out T_vector_enteros)
   is

   begin
      if pos < V'Last then
         for i in pos..V'Last-1 loop
            V(i) := V(i+1);
            V(V'Last) := VACIO;
         end loop;
      else
         V(v'Last) := VACIO;
      end if;
   end eliminar_elemento;

   ------------------------------
   -- insertar_elemento_en_pos --
   ------------------------------

   procedure insertar_elemento_en_pos
     (num: in Integer;
      pos: in Integer;
      V: in out T_Vector_Enteros)
   is

   begin
      if pos in V'Range then
         if pos/=V'Last then
            for i in reverse pos+1..V'Last loop
               V(i) := V(i-1);
            end loop;
            V(pos) := num;
         else
            V(pos):=num;
         end if;
      end if;
   end insertar_elemento_en_pos;

   ----------------
   -- Pos_Maximo --
   ----------------

   function Pos_Maximo (V: in T_Vector_Enteros) return Integer is (Integer'First);

   -----------------------
   -- Ordenar_Seleccion --
   -----------------------

   procedure Ordenar_Seleccion (V: in out T_Vector_Enteros) is null;

   ----------------
   -- Cent_A_Sex --
   ----------------

   procedure Cent_A_Sex
     (Centesimales: in Float;
      Sexagesimales:out T_Grados_Sex)
   is null;

   -------------------
   -- Rotar_Derecha --
   -------------------

   procedure Rotar_Derecha (V:in out T_Vector_Enteros) is

   begin
      insertar_elemento_en_pos(num => V(V'Last), pos => V'First, V => V);
   end Rotar_Derecha;

   -----------------------------
   -- esta_en_vector_ordenado --
   -----------------------------

   function esta_en_vector_ordenado
     (V: in T_vector_enteros;
      N: in Integer)
      return Boolean
   is
   esta:Boolean:=False;
   begin
      for i in V'Range loop
         exit when V(i)=VACIO or V(i)>N;
         if V(i) = N then
            esta := True;
         end if;
      end loop;
   return esta;
   end esta_en_vector_ordenado;

   --------------------------------
   -- eliminar_elemento_ordenado --
   --------------------------------

   procedure eliminar_elemento_ordenado
     (pos: in Integer;
      V: in out T_vector_enteros)
   is null;

   --------------------------------
   -- insertar_elemento_ordenado --
   --------------------------------

   procedure insertar_elemento_ordenado
     (num:  in Integer;
      V: in out T_Vector_Enteros)
   is

   begin
      for i in V'Range loop
         if num<V(i) or V(i)=VACIO then
            insertar_elemento_en_pos(num => num, pos => i, V => V);
            exit;
         end if;
      end loop;
   end insertar_elemento_ordenado;

   ------------------------
   -- Eliminar_Repetidos --
   ------------------------

   procedure Eliminar_Repetidos (V: in out T_Vector_Enteros) is
   i:Integer:=V'First;
   begin

      while i in V'First..V'Last-1 loop
         for j in reverse i+1..V'Last loop
            if V(i)=V(j) then
               eliminar_elemento(pos => j, V => V);
            end if;
         end loop;
      i := i+1;
      end loop;

   end Eliminar_Repetidos;

   ------------------------
   -- Letra_Mas_Repetida --
   ------------------------
   

   function Letra_Mas_Repetida (Texto: in T_Info_Texto) return T_LETRA is
   contador:T_contadores_letras:=(others => 0);
   repetida:T_Letra:='Z';
      begin
         --Establecer numero de letras
         for i in 1..Texto.Cuantas loop
            for j in 1..Texto.Palabras(i).Long loop
               if Texto.Palabras(i).Letras(j) in 'A'..'Z' or Texto.Palabras(i).Letras(j) in 'a'..'z' then
                  contador(Ada.Characters.Handling.To_Upper(Texto.Palabras(i).Letras(j))) := contador(Ada.Characters.Handling.To_Upper(Texto.Palabras(i).Letras(j)))+1;
               end if;
            end loop;
         end loop;
         --Encontrar letra mas repetida
         for i in reverse contador'Range loop
            if contador(i) >= contador(repetida) then
               repetida := i;
            end if;
         end loop;

         return repetida;
      end Letra_Mas_Repetida;

   -----------------------
   -- Ordenar_Insercion --
   -----------------------

   procedure Ordenar_Insercion (V: in out T_Vector_Enteros) is null;

   -----------------
   -- Es_Toeplitz --
   -----------------

   function Es_Toeplitz (M: T_Matriz) return Boolean is (True);
   --------------------
   -- Esta_En_Vector --
   --------------------

   function Esta_En_Vector
     (V: in T_Vector_Integer;
      N: in Integer)
      return Boolean
       is (False);

   --------------
   -- posicion --
   --------------

   function posicion
     (V: in T_Vector_Integer;
      Num: in Integer)
      return Integer
   is (Integer'last);

   -----------------
   -- Son_Iguales --
   -----------------

   function Son_Iguales (L1, L2: in T_Vector_Integer) return Boolean is (true);

   -----------------------
   -- eliminar_elemento --
   -----------------------

   procedure eliminar_elemento
     (pos: in Integer;
      V: in out T_Vector_Integer)
   is null;

   ------------------------------
   -- insertar_elemento_en_pos --
   ------------------------------

   procedure insertar_elemento_en_pos
     (num: in Integer;
      pos: in Integer;
      V: in out T_Vector_Integer)
   is null;
   -------------
   -- Ordenar --
   -------------

   procedure Ordenar (V: in out T_Vector_Integer) is null;

   ----------------
   -- Pos_Maximo --
   ----------------

   function Pos_Maximo (V: in T_Vector_Integer) return Integer is (Integer'Last);

   ------------------------
   -- Eliminar_Repetidos --
   ------------------------

   procedure Eliminar_Repetidos (V: in out T_Vector_Integer) is null;

   --------------------------------
   -- Inicializar Matriz Espiral --
   --------------------------------
   procedure Inicializar_Matriz_Espiral(M: in out T_Matriz) is null;

   ------------------------------------------
   -- Inicializar Matriz Espiral Adyacente --
   ------------------------------------------
   procedure Inicializar_Matriz_Espiral_Adyacentes(M: in out T_Matriz) is null;

   -------------
   -- Display --
   -------------
   procedure Enigma_Display(Displays: in T_Displays; Columnas: out T_Columnas) is null;

   ----------------------
   -- Relojes de arena --
   ----------------------
   procedure Relojes_De_Arena(M: in T_Matriz; Max: out Integer) is null;

end Laboratorio08;
