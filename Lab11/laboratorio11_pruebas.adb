WITH Ada.Text_IO, Ada.Integer_Text_IO, Laboratorio11, lab11_escenarios;
USE Ada.Text_IO, Ada.Integer_Text_IO, Laboratorio11, lab11_escenarios;

PROCEDURE laboratorio11_pruebas IS
   L2342: constant T_Lista_Dinamica := --(2 3 4 2)
      new T_Nodo_Enteros'(2,
      new T_Nodo_Enteros'(3,
      new T_Nodo_Enteros'(4,
      new T_Nodo_Enteros'(2, null))));

   L_copia: T_Lista_Dinamica := null;
   L_copia_2: T_Lista_Dinamica := null;

--   cuantos: Integer;


   -- Programa auxiliar para copiar objetos de tipo T_Lista_Dinamica
   FUNCTION copiar(L: T_Lista_Dinamica) return T_Lista_Dinamica IS
   BEGIN
      if L = null then
         return null;
      else
         return New T_Nodo_Enteros'(L.info, copiar(L.all.sig));
      end if;
   END copiar;

   -- Programa auxiliar para mostrar objetos T_Lista_Dinamica por consola
   procedure recorrer(L: T_Lista_Dinamica) IS
   BEGIN
      if L /= null then
         put(L.info);
         recorrer(L.sig);
      end if;
   END recorrer;

