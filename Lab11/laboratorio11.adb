package body Laboratorio11 is

   ----------
   -- Esta --
   ----------

   function Esta (L: in T_Lista_Dinamica; N: in Integer) return Boolean is
   auxi:T_Lista_Dinamica := L;
   encontrado:Boolean := False;
   begin
      while not encontrado and auxi /= null loop --Comprobar que la lista apunta a un nodo
         if auxi.all.Info = N then
            encontrado := True;
         end if;
         auxi := auxi.all.Sig;
      end loop;

      return encontrado;
   end Esta;

   --------------
   -- Posicion --
   --------------

   function Posicion (L: in T_Lista_Dinamica; N: in Integer) return Natural is
   contador:Natural:=0;
   auxi:T_Lista_Dinamica := L;
   encontrado:Boolean := False;
   begin
      while not encontrado and auxi /= null loop   --Comprobar que la lista apunta a un nodo
         if auxi.all.Info = N then
            encontrado := True;
         end if;
         contador := contador + 1;
         auxi := auxi.all.Sig;
      end loop;

      if not encontrado then
         contador := Integer'Last;  --Cuando lo no encuentra, guardar Integer'First para devolver
      end if;

      return contador;
   end Posicion;

   -----------
   -- Media --
   -----------

   function Media (L: in T_Lista_Dinamica) return Float is
   contador : Natural          := 0;
   auxi     : T_Lista_Dinamica := L;
   media    : Float            := Float'Last;
   suma     : Float            := 0.0;
   --
   begin
      while auxi /= null loop   --Comprobar que la lista apunta a un nodo
         suma := suma + Float(auxi.all.Info);
         contador := contador + 1;
         auxi := auxi.all.Sig;
      end loop;

      if L /= null then
         media := suma / Float(contador); --Caso Lista vacía
      end if;
            
      return media;

   end Media;

   -------------
   -- Prepend --
   -------------

   procedure Prepend (L: in out T_Lista_Dinamica; Num: Integer) is
   
   begin
      L := new T_Nodo_enteros'(Num,L);
   end Prepend;

   ------------
   -- Append --
   ------------

   procedure Append (L: in out T_Lista_Dinamica; Num: Integer) is
   auxi  :T_Lista_Dinamica := L;
   --
   begin
      if L /= null then
         while auxi.all.sig /= null loop
            auxi := auxi.all.sig;
         end loop;
         --
         auxi.all.sig := new T_Nodo_enteros'(Num,null);
      else
         L := new T_Nodo_enteros'(Num,null);
      end if;
   end Append;

   ------------------------------
   -- Insertar_Elemento_En_Pos --
   ------------------------------

   procedure Insertar_Elemento_En_Pos (L: in out T_Lista_Dinamica; Num: in Integer; Pos: in Integer) is
   auxi     :T_Lista_Dinamica :=L;
   contador :Natural          :=0;
   --
   begin
      if L = null or Pos <= 1 then
         L := new T_Nodo_enteros'(Num,L);
      else
         while auxi /= null and then (auxi.all.sig /= null and contador < Pos-2) loop
            auxi := auxi.all.Sig;
            contador := contador + 1;
         end loop;
         --
         auxi.all.Sig := new T_Nodo_enteros'(Num,auxi.all.Sig);
      end if;

   end Insertar_Elemento_En_Pos;

   --------------
   -- Insertar --
   --------------

   procedure Insertar (L: in out T_Lista_Dinamica; Num: in Integer) is
   auxi        :T_Lista_Dinamica :=L;
   encontrado  :Boolean          :=False;
   --
   begin
      if L = null then --Lista vacia
         L := new T_Nodo_enteros'(Num,L);
      elsif L.all.Sig = null then --Lista de un elemento
         if Num <= L.all.Info then
            L := new T_Nodo_enteros'(Num,L);
         else
            L.all.Sig := new T_Nodo_enteros'(Num,null);
         end if;
      elsif Num <= L.all.Info then --Caso general para primer elemento
         L :=  new T_Nodo_enteros'(Num,L);
      else --Caso general
         while not encontrado and auxi /= null loop
            if auxi.all.sig /= null then --siguiente elemento no es el ultimo
               if  Num <= auxi.all.Sig.all.Info then
                  encontrado := True;
                  auxi.all.Sig := new T_Nodo_Enteros'(Num,auxi.all.Sig);
               end if;
            else --siguiente elemento es el ultimo
               if auxi.all.Info <= Num then
                  encontrado := True;
                  auxi.all.Sig := new T_Nodo_Enteros'(Num,auxi.all.Sig);
               else
                  encontrado := True;
                  auxi.all.Sig := new T_Nodo_Enteros'(Num,auxi.all.Sig);
               end if;
            end if;
            --
            auxi := auxi.all.Sig;
            --
         end loop;
      end if;
   end Insertar;
   ------------
   -- Borrar --
   ------------

   procedure Borrar (L: in out T_Lista_Dinamica; Num: in Integer) is
   auxi        :T_Lista_Dinamica       :=L;
   encontrado  :Boolean                :=False;
   --
   begin
      if L/=null and then L.all.Info = Num then
         L := L.all.Sig;
      else
         while not encontrado and auxi/=null loop
            if auxi.all.Sig /= null and then auxi.all.Sig.all.Info = Num then
               encontrado := True;
               auxi.all.Sig := auxi.all.Sig.all.Sig;
            else
            auxi := auxi.all.Sig;
            end if;
         end loop;
      end if;
      --
      
   end Borrar;

   ----------------
   -- Concatenar --
   ----------------

   procedure Concatenar (L1, L2: in out T_Lista_Dinamica) is
      auxi  :T_Lista_Dinamica := L1;
   --
   begin
      if L1 /= null then
         while auxi.all.sig /= null loop
            auxi := auxi.all.sig;
         end loop;
         --
         auxi.all.sig := L2;
      else
         L1 := L2;
      end if;
   end Concatenar;

   --------------
   -- Invertir --
   --------------

   procedure Invertir (L: in out T_Lista_Dinamica) is
   auxi  :T_Lista_Dinamica := L;
   --
   begin
      L := null;
         while auxi /= null loop
            L := new T_Nodo_Enteros'(auxi.all.Info,L);
            auxi := auxi.all.sig;
         end loop;
   end Invertir;

end Laboratorio11;
