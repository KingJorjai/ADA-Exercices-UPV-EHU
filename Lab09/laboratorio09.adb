package body Laboratorio09 is

   -------------------
   -- Dia_Siguiente --
   -------------------

   procedure Dia_Siguiente (F: in out T_Fecha) is

  Es_Bisiesto:Boolean:= (F.anno rem 4 = 0 and F.anno rem 100 /= 0)
                        or
                        (F.anno rem 100 = 0 and F.anno rem 400 = 0);
    begin
      case f.Mes is
        when febrero =>
              case F.Dia is
                when 1..27 =>
                  F.Dia := T_Dia'Succ(F.dia);
                when 28 =>
                  if Es_Bisiesto then
                    f.Dia := T_Dia'Succ(F.dia);
                  else
                    f.Dia := 1;
                    f.Mes := T_mes'Succ(F.mes);
                  end if;
                when 29 =>
                  f.Dia := 1;
                  f.Mes := T_mes'Succ(F.mes);
                when others => null;
              end case;
        when Enero | marzo | mayo | julio | agosto | octubre =>
              case f.Dia is
                when 1..30 =>
                  f.Dia := f.Dia+1;
                when 31 =>
                  f.Dia := 1;
                  f.Mes := T_mes'Succ(F.mes);
              end case;
        when diciembre =>
              case f.Dia is
                when 1..30 =>
                  f.Dia := T_Dia'Succ(F.dia);
                when 31 =>
                  f.Dia := 1;
                  f.Mes := Enero;
                  f.anno := f.anno + 1;
              end case;
        when others =>
              case f.Dia is
                when 1..29 =>
                  f.Dia := T_Dia'Succ(F.dia);
                when 30 =>
                  f.Dia := 1;
                  f.Mes := T_mes'Succ(F.mes);
                when others => null;
              end case;
      end case;
        

    end Dia_Siguiente;

   ------------
   -- Trigon --
   ------------

     function Trigon (C: in T_Complejo_Polar) return T_Complejo_Tri is (Float'First,Float'First);

   -----------
   -- Polar --
   -----------

   function Polar (C: in T_Complejo_tri) return T_complejo_polar is (Float'Last,Float'Last);

   ----------
   -- esta --
   ----------

  function esta (L: in T_Lista_Estatica; N: in Integer) return Boolean is
  -- Variable donde almacenaremos el valor a devolver en la función
    esta:Boolean:=False;
  begin
  -- Recorrido parcial del vector L.Dato
    for i in 1..L.cont loop
      -- Comprobar si el elemento del vector coincide con N
      if L.Dato(i) = N then
        -- Recordar que N esta en la lista y salir del bucle
          esta := True;
          exit;
      end if;
    end loop;
    -- Devolver si N esta o no en la lista
      return esta;
  end esta;

   --------------
   -- posicion --
   --------------

  function posicion(L: in T_Lista_Estatica;Num: in Integer)return Integer is
  posicion:Integer:=Integer'Last;
  begin
  -- Recorrido parcial del vector L.Dato
    for i in 1..L.cont loop
      -- Comprobar si el elemento del vector coincide con N
      if L.Dato(i) = Num then
        -- Guardar del valor del indice en la variable posicion
          posicion := i;
      end if;
    end loop;
    -- Devolver la posicion
      return posicion;
    end posicion;

   -----------------
   -- Son_Iguales --
   -----------------

  function Son_Iguales (L1, L2: in T_Lista_Estatica) return Boolean is

    begin
    --Utilizo 'and then' para que el programa sea más eficiente, ya que no tiene que comprobar la lista entera si el numero de elementos no es igual
      return L1.cont = L2.cont and then L1.Dato(1..L1.cont) = L2.Dato(1..L2.cont);
    end Son_Iguales; 

   -----------------------
   -- eliminar_elemento --
   -----------------------

   procedure eliminar_elemento(num: in Integer;L: in out T_Lista_Estatica)is null;

   ------------------------------
   -- insertar_elemento_en_pos --
   ------------------------------

   procedure insertar_elemento_en_pos(num, pos: in Integer;L: in out T_Lista_Estatica)is null;

   ----------------
   -- Pos_Maximo --
   ----------------

   function Pos_Maximo (L: in T_Lista_Estatica) return Integer is (Integer'First);

   ---------------------
   -- Ordenar_Burbuja --
   ---------------------

   procedure Ordenar_Burbuja (L: in out T_Lista_Estatica) is null;

   --------------
   -- Posicion --
   --------------

  procedure Posicion(M: in T_Matriz;Num: in Integer;Fil,Col: out Integer) is
  salir:Boolean:=False;
    begin
      -- Inicializar Fil y Col a cero para que salga ese valor si no se encuentra el numero
        Fil := 0;
        Col := 0;
      -- Búsqueda completa
        for i in M'Range(1) loop
        exit when salir;
          for j in M'Range(2) loop
            exit when salir;
            --Si el elemento de la matriz coincide con num:
              if M(i,j) = Num then
                Fil := i;
                Col := j;
                --Salir del bucle para quedarse con el valor de más arriba y más a la izquierda
                salir := True;
              end if;
          end loop;
        end loop;
      
    end Posicion;

   ------------
   -- Maximo --
   ------------

   procedure Maximo (M: in T_Matriz; Maximo,Fila,Columna: out Integer) is null;

   ---------------
   -- Quicksort --
   ---------------
   procedure Ordenar_Quicksort(L: in out T_Lista_Estatica) is null;

   ------------
   -- Patron --
   ------------
   function Patron(N: in Positive) return T_Matriz is ((1,1),(1,1));

   --------------------
   -- Patron Espiral --
   --------------------
   function Patron_Espiral(N: in Positive) return T_Matriz is ((1,1),(1,1));
end Laboratorio09;
