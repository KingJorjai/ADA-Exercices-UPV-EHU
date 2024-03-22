package Laboratorio04 is

	function f (X,Pos: in Natural) return Natural;
	--post: resultado = x si y solo si (sii) pos es par
	--      resultado = 2*x sii pos es impar y x < 5
	--      resultado = 2x-9 sii pos es impar y x >= 5

    function Nota_Final (Nota1, Nota2, Nota3: in float; Metodo: in Positive) return Float;
    -- post: Resultado es la notafinal seg�n el m�todo de calculo indicado

	procedure a_polar(a,b: in float; modulo, argumento: out Float);
	-- post: argumento = angulo de (a,b) en coordenadas polares
	--       modulo = modulo de (a,b) en coordenadas polares

	procedure resultado_ONCE (premiado, a_comprobar: in Natural; premio: out Natural);
	-- pre: premiado, a_comprobar < 10000
	-- post: premio = premio correspondiente a_comprobar

	procedure Multiplos_3(N1,N2: in Natural; cuenta, suma: out Natural);
	--post: cuenta = numero de múltiplos de 3 entre N1 y N2
	--      suma = suma de los múltiplos de 3 entre N1 y N2

	function Factorial (N: in Positive) return Positive;
	--post: resultado = N!

	procedure decimal_binario (Decimal: in Natural; Binario: out Natural);
	--post: Binario = Decimal en base 2 (como si fueran numeros directamente)

	------------------------------------------------------------------

    procedure Pregunta_Test(Pregunta,O1,O2,O3,O4: in String; Respuesta: out Positive);
    --post: Respuesta es la respuesta aportada a la pregunta Pregunta con sus cuatro opciones Oi

	procedure segundo_anterior(h, m, s: in out Natural);
	-- pre: h<24; m<60; s<60
	-- post: h:m:s tiene la hora anterior con un segundo más

	procedure solucionar(a,b,c: in float; num_sols: out Natural; sol1, sol2: out Float);
	--post: num_sols = numero de soluciones de la ecuación
	--      sol1 = solucion1 de la ecuacion si num_sols >= 1, si no, nada
	--      sol2 = solucion de la ecuación si num_sols = 2, si no, nada

	procedure final_tarea(h,m,s: in Natural; duracion: in Positive; siguiente_jornada: out Boolean; hf,mf,sf: out Natural);
	--pre: h<24; m<60; s<60; duración <= 14400
	--post: hf:mf:sf = h:m:s + duración
	--      siguiente_jornada = true si y solo si se cambia de jornada

	procedure Secuencia_Collatz(num: in Positive; cuenta, suma: out Natural);
	--Post: Cuenta = numero de elementos en la secuencia de Collatz que comienza por num
	--        Suma = suma de los elementos de la secuencia de Collatz que comienza por num
	--Salida estándar: los numeros de la secuencia de Collatz que comienza por num

	function Fibonacci(N:in Natural) return Natural;
	--Post: Resultado = Fib(N)

	function Divisores_propios(N: in Natural) return Natural;
	--Post: Resultado = numero de divisores propios de N

	-----------------------------------------------------------------
	Procedure Dia_anterior(d,m,a:in out Natural);
	--pre: d<=31; m<=12; a<=9999
	--post: d-m-a contiene el día anterior a d-m-a al comienzo

	function Estacion(d,m: in natural) return STRING;
	--post: resultado = estación en la que cae la fecha d-m-a

	type T_Estacion is (PRIMAVERA, VERANO, OTONNO, INVIERNO);
	function Estacion(d,m: in Natural) return T_Estacion;
	--post: resultado = estación en la que cae la fecha d-m-a

   function Es_Perfecto(N: in Positive) return Boolean;
   --post: resultado = true si y solo si N es perfecto

   procedure Contenido_Del_Texto (Espacios, Letras, Digitos: out Natural);
   -- Entrada est�ndar: Un texto terminado en '.'
   --Post: Espacios = numero de espacios en el texto
   --      Letras = numero de letras en el texto
   --      digitos = numero de digitos en el texto

   procedure Newton_Raphson (Inicial, Error: in Float;
      V_Actual, Err_Actual: out Float);
   -- Pre: la funci�n converge para el valor inicial.
   -- Post: V_actual es el valor aproximado con error < que Error
   --       Err_actual: es el error calculado de la nueva aproximacion

   function Hay_Vacaciones(Vacaciones, Conservatorio, Universidad: in Positive) return Boolean;
   -- Post: True si las vacaciones dan para que Maria se vaya de vacaciones con TODAS sus amigas y False si no

   procedure Mayor_Menor(Numero_a_adivinar: in Natural) ;

   procedure Juego_Mayor_Menor ;

   procedure Mayor_Menor(Numero_a_adivinar, intentos_Maximos: in Natural);

   procedure Juego_Mayor_Menor (dificultad: in Positive);

   procedure Juego_Mayor_Menor_Dificultad ;

   function Digito_7s(A,B,C,D,E,F,G: in Boolean) return Integer;
   --post: Resultado = digito que representan los segmentos a-g o -1 si no es un d�gito
   type T_Palo is (Picas, Treboles, Corazones, Diamantes);
   type T_Valor is (Dos,Tres,Cuatro,Cinco,Seis,Siete,Ocho,
     Nueve,Diez,J,Q,K,A);
   type T_Jugada is (Escalera_Real, Escalera_Color, Poker, Full,
     Color, Escalera, trio, Doble_pareja, pareja, Nada);
   procedure Poker (P1,P2,P3,P4,P5: in T_Palo;
     V1,V2,V3,V4,V5: in T_Valor; J: out T_Jugada);
     --pre:Pi es el palo de la carta i; Vi es el valor de la carta i (i=1..5)
     --pre:Las cartas est�n ordenadas de mayor valor a menor valor (A,K,Q,J,Diez...Dos)
     --post: J tiene la mejor jugada de las cartas Pi-Vi (i=1..5)

end Laboratorio04;

