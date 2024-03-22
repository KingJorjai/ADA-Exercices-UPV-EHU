with Ada.Text_IO; use Ada.Text_IO;
with ada.Float_Text_IO; use ada.Float_Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;


package body Laboratorio05 is

  --------------------
  -- Contar_Digitos --
  --------------------

  function Contar_Digitos (Num : in Positive) return Natural is (Natural'Last);

  --------------------
  -- Contar_Digitos --
  --------------------

  procedure Contar_Digitos (Num : in Positive; digitos: out Natural) is

    begin
      case Num is
        when 1..9 => digitos := 1;
        when 10..99 => digitos := 2;
        when 100..999 => digitos := 3;
        when 1000..9999 => digitos := 4;
        when 10000..99999 => digitos := 5;
        when 100000..999999 => digitos := 6;
        when 1000000..9999999 => digitos := 7;
        when 10000000..99999999 => digitos := 8;
        when 100000000..999999999 => digitos := 9;
        when others => digitos := 0;
      end case;

    end Contar_Digitos;

  --------------
  -- Digito_I --
  --------------
  function Digito_I (Num, I: in Natural) return T_Digito is
    Numero_string:string:=Natural'Image(Num);
    digito:T_Digito;
    begin
      digito := T_Digito'Value('0' & Numero_string(I+1));
      return digito;
    end Digito_I;

  --------------
  -- Digito_I --
  --------------

  procedure Digito_I (Num, I: in Natural; Dig_I: out T_Digito) is
    begin
      null;
    end Digito_I;

  ----------------
  -- es_Capicua --
  ----------------

  function es_Capicua (Num: in Positive) return Boolean is
  Numero_string:string:=Natural'Image(Num);
  digitos:Natural:= Numero_string'Length-1;
  capicua:Boolean:=True;
    begin
      --Put("String: "); Put(Numero_string); New_Line;  --Debug
      --Put("digitos: ");Put(digitos); New_Line;        --Debug
      for i in 1..digitos/2 loop
          capicua := capicua and Numero_string(i+1)=Numero_string(digitos-i+2);
      end loop;

      return capicua;
    end es_Capicua;

  -----------------------
  -- Contador_Capicuas --
  -----------------------
  procedure Contador_Capicuas (Num: out Natural) is
  numero:Natural:=0;
    begin
    NUM:=0;
      loop
        Get(numero);
        exit when numero=0;
        if es_Capicua(numero) AND numero rem 5 = 0 then
          num := num+1;
        end if;     
      end loop;
    end Contador_Capicuas;

  --------------
  -- es_Omirp --
  --------------

  function es_Omirp (Num: in Positive) return Boolean is
    primo,primo_inverso:Boolean:=True;
    num_string, num_inverso_string:string:=Integer'Image(num);
    num_inverso:Positive;
  begin
    for i in reverse 1..(num_string'Length) loop
      num_inverso_string(num_string'Length - i + 1) := num_string(i);
    end loop;

    num_inverso := Positive'Value(num_inverso_string);
    --Put("Num inverso: "); Put(num_inverso); New_Line; --Debug

    for i in 2..(num-1) loop
      if num rem i = 0 then
        primo := false;
      end if;
    end loop;

    for i in 2..(num_inverso-1) loop
      if num_inverso rem i = 0 then
        primo_inverso := false;
      end if;
    end loop;

    return primo and primo_inverso;
  end es_Omirp;

  ---------------
  -- pos_omirp --
  ---------------

  procedure pos_omirp (omirp_1,omirp_n:out Natural; Pos1,PosN: out Natural) is
  x:Natural:=0;
  i:Integer:=1;
  control:Boolean:=True;
    begin
      omirp_1 := 0; omirp_n := 0; Pos1 := 0; PosN := 0;
      
      loop
        exit when End_Of_File;
          Get(x);
          if x/=0 and then es_Omirp(x) then
            if control then
              omirp_1 := x; omirp_n := x;
              Pos1 := i; PosN := i;
              control := FALSE;
            else
              omirp_n := x;
              PosN := i;
            end if;
          end if;
        i:=i+1;
      end loop;

    end pos_omirp;

  -- INVERTIR UN NÚMERO
  --  N_string,N_inv_string:string:=Num'Image;
  --N_inv,Bin:Positive;
  --begin
  --  for I in N_string'Range loop
  --    N_inv_string(N_string'Length+1-I):=N_string(I);
  --  end loop;
  --  N_inv := Integer'Value(N_inv_string);
  --  Put(N_inv);
  
  ---------------
  -- es_odioso --
  ---------------

  function es_odioso (Num: in Positive) return Boolean is
N_unos:Natural:=0;
R,C_in,C_out:Natural;
  begin
    C_in:=Num;
    C_out:=1;
    loop
      if C_out=0 then
        exit;
      end if;

      R:=C_in rem 2;
      C_out:=C_in/2;
      C_in:=C_out;
      if R=1 then
        N_unos:=N_unos+1;
      end if;
    end loop;
    --Put(N_unos); --debug
    return N_unos rem 2 /= 0;
  end es_odioso;

  -----------------------
  -- secuencia_odiosos --
  -----------------------

  procedure secuencia_odiosos (suma_odiosa: out Boolean) is
  numero,cantidad,suma:Natural:=0;
    begin
      loop
        Get(numero);
        exit when numero=0 or cantidad>=5;
        if es_odioso(numero) AND numero rem 2 /= 0 then
          cantidad := cantidad+1;
          suma:=suma+numero;
        end if;
      end loop;
    --Put(suma); --debug
    suma_odiosa := suma/=0 and then es_odioso(suma);
    end secuencia_odiosos;

  ------------------
  -- control_ISBN --
  ------------------

  function control_ISBN (num:In Integer) return character is
  control,suma,resto:Integer:=0;
  char:Character:='Z';
  begin
    for I in 1..9 loop
      suma := suma + Digito_I(num,I)*I;
    end loop;
    resto := suma rem 11;
    case resto is
      when 0 => char := '0';
      when 1 => char := '1';
      when 2 => char := '2';
      when 3 => char := '3';
      when 4 => char := '4';
      when 5 => char := '5';
      when 6 => char := '6';
      when 7 => char := '7';
      when 8 => char := '8';
      when 9 => char := '9';
      when 10 => char := 'X';
      when others => null;
    end case;

    return char;
  end control_ISBN;


  ----------------
  -- es_collatz --
  ----------------

  procedure es_collatz (resultado: out Boolean) is
  x,N:Integer;
  collatz:Boolean:= True;
  begin
      Get(N);
    loop
      Get(x); exit when x=0 or N=0;
      if N rem 2 = 0 and x /= N/2 then
        collatz := False;
      elsif N rem 2 /= 0 and x /= 3*N+1 then
        collatz := False;
      else
        N:=x;
      end if;
    end loop;
  end es_collatz;

  -------------------
  -- Area_Poligono --
  -------------------

  procedure Area_Poligono (Area_Total: out Float) is null;

  ------------------------
  -- Iteracion_Kaprekar --
  ------------------------

  procedure Iteracion_Kaprekar (Num: in Natural; Resultado: out Natural) is null;

  ----------------------
  -- Lleva_A_Kaprekar --
  ----------------------

  procedure Lleva_A_Kaprekar(Num: in Natural; Lleva: out Boolean; Pasos: out Natural) is null;

  --------------
  -- Producto --
  --------------

  function Producto (X,N: in Natural) return Natural is (Natural'last);

  ---------------
  -- Fibonacci --
  ---------------

  function Fibonacci (N: in Natural) return Natural is (0);

  ---------------
  -- Factorial --
  ---------------

  function Factorial (N: in Natural) return Natural is (0);

  ---------------
  -- Ackermann --
  ---------------

  function Ackermann (M,N: in Natural) return Natural is (Natural'last);

  -------------
  -- Hermite --
  -------------

  function Hermite (N: in Natural; X:in Float) return Float is (Float'first);

  -------------
  -- Binario --
  -------------

  function Binario (N: in Natural) return String is ("NO IMPLEMENTADO");

  ------------------
  -- P_Aritmetica --
  ------------------

  function P_Aritmetica (A1,D,N: in Natural) return Natural is (Natural'Last);

  ------------------
  -- P_Geometrica --
  ------------------

  function P_Geometrica (B1,R,N: in Natural) return Natural is (Natural'Last);

  ---------------------------
  -- Multiplicar_Karatsuba --
  ---------------------------

  procedure Multiplicar_Karatsuba (N1,N2: in String; R: out String) is null;

  ------------------------------
  -- Secuencia Texto Puntuado --
  ------------------------------
  procedure Secuencia_Texto_Puntuado(Puntos,Caracteres: out Natural) is null;

end Laboratorio05;