BEGIN
   ----------
   -- Esta --
   ----------
   Put_Line("*** Esta ***");
   new_line;

   Put_Line("Caso 1: numero por el medio.");
   Put_Line("Esta el numero 3 en la lista (1 2 3 4)? TRUE");
   Put_Line(esta(L1234, 3)'img);

   new_line(2);

   Put_Line("Caso 2: numero al principio.");
   Put_Line("Esta el numero 1 en la lista (1 2 3 4)? TRUE");
   Put_Line(esta(L1234, 1)'img);

   new_line(2);

   Put_Line("Caso 3: numero al final.");
   Put_Line("Esta el numero 4 en la lista (1 2 3 4)? TRUE");
   Put_Line(esta(L1234, 3)'img);

   new_line(2);

   Put_Line("Caso 4: numero no existe en la lista.");
   Put_Line("Esta el numero 27 en la lista (1 2 3 4)? FALSE");
   Put_Line(esta(L1234, 27)'img);

   new_line(2);

   Put_Line("Caso 5: lista vacia.");
   Put_Line("Esta el numero 8 en la lista ()? FALSE");
   Put_Line(esta(L0, 8)'img);

   new_line(2);

   Put_Line("Caso 6: lista con un unico nodo.");
   Put_Line("Esta el numero 1 en la lista (1)? TRUE");
   Put_Line(esta(L1, 1)'img);


   --------------
   -- Posicion --
   --------------
   new_line(3);
   Put_Line("*** Posicion ***");
   new_line;

   Put_Line("Caso 1: numero por el medio.");
   Put_Line("Posicion del numero 2 en el vector (1 2 3 4): 2");
   Put_Line(posicion(L1234, 2)'img);

   new_line(2);

   Put_Line("Caso 2: numero al principio.");
   Put_Line("Posicion del numero 1 en la lista (1 2 3 4): 1");
   Put_Line(posicion(L1234, 1)'img);

   new_line(2);

   Put_Line("Caso 3: numero al final.");
   Put_Line("Posicion del numero 4 en la lista (1 2 3 4): 4");
   Put_Line(posicion(L1234, 4)'img);

   new_line(2);

   Put_Line("Caso 4: numero no existe en la lista.");
   Put_Line("Posicion del numero 27 en la lista (1 2 3 4)? Integer'Last");
   Put_Line(posicion(L1234, 27)'img);

   new_line(2);

   Put_Line("Caso 5: lista vacia.");
   Put_Line("Posicion del numero 8 en la lista (): Integer'Last");
   Put_Line(posicion(L0, 8)'img);

   new_line(2);

   Put_Line("Caso 6: lista con un unico nodo.");
   Put_Line("Posicion del numero 1 en la lista (1): 1");
   Put_Line(posicion(L1, 1)'img);

   new_line(2);

   Put_Line("Caso 6: lista con el entero repetido.");
   Put_Line("Posicion del numero 2 en la lista (2 3 4 2): 1");
   Put_Line(posicion(L2342, 2)'img);


   -----------
   -- Media --
   -----------
   new_line(3);
   Put_Line("*** Media ***");
   new_line;

   Put_Line("Caso 1: Media un numero real");
   Put_Line("Media del vector (1 2 3 4): 2.50");
   Put_Line(Media(L1234)'img);

   new_line(2);

   Put_Line("Caso 2:");
   Put_Line("Media del vector (1 2 3): 2.00");
   Put_Line(Media(L123)'img);

   new_line(2);

   Put_Line("Caso 3: lista vacia.");
   Put_Line("Media de (): Float'Last");
   Put_Line(Media(L0)'img);

   new_line(2);

   Put_Line("Caso 4: lista con un unico nodo.");
   Put_Line("Media de (1): 1.00");
   Put_Line(Media(L1)'img);

   new_line(2);

   Put_Line("Caso 6: lista con el entero repetido.");
   Put_Line("Posicion del numero 2 en la lista (2 3 4 2): 2.75");
   Put_Line(Media(L2342)'img);

   -------------
   -- Prepend --
   -------------
   new_line(3);
   Put_Line("*** Insertar_Delante ***");
   new_line;

   L_copia := copiar(L1234);
   Put_Line("Caso 1: una lista estandar");
   Put_Line("Anteponer el numero 5 a la lista (1 2 3 4)");
   Prepend(L_copia, 5);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1);
   Put_Line("Caso 2: una lista con un unico nodo");
   Put_Line("Anteponer el numero 9 a la lista (1)");
   Prepend(L_copia, 9);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L0);
   Put_Line("Caso 3: una lista vacia");
   Put_Line("Anteponer el numero 7 a la lista ()");
   Prepend(L_copia, 7);
   recorrer(L_copia);


   ------------
   -- Append --
   ------------
   new_line(3);
   Put_Line("*** Insertar_Detras ***");
   new_line;

   L_copia := copiar(L1234);
   Put_Line("Caso 1: una lista estandar");
   Put_Line("Posponer el numero 5 a la lista (1 2 3 4)");
   Append(L_copia, 5);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1);
   Put_Line("Caso 2: una lista con un unico nodo");
   Put_Line("Posponer el numero 9 a la lista (1)");
   Append(L_copia, 9);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L0);
   Put_Line("Caso 3: una lista vacia");
   Put_Line("Posponer el numero 7 a la lista ()");
   Append(L_copia, 7);
   recorrer(L_copia);


   ------------------------------
   -- Insertar_Elemento_En_Pos --
   ------------------------------
   new_line(3);
   Put_Line("*** Insertar_Elemento_En_Pos ***");
   new_line;

   L_copia := copiar(L1234);
   Put_Line("Caso 1: insertar en el medio");
   Put_Line("Insertar el numero 20 en la posicion 3 de la lista (1 2 3 4)");
   insertar_elemento_en_pos(L_copia, 20, 3);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1234);
   Put_Line("Caso 2: insertar en el medio");
   Put_Line("Insertar el numero 30 en la posicion 3 de la lista (1 2 3 4)");
   insertar_elemento_en_pos(L_copia, 30, 3);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1234);
   Put_Line("Caso 3: insertar al principio (primera posicion)");
   Put_Line("Insertar el numero 0 en la posicion 1 de la lista (1 2 3 4)");
   insertar_elemento_en_pos(L_copia, 0, 1);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1234);
   Put_Line("Caso 4: insertar al principio (menor que primera posicion)");
   Put_Line("Insertar el numero 0 en la posicion -5000 de la lista (1 2 3 4)");
   insertar_elemento_en_pos(L_copia, 0, -5000);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1234);
   Put_Line("Caso 5: insertar al final (posicion final)");
   Put_Line("Insertar el numero 5 en la posicion 5 de la lista (1 2 3 4)");
   insertar_elemento_en_pos(L_copia, 5, 5);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1234);

   Put_Line("Caso 6: insertar al final (posicion mayor que final)");
   Put_Line("Insertar el numero 5 en la posicion 5000 de la lista (1 2 3 4)");
   insertar_elemento_en_pos(L_copia, 5, 5000);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L0);
   Put_Line("Caso 7: insertar en lista vacia");
   Put_Line("Insertar el numero 0 en la posicion 1 de la lista ()");
   insertar_elemento_en_pos(L_copia, 0, 1);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L0);
   Put_Line("Caso 8: insertar en lista vacia 2");
   Put_Line("Insertar el numero 2 en la posicion 10 de la lista ()");
   insertar_elemento_en_pos(L_copia, 2, 10);
   recorrer(L_copia);

   --------------------------------
   -- Insertar en lista ordenada  (NO FINALIZADAS)--
   --------------------------------
   new_line(3);
   Put_Line("*** Insertar (PENDIENTE DE REVISAR) ***");
   new_line;

   L_copia := copiar(L124);
   Put_Line("Caso 1: insertar en el medio");
   Put_Line("Insertar el numero 3 ordenadamente en la lista (1 2 4)");
   insertar(L_copia, 3);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1234);
   Put_Line("Caso 2: insertar al principio (primera posicion)");
   Put_Line("Insertar el numero 0 ordenadamente en la lista (1 2 3 4)");
   insertar(L_copia, 0);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1234);
   Put_Line("Caso 3: insertar al final (posicion final)");
   Put_Line("Insertar el numero 5 ordenadamente en la lista (1 2 3 4)");
   insertar(L_copia, 5);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L0);
   Put_Line("Caso 4: insertar en lista vacia");
   Put_Line("Insertar el numero 0 ordenadamente en la lista ()");
   insertar(L_copia, 0);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1);
   Put_Line("Caso 4: insertar en lista de  un elemento");
   Put_Line("Insertar el numero 0 ordenadamente en la lista (1)");
   insertar(L_copia,0);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1);
   Put_Line("Caso 5: insertar en lista de  un elemento");
   Put_Line("Insertar el numero 2 ordenadamente en la lista (1)");
   insertar(L_copia,2);
   recorrer(L_copia);

   new_line(3);


   ------------
   -- Borrar --
   ------------
   new_line(3);
   Put_Line("*** Borrar ***");
   new_line;

   L_copia := copiar(L1234);
   Put_Line("Caso 1: borrar un elemento del medio");
   Put_Line("Eliminar el numero 3 de la lista (1 2 3 4). Resultado: (1 2 4)");
   borrar(L_copia, 3);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1234);
   Put_Line("Caso 2: borrar primer elemento");
   Put_Line("Eliminar el numero 1 de la lista (1 2 3 4). Resultado: (2 3 4)");
   borrar(L_copia, 1);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1234);
   Put_Line("Caso 3: borrar ultimo elemento");
   Put_Line("Eliminar el numero 4 de la lista (1 2 3 4). Resultado: (1 2 3)");
   borrar(L_copia, 4);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1234);
   Put_Line("Caso 4: el numero no existe en la lista");
   Put_Line("Eliminar el numero 5 de la lista (1 2 3 4). Resultado: (1 2 3 4)");
   borrar(L_copia, 5);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L0);
   Put_Line("Caso 5: lista vacia");
   Put_Line("Eliminar el numero 1 de la lista (). Resultado: ()");
   borrar(L_copia, 1);
   recorrer(L_copia);

   ----------------
   -- Concatenar --
   ----------------
   new_line(3);
   Put_Line("*** Concatenar ***");
   new_line;

   L_copia := copiar(L1234);
   L_copia_2 := copiar(L1234);
   Put_Line("Caso 1: dos listas con al menos un nodo en cada una");
   Put_line("Concatenar las listas (1 2 3 4) y (1 2 3 4). Resultado: (1 2 3 4 1 2 3 4)");
   concatenar(L_copia, L_copia_2);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L0);
   L_copia_2 := copiar(L1234);
   Put_Line("Caso 2: primera lista vacia");
   Put_Line("Concatenar las listas () y (1 2 3 4). Resultado: (1 2 3 4)");
   concatenar(L_copia, L_copia_2);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L1234);
   L_copia_2 := copiar(L0);
   Put_Line("Caso 3: segunda lista vacia");
   Put_Line("Concatenar las listas (1 2 3 4) y (). Resultado: (1 2 3 4)");
   concatenar(L_copia, L_copia_2);
   recorrer(L_copia);

   new_line(3);

   L_copia := copiar(L0);
   L_copia_2 := copiar(L0);
   Put_Line("Caso 4: ambas listas vacias");
   Put_Line("Concatenar las listas (0) y (). Resultado: ()");
   concatenar(L_copia, L_copia_2);
   recorrer(L_copia);


   --------------
   -- Invertir --
   --------------
   new_line(3);
   Put_Line("*** Invertir ***");
   new_line;

   L_copia := copiar(L1234);
   Put_Line("Caso 1: lista con al menos un nodo");
   Put_Line("Invertir la lista (1 2 3 4). Resultado: (4 3 2 1)");
   invertir(L_copia);
   recorrer(L_copia);

   new_line(2);

   L_copia := copiar(L1);
   Put_Line("Caso 2: lista con un solo nodo");
   Put_Line("Invertir la lista (1). Resultado: (1)");
   invertir(L_copia);
   recorrer(L_copia);

   new_line(2);

   L_copia := copiar(L0);
   Put_Line("Caso 3: lista sin nodos");
   Put_Line("Invertir la lista (). Resultado: ()");
   invertir(L_copia);
   recorrer(L_copia);

END laboratorio11_pruebas;