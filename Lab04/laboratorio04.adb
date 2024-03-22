with ada.Numerics; use ada.Numerics;
with Ada.Numerics.Elementary_Functions; use  Ada.Numerics.Elementary_Functions;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Calendar; use Ada.Calendar;

-----------------------------
-- Jorge Arévalo Fernández --
-----------------------------

package body Laboratorio04 is

  -------
  -- f --
  -------

  function f (X,Pos: in Natural) return Natural is
  res:Natural;
    begin
      if Pos rem 2 = 0 then
        res := X;
      elsif x<5 then
        res := 2*X;
      else
        res := 2*X - 0;
      end if;
      return res;
    end f;

  ----------------
  -- Nota_Final --
  ----------------

  function Nota_Final(Nota1, Nota2, Nota3: in float; Metodo: in Positive) return Float is
  res,Max,Min,Mid: Float;
  begin
    case Metodo is
      when 1 =>
        Max := Nota1;
        if Nota2 >= Max then
          Max := Nota2;
        end if;
        if Nota3 >= Max then
          Max := Nota3;
        end if;
        res := Max;
      when 2 =>
        Min:=Nota1;
        if Nota2 <= Min then
          Min := Nota2;
        end if;
        if Nota3 <= Min then
          Min := Nota3;
        end if;
        res := Min;
      when 3 =>
        Mid := Nota1;
        if (Nota2 <= Nota1 and Nota1 <= Nota3)
        or (Nota3 <= Nota1 and Nota1 <= Nota2) then
          Mid := Nota1;
        elsif (Nota1 <= Nota2 and Nota2 <= Nota3)
            or (Nota3 <= Nota2 and Nota2 <= Nota1) then
          Mid := Nota2;
        else
          Mid := Nota3;
        end if;
        res := Mid;            
      when 4 => res := Nota3;
      when 5 => res := (Nota1 + Nota2 + Nota3)/3.0 ;
      when 6 => res := (Nota1 * Nota2 * Nota3)**(1.0/3.0) ;
      when others =>
        null;
    end case;
    return res;
  end Nota_Final;

  -------------
  -- a_polar --
  -------------

  procedure a_polar (a,b: in float; modulo, argumento: out Float) is

  begin
    --Módulo
    modulo := Sqrt(a**2+b**2) ;
    -- Argumento
    if a=0.0 then
      if b<0.0 then
        argumento := 3.0*Pi/2.0;
      elsif b>0.0 then
        argumento := Pi/2.0;
      else
        argumento := 0.0;
      end if;
    elsif a<0.0 then
      argumento := Pi + Arctan(b/a);
    elsif a>0.0 and b<0.0 then
      argumento := 2.0*Pi + Arctan(b/a);
    else
      argumento := Arctan(b/a);
    end if;
  end a_polar;

  --------------------
  -- resultado_ONCE --
  --------------------

  procedure resultado_ONCE (premiado, a_comprobar: in Natural; premio: out Natural)is null;

  -----------------
  -- Multiplos_3 --
  -----------------

  procedure Multiplos_3 (N1,N2: in Natural; cuenta, suma: out Natural) is null;

  ---------------
  -- Factorial --
  ---------------

  function Factorial (N: in Positive) return Positive is
  res:Positive:=1;
  begin
    for i in 1..N loop
      res := i*res;
    end loop;
    return res;
  end Factorial;

  ---------------------
  -- decimal_binario --
  ---------------------

  procedure decimal_binario (Decimal: in Natural; Binario: out Natural) is null;

  -------------------
  -- Pregunta_Test --
  -------------------

  procedure Pregunta_Test(Pregunta,O1,O2,O3,O4: in String; Respuesta: out Positive) is null;

  ----------------------
  -- segundo_anterior --
  ----------------------

  procedure segundo_anterior (h, m, s: in out Natural) is null;

  ----------------
  -- solucionar --
  ----------------

  procedure solucionar(a,b,c: in float;num_sols: out Natural;sol1, sol2: out Float) is null;

  -----------------
  -- final_tarea --
  -----------------

  procedure final_tarea(h,m,s: in Natural;duracion: in Positive; siguiente_jornada: out Boolean; hf,mf,sf: out Natural)
  is null;

  -----------------------
  -- Secuencia_Collatz --
  -----------------------

  procedure Secuencia_Collatz (num: in Positive; cuenta, suma: out Natural) is
  n:Positive := num;
  begin
    cuenta := 1;
    suma := n;
    loop
      exit when n=1;
      if n rem 2 = 0 then
        n := n/2;
      else
        n := 3*n+1;
      end if;
      cuenta := cuenta + 1;
      suma := suma + n;
    end loop;
  end Secuencia_Collatz;

  ---------------
  -- Fibonacci --
  ---------------

  function Fibonacci (N:in Natural) return Natural is
  f,f_2,
  x     :Natural;
  begin
    case N is
      when 0 => f:=0;
      when 1 => f:=1;
      when others =>
        f_2:=0; f:=1;
        for i in 2..N loop
          x:=f;
          f:=f+f_2;
          f_2:=x;
        end loop;
    end case;
  return f;
  end Fibonacci;

  -----------------------
  -- Divisores_propios --
  -----------------------

  function Divisores_Propios (N: in Natural) return Natural is
  res:Natural := 0;
  begin
    for i in 1..N-1 loop
      if N rem i = 0 then
        res := res + 1;
      end if;
    end loop;
    return res;
  end Divisores_Propios;

  ------------------
  -- Dia_anterior --
  ------------------

  procedure Dia_anterior (d,m,a:in out Natural) is
  Es_Bisiesto:Boolean:= (a rem 4 = 0 and a rem 100 /= 0)
                        or
                        (a rem 100 = 0 and a rem 400 = 0);
  begin
    if d>1 and d<=31 then
      d:=d-1;
    elsif m>1 and m<=12 then
      case m is
        when 5|7|10|12 =>
          d:=30;
        when 1|2|4|6|8|9|11 =>
          d:=31;
        when 3 =>
          if Es_Bisiesto=True then
            d:=29;
          else
            d:=28;
          end if;
        when others => null;
      end case;
      m:=m-1;
    else
      d:=31;
      m:=12;
      a:=a-1;
    end if;
  end Dia_anterior;
  --------------
  -- Estacion --
  --------------

  function Estacion (d,m: in natural) return STRING is ("SIN IMPLEMENTAR");

  --------------
  -- Estacion --
  --------------

  function Estacion (d,m: in Natural) return T_Estacion is (PRIMAVERA);

  -----------------
  -- Es_Perfecto --
  -----------------

  function Es_Perfecto (N: in Positive) return Boolean is
  suma:Integer:=0;
  begin
    for i in 1..N-1 loop
      if N rem i = 0 then
        suma:=suma+i;
      end if;
    end loop;
    return suma=N;
  end Es_Perfecto;

  -------------------------
  -- Contenido_Del_Texto --
  -------------------------
  subtype Texto is String(1..10000);

  procedure Contenido_Del_Texto (Espacios, Letras, Digitos: out Natural) is
  Frase:Texto;
  Ultimo:Natural:=1;
  
  begin
    Espacios := 0;
    Letras := 0;
    Digitos := 0;
    Ada.Text_IO.Get_Line (Frase,Ultimo);

    for i in 1..Frase'Length loop
      case Frase(i) is
        when '1'..'9' =>
          Digitos := Digitos + 1;
        when 'A'..'Z' | 'a'..'z' =>
          Letras := Letras + 1;
        when ' ' =>
          Espacios := Espacios + 1;
        when '.' =>
          exit;
        when others =>
          null;
      end case;
    end loop;
  end Contenido_Del_Texto;

  --------------------
  -- Newton_Raphson --
  --------------------

  procedure Newton_Raphson(Inicial, Error: in Float;V_Actual, Err_Actual: out Float) is null;

  --------------------
  -- Hay_Vacaciones --
  --------------------

  function Hay_Vacaciones(Vacaciones, Conservatorio, Universidad: in Positive)return Boolean is (False);

  -----------------
  -- Mayor_Menor --
  -----------------

  procedure Mayor_Menor (Numero_a_adivinar: in Natural) is null;

  -----------------------
  -- Juego_Mayor_Menor --
  -----------------------

  procedure Juego_Mayor_Menor is null;

  -----------------
  -- Mayor_Menor --
  -----------------

  procedure Mayor_Menor (Numero_a_adivinar, intentos_Maximos: in Natural) is null;

  -----------------------
  -- Juego_Mayor_Menor --
  -----------------------

  procedure Juego_Mayor_Menor (dificultad: in Positive) is null;

  ----------------------------------
  -- Juego_Mayor_Menor_dificultad --
  ----------------------------------

  procedure Juego_Mayor_Menor_Dificultad is null;

  ---------------
  -- Digito_7s --
  ---------------

  function Digito_7s(A,B,C,D,E,F,G: in Boolean) return Integer is
  res:Integer;
  begin
    if      A=true
      and   B=True
      and   C=True
      and   D=False
      and   E=True
      and   F=True
      and   G=True then
        res:=0;
    elsif   A=False
      and   B=False
      and   C=True
      and   D=False
      and   E=False
      and   F=True
      and   G=False then
        res:=1;
    elsif   A=True
      and   B=False
      and   C=True
      and   D=True
      and   E=True
      and   F=False
      and   G=True then
        res:=2;
    elsif   A=True
      and   B=False
      and   C=True
      and   D=True
      and   E=False
      and   F=True
      and   G=True then
        res:=3;
    elsif   A=False
      and   B=True
      and   C=True
      and   D=True
      and   E=False
      and   F=True
      and   G=False then
        res:=4;
    elsif   A=True
      and   B=True
      and   C=False
      and   D=True
      and   E=False
      and   F=True
      and   G=True then
        res:=5;
    elsif   A=True
      and   B=True
      and   C=False
      and   D=True
      and   E=True
      and   F=True
      and   G=True then
        res:=6;
    elsif   A=True
      and   B=False
      and   C=True
      and   D=False
      and   E=False
      and   F=True
      and   G=False then
        res:=7;
    elsif   A=True
      and   B=True
      and   C=True
      and   D=True
      and   E=True
      and   F=True
      and   G=True then
        res:=8;
    elsif   A=True
      and   B=True
      and   C=True
      and   D=True
      and   E=False
      and   F=True
      and   G=True then
        res:=9;
    else
        res:=-1;
    end if;
    return res;
  end Digito_7s;
  -----------
  -- Poker --
  -----------

  procedure Poker (P1,P2,P3,P4,P5: in T_Palo; V1,V2,V3,V4,V5: in T_Valor; J: out T_Jugada) is null;


end Laboratorio04;
