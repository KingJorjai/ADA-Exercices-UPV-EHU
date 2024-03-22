with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
package body Laboratorio07 is

   ------------------------------------------------------------
   --AUTHOR: Arévalo Fernández Jorge
   ------------------------------------------------------------

   ----------------
   -- Ultimo_Par --
   ----------------

   procedure Ultimo_Par(V: in T_Vector10; Ultimo_Par: out Integer; Posicion: out Natural) is

   begin
      Posicion := 0; Ultimo_Par := 0;
      for i in reverse V'Range loop
         if V(i) rem 2 = 0 then
            Posicion := i;
            Ultimo_Par := V(i);
            exit;
         end if;
      end loop;
   end Ultimo_Par;
   --------------------------
   -- multiplos_del_ultimo --
   --------------------------

   function Multiplos_Del_Ultimo (V: in T_Vector10) return Positive is
   res:Positive:=1;
   begin
      for i in V'First..V'Last-1 loop
         if V(V'Last)/=0 and then V(i) rem V(V'Last) = 0 then
            res:= res+1;
         elsif V(V'Last)=0 and V(i) = 0 then
            res:= res+1;
         end if;
      end loop;

      return res;
   end Multiplos_Del_Ultimo;

   -------------------
   -- esta_ordenado --
   -------------------

   function Esta_Ordenado (V: in T_Vector10) return Boolean is
   res:Boolean:=True;
   begin
      if V(V'First) > V(V'Last) then
         for i in V'First..V'Last-1 loop
            res := res and V(i)>=V(i+1);
         end loop;
      else
         for i in V'First..V'Last-1 loop
            res := res and V(i)<=V(i+1);
         end loop;
      end if;

      return res;
   end Esta_Ordenado;

   ---------------------
   -- Separar_digitos --
   ---------------------
   --Copiar contar_digitos y digito I del laboratorio05 y ponerlo aqu� para usarlo (si quieres)

   procedure Separar_digitos(Num: In Natural; V: out T_Vector10; impares: out Natural) is
   R:Integer; x:Integer := Num;
   begin
   impares := 0;

      for i in V'Range loop
         if x/=0 then
            R := x rem 10;
            x := x/10;
            V(V'Last-i+1) := R; 
            if R rem 2 /= 0 then
               impares := impares + 1;
            end if;
         else
            V(V'Last-i+1) := 0;
         end if;
      end loop;
   end Separar_digitos;

   -----------------------
   -- binario_a_decimal --
   -----------------------
   function Binario_A_Decimal (V: in T_Vector10) return Natural is
   decimal:Natural:=0;
   
      begin
         for i in V'Range loop
            decimal := decimal + V(V'Last-i+1)*2**(i-1);
         end loop;

         return decimal;
      end Binario_A_Decimal;

   -----------
   -- Rot13 --
   -----------
   procedure Rot13 (Sin_Cifrar: in string; Cifrado: out string) is
      begin
         for i in Sin_Cifrar'Range loop
            if Sin_Cifrar(i) in 'a'..'m' or Sin_Cifrar(i) in 'A'..'M' then
               Cifrado(i) := character'Val(character'Pos(Sin_Cifrar(i))+13);
            elsif Sin_Cifrar(i) in 'n'..'z' or Sin_Cifrar(i) in 'N'..'Z' then
               Cifrado(i) := character'Val(character'Pos(Sin_Cifrar(i))-13);
            else
               Cifrado(i) := Sin_Cifrar(i);
            end if;
         end loop;
      end Rot13;
   --------------------
   -- Digito_Control --
   --------------------
   function Digito_Control (Codigo_Cuenta: in T_Vector10) return Natural is
   sumatorio:Natural := 0;
   d_control:Natural;
      begin
         for i in Codigo_Cuenta'Range loop
            sumatorio := sumatorio + ( Codigo_Cuenta(i) * ((2**(i-1)) rem 11) );
         end loop;
         d_control := 11 - sumatorio rem 11;
         if d_control=11 then
            d_control:=0;
         elsif d_control = 10 then
            d_control:=1;
         end if;
         return d_control;
      end Digito_Control;

   --------------------
   -- Num_Misterioso --
   --------------------

   procedure Num_Misterioso (Num:out String) is null;
--      Numero: String := "0000000000";
--      --Num(1) es el d�gito1, Num(2) es el digito2,...
--   begin
--      -- las condiciones probablemente no est�n completas
--      -- if Integer'value(Numero(1..1)) rem 1 /= 0 then
--      --   No se puede dar porque cualquier n�mero es m�ltiplo de 1
--      --   pero este numero debe cambiar, porque tiene que ser distinto de los otros
--      --   seguramente se podr�a hacer tras el �ltimo elsif
--      Num := Numero;
--      --sabemos que hay solucion, por eso salimos del bucle cuando se encuentra
--      while Num = "0000000000" loop
--         -- Necesitamos encontrar los numeros que cumplen TODAS las conds
--         -- Cuando encontremos que no se cumple una condici�n, ese numero queda
--         -- desechado y pasamos al siguiente d�gito. Se plantea comenzar por el
--         -- digito1, pero quiz�s es mejor cambiar el orden.
--         -- Sugerencia: primero intenta encontrar el n�mero.
--         --             Luego intenta que se encuentre antes reduciendo
--         --             los numeros a comprobar (por ejemplo, el segundo d�gito
--         --             debe ser par, si no es 0, sera 2, 4, 6 u 8).
--         if Integer'Value(Numero(1..2)) rem 2 /= 0 then -- no es par
--            Numero(2) := Character'SUCC(Numero(2)); -- siguiente d�gito
--         elsif Integer'Value(Numero(1..3)) rem 3 /= 0 then -- no mult 3
--            Numero(3) := Character'SUCC(Numero(3)); -- sig. digito
--         --a�adir m�s casos
--         else -- encontrado el numero misterioso
--            Num := Numero;
--         end if;
--      end loop;
--   end Num_Misterioso;

   ----------------------------
   -- Incluir_Digito_Control --
   ----------------------------
   --Copiar la f del laboratorio 04
   function F(X,Pos: in Natural) return Natural is (Natural'Last);

   procedure Incluir_Digito_Control (Tarjeta: in out T_Vector16) is
   null;

   -----------------
   -- Es_Correcta --
   -----------------

   function Es_Correcta (Tarjeta: in T_Vector16) return Boolean is (False);

   --------------------------
   -- Incluir_Digitos_IBAN --
   --------------------------
   procedure Incluir_Digitos_IBAN(Pais: in String; Banco, Sucursal: in Integer; Numero_Cuenta: T_Vector10;
      IBAN: out STRING) is null;

   -----------
   -- Rot13 --
   -----------

   procedure Rot13 (Texto: in out String) is null;

   ------------------
   -- Mayusculizar --
   ------------------

   function Mayusculizar (Texto: in String) return String is ("SIN IMPLEMENTAR");

   --------------
   -- Poetizar --
   --------------

   procedure Poetizar is
     null;

   ---------------------------
   -- Shut the Box - Canoga --
   ---------------------------
   procedure Canoga(Puntos: out Natural) is
      null;

end Laboratorio07;
