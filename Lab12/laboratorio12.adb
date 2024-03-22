with Ada.Text_IO; use Ada.Text_IO;

package body Laboratorio12 is

   -------------------------
   -- Clonar_y_Concatenar --
   -------------------------

   procedure Clonar_y_Concatenar
     (L1,L2: in T_Lista_Dinamica;
      L: out T_Lista_Dinamica)
   is
   auxiL1               :T_Lista_Dinamica       :=L1;
   auxiL2               :T_Lista_Dinamica       :=L2;
   auxiL                :T_Lista_Dinamica       ;
   begin
      L := null; auxiL := L;                                -- Inicializar los auxiliares
      --
      if L1 /= null then                                    -- Si L1 no es vacia
         L := new T_Nodo_enteros'(L1.all.Info, null);                      -- Añadir primer elemento
         auxiL := L;
         --
         while auxiL1 /= null loop                                         -- Caso general
            auxiL.all.Sig := new T_Nodo_enteros'(auxiL1.all.Info,null);
            auxiL := auxiL.all.Sig;
            auxiL1 := auxiL1.all.Sig;
         end loop;
      end if;
      --
      if L2 /= null then                                    -- Si L2 no es vacia
         if L = null then                                   -- Si L1 era vacia 
            L := new T_Nodo_enteros'(L2.all.Info, null);                   -- Añadir primer elemento
            auxiL := L;
         end if;
         --
         while auxiL2 /= null loop                                         -- Caso general
            auxiL.all.Sig := new T_Nodo_enteros'(auxiL2.all.Info,null);
            auxiL := auxiL.all.Sig;
            auxiL2 := auxiL2.all.Sig;
         end loop;         
      end if;
      --
      if L /= null then                                     -- Corregir duplicacion del primer elemento
         L := L.all.Sig;                                    -- No he sabido hacerlo de otra forma
      end if;
      --
      
   end Clonar_y_Concatenar;

   ------------
   -- Borrar --
   ------------

   procedure Borrar (L: in out T_Lista_Dinamica; Num: Integer) is
   auxi_pre             :T_Lista_Dinamica          :=L;
   auxi_post            :T_Lista_Dinamica          ;
   begin
      if L /= null then                                                    -- Si la lista no es vacia
         if L.all.Info = Num then                                          -- Comprobar primer elemento
            while auxi_pre /= null and then auxi_pre.all.Info = Num loop   -- Saltarse todas las apariciones de Num
               auxi_pre := auxi_pre.all.Sig;
               L := auxi_pre;
            end loop;
         end if;
         if L /= null then
            auxi_post := auxi_pre.all.Sig;                  -- Inicializar auxi_post
            while auxi_post /= null loop                    -- Recorrer lista hasta el final
               if auxi_post.all.Info = Num then             -- Si encuentra el numero
                  auxi_pre.all.Sig := auxi_post.all.Sig;    -- Eliminar el de la mitad
                  auxi_post := auxi_post.all.Sig;           -- Hacer que auxi_post apunte al siguiente elemento
               else
                  auxi_pre := auxi_pre.all.Sig;             -- Avanzar al siguiente elemento en auxi_pre
                  auxi_post := auxi_post.all.Sig;           -- Avanzar al siguiente elemento en auxi_post
               end if;
            end loop;
         end if;
      end if;
   end Borrar;

   ------------------
   -- Interseccion --
   ------------------

   procedure Interseccion (L1,L2: in out T_Lista_Dinamica; Comunes, No_Comunes: out T_Lista_Dinamica) is
   auxiL1:T_Lista_Dinamica:=L1;
   auxiL2:T_Lista_Dinamica:=L2;
   auxi_comunes_1,auxi_comunes_2:T_Lista_Dinamica;
   auxi_nocomunes:T_Lista_Dinamica;
   encontrado_comunes,encontrado_nocomunes,terminado:Boolean:=False;
   begin
      Comunes := null;                                                        -- Inicializar listas
      No_Comunes := null;
      --
      while not terminado loop                           -- Caso general
         if auxiL1 /= null and auxiL2 /= null then
            if auxiL1.all.Info > auxiL2.all.Info then       -- L2 < L1
               if not encontrado_nocomunes then
                  No_Comunes := auxiL2;
                  auxi_nocomunes := auxiL2;
                  encontrado_nocomunes := True;
                  auxiL2 := auxiL2.all.Sig;
                  --
                  auxi_nocomunes.all.Sig := null;
               else
                  auxi_nocomunes.all.Sig := auxiL2;
                  auxi_nocomunes := auxiL2;
                  auxiL2 := auxiL2.all.Sig;
                  --
                  auxi_nocomunes.all.Sig := null;
               end if;
            elsif auxiL1.all.Info < auxiL2.all.Info then    -- L1 < L2
               if not encontrado_nocomunes then
                  No_Comunes := auxiL1;
                  auxi_nocomunes := auxiL1;
                  encontrado_nocomunes := True;
                  auxiL1 := auxiL1.all.Sig;
                  --
                  auxi_nocomunes.all.Sig := null;
               else
                  auxi_nocomunes.all.Sig := auxiL1;
                  auxi_nocomunes := auxiL1;
                  auxiL1 := auxiL1.all.Sig;
                  --
                  auxi_nocomunes.all.Sig := null;
               end if;
            else                                            -- L1 = L2
               if not encontrado_comunes then
                  auxi_comunes_1 := auxiL1;
                  auxiL1 := auxiL1.all.Sig;
                  Comunes := auxi_comunes_1;
                  --
                  auxi_comunes_2 := auxiL2;
                  auxiL2 := auxiL2.all.Sig;
                  auxi_comunes_1.all.Sig := auxi_comunes_2;
                  --
                  encontrado_comunes := True;
                  auxi_comunes_2.all.Sig := null;
               else
                  auxi_comunes_1 := auxiL1;
                  auxiL1 := auxiL1.all.Sig;
                  auxi_comunes_2.all.Sig := auxi_comunes_1;
                  --
                  auxi_comunes_2 := auxiL2;
                  auxiL2 := auxiL2.all.Sig;
                  auxi_comunes_1.all.Sig := auxi_comunes_2;
                  --
                  auxi_comunes_2.all.Sig := null;
               end if;
            end if;
         -----
         elsif auxiL1 = null  and auxiL2 /= null then
            
            --
            if encontrado_nocomunes then
               auxi_nocomunes.all.Sig := auxiL2;
            else
               No_Comunes := auxiL2;
            end if;
            terminado := True;
         elsif auxiL2 = null and auxiL1 /= null then
            
            --
            if encontrado_nocomunes then
               auxi_nocomunes.all.Sig := auxiL1;
            else
               No_Comunes := auxiL1;
            end if;
            terminado := True;
         else
            terminado := True;
         end if;
      end loop;
      --
      

   end Interseccion;


   -----------------
   -- Son_iguales --
   -----------------

   function Son_iguales (L1,L2: in T_Lista_Dinamica) return Boolean is
   auxiL1:T_Lista_Dinamica := L1;
   auxiL2:T_Lista_Dinamica := L2;
   salir:Boolean := false;
   iguales:Boolean := True;
   begin
      while not salir loop
         if auxiL1 /= null and auxiL2 /= null then
            if auxiL1.all.Info = auxiL2.all.Info then
               auxiL1 := auxiL1.all.Sig;
               auxiL2 := auxiL2.all.Sig;
            else
               iguales := False;
               salir := True;
            end if;
         elsif (auxiL1 = null and auxiL2 /= null) or (auxiL1 /= null and auxiL2 = null) then
            iguales := False;
            salir := True;
         elsif auxiL1 = null and auxiL2 = null then
            salir := true;
         end if;
      end loop;
      --
      return iguales;
   end Son_iguales;

   ------------------
   -- Simplificar1 --
   ------------------

   procedure Simplificar1 (L: in out T_Lista_Puntos; Cuantos: out Natural) is
   auxi:T_Lista_Puntos := L;
   begin
      cuantos:=0;
      --
      if L/= null then
         while auxi.all.Sig /= null and then auxi.all.Sig.all.Sig /= null loop
            if abs(auxi.all.Info.X - auxi.all.Sig.all.Info.X) <= 0.001 and
               abs(auxi.all.Info.Y - auxi.all.Sig.all.Info.Y) <= 0.001 then
                  auxi.all.Sig := auxi.all.Sig.all.Sig;
                  --  auxi := auxi.all.Sig;
                  cuantos := cuantos + 1;
            else
               auxi := auxi.all.Sig;
            end if;
         end loop;
      end if;
   end Simplificar1;

   ------------------
   -- Simplificar2 --
   ------------------

   procedure Simplificar2 (L: in out T_lista_Puntos; Cuantos: out Natural) is null;

   --------------------
   -- Cuantos Grupos --
   --------------------

   function Cuantos_Grupos (V: in T_Vector_L_Dinamicas) return Natural is (Integer'Last);

   -------------------------
   -- Crear_Arbol_Binario --
   -------------------------

   procedure Crear_Arbol_Binario
     (V:in T_Vector_Enteros;
      A:out T_Arbol_Binario)
   is  null;

end Laboratorio12;
