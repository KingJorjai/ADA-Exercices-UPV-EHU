package body Laboratorio10 is

   -----------------------
   -- Insertar_En_Medio --
   -----------------------

   procedure Insertar_En_Medio (L: in out T_Lista_Estatica; Num: in Integer)
   is

  begin
    if L.cont rem 2 = 0  and l.cont < 20 then
      L.cont := l.cont + 1;
      for i in reverse l.cont/2+2..L.cont loop
        L.Dato(i) := l.Dato(i-1);
      end loop;
      L.Dato(l.cont/2+1) := Num;
    end if;
  end Insertar_En_Medio;

   -----------------------
   -- Borrar_Intermedio --
   -----------------------

  procedure Borrar_Intermedio (L: in out T_Lista_Estatica) is

  begin
    if l.cont rem 2 /= 0 then
      for i in l.cont/2+1..l.cont loop
        l.Dato(i) := l.Dato(i+1);
      end loop;
      l.cont := l.cont - 1;
    end if;
  end Borrar_Intermedio;

   ---------------
   -- Encriptar --
   ---------------

   procedure Encriptar
     (N,Clave: in T_Vector_Enteros;
      Num: out T_Vector_Enteros)
  is
  i:Integer:=Clave'Last;
  j:Integer:=N'Last;
  begin
    while i in Num'Range loop
      if i > Clave'Length - N'Length then
        Num(Clave(i)) := N(j);
      else
        Num(Clave(i)) := 0;
      end if;
      
      i:=i-1; j:=j-1;
    end loop;
  end Encriptar;

   -------------
   -- Comunes --
   -------------

   function Comunes (V1,V2: in T_vector_enteros) return Natural is (Natural'Last);

   --------------------------------------
   -- Obtener_Num_Vecinos_por_Vivienda --
   --------------------------------------

   procedure Obtener_Num_Vecinos_por_Vivienda
     (C: in T_Comunidad;
      R:out T_Rascacielos)
  is

  begin
    R := (others => (others => 0));

    for vecino in C'Range loop
      R(C(vecino).piso, C(vecino).mano) := R(C(vecino).piso, C(vecino).mano) + 1;
    end loop;
  end Obtener_Num_Vecinos_por_Vivienda;

   ----------------------
   -- Obtener_Consumos --
   ----------------------

   procedure Obtener_Consumos
     (E: in T_Edificio;
      Consumo_electrico: out Float;
      Consumo_Gas: out T_Consumo_Medio_Manos)
  is
    Habitantes_mano:T_Consumo_Medio_Manos := (others => 0.0);
    Habitantes:Integer := 0;
  begin
    Consumo_electrico := 0.0; Consumo_Gas := (others => 0.0);

    for i in E'Range(1) loop
      for j in E'Range(2) loop
        Consumo_electrico := Consumo_electrico + E(i,j).Consumo_Electrico;
        Consumo_Gas(i) := Consumo_Gas(i) + E(i,j).Consumo_Gas;
        Habitantes := Habitantes + E(i,j).Habitantes;
        Habitantes_mano(i) := Habitantes_mano(i) + Float(E(i,j).Habitantes);
      end loop;
    end loop;

    Consumo_electrico := Consumo_electrico / Float(Habitantes);
    for i in Consumo_Gas'Range loop
      Consumo_Gas(i) := Consumo_Gas(i) / Habitantes_mano(i);
    end loop;
  end Obtener_Consumos;

   ------------
   -- Maximo --
   ------------

   procedure Maximo
     (Lluvia: in T_Datos_Pluviometricos;
      F1, F2: T_Fecha;
      F: out T_Fecha)
   is null;

   -----------------
   -- Simplificar --
   -----------------

   procedure Simplificar
     (L:  in out T_Estatica_Carreteras;
      Peaje: out T_Estatica_Carreteras)
   is null;

   -----------------
   -- Simplificar --
   -----------------

   procedure Simplificar (L: in out T_Estatica_Puntos) is
     null;

   -----------------
   -- Simplificar --
   -----------------

   procedure Simplificar (L: in out T_Estatica_Carreteras) is
     null;

   --------------------------
   -- DNI_Mayor_Patrimonio --
   --------------------------

   function DNI_Mayor_Patrimonio (U: in T_Urbanizacion) return Integer is (Integer'First);

   ------------------------------
   -- encontrar_espacio_blanco --
   ------------------------------

   procedure encontrar_espacio_blanco (P: in T_Puzle; F, C: out Integer) is
      null;
   -----------------------------
   -- rotar_matriz_derecha_90 --
   -----------------------------

   procedure rotar_matriz_derecha_90 (F: in out T_Ficha) is
      null;

   ---------------------
   -- filas_correctas --
   ---------------------

   function filas_correctas
     (P: in T_Puzle;
      Ficha: in T_Ficha;
      F, C: in Integer)
      return Boolean is (False);

end Laboratorio10;
