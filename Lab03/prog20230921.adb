with Lab03_Sol; use Lab03_Sol;
with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
procedure Prog20230921 is
  
  horas,minutos,segundos:Natural;

begin

  --Calcular Cuantas horas minutos y segundos son 84669 segundos (69)
  --dejar el resultado en horas,minutos y segs
  --Mensaje: "Calculando las horas minutos y segundos de 84669 segundos (69)...";
  Put_Line("Calculando las horas minutos y segundos de 84669 segundos (69)...")
  Hora(Hh=>horas, Ss=>segundos, Segundos=>84669, Mm=>minutos); --Nominal
  Hora(84669,horas,minutos,segundos); --Posicional
  --Mensaje: "XXX Horas YYY Mins ZZZ Segs"
  Put(Item=>Horas,width=>3); Put(" Horas"); New_Line;
  Put(Minutos,3); Put(" Minutos"); New_Line;
  Put(Segundos,3); Put(" Segundos"); New_Line;
  --Detenerse 2 segs
  delay 2.0;

  --Calcular cuanto son 5h 20' y 50" más 1h 55' 13" (77)
  --dejar el resultado en h,m y s
  --Mensaje: "Calculando 5h 20' 33'' + 8h 50' 40 (77)''...");
  Put_Line("Calculando 5h 20' 33'' + 8h 50' 40''...");
  Sumar(Hh1=>5,Hh2=>8,Mm2=>50,Ss2=>40,Ss1=>22,Mm1=>20,Hh=>horas,Mm=>minutos,Ss=>segundos);--Nominal
  Sumar(5,20,33, 8,50,40, horas,minutos,segundos); --Posicional
  --Mensaje: "XXX Horas YYY Mins ZZZ Segs"
  --Detenerse 2 segs

  --Calcular el area del circulo de radio 10 (101)
  --dejar en resultado en mi_area
  --Mensaje: "Calculando el area del circulo de radio 10 (101)...");
  Area_Circulo(Area=>          ,R=>          );--Nominal
  area_circulo(          ,          ); --Posicional
  --Mensaje: "Area = XXX"
  --Detenerse 2 segs

  --Calcular el volumen cilindro de altura 20 y de la semiesfera de radio 10 (113)
  --dejar el resultado en el_volumen
  --Mensaje: "Calculando el volumen cilindro de altura 20 y de la semiesfera de radio 10 (113)...");
  Volumen_Cilindro_Semiesfera(volumen=>          , h=>          , r=>          );--Nominal
  Volumen_Cilindro_Semiesfera(          ,          ,          ); --Posicional
  --Mensaje: "Volumen = XXX"
  --Detenerse 2 segs

  --Que dia es hoy (132)
  --dejar el resultado en dia,mes,ano
  --Mensaje: "Calculando que dia es hoy (132)...");
  Hoy(Aa=>          ,Mm=>          , Dd=>          );--Nominal
  Hoy(          ,          ,          ); --Posicional
  --Mensaje: "Hoy es: XX-XX-XXXX"
  --Detenerse 2 segs

  --Decodificar el d�a 08_01_2024 (159)
  --dejar el resultado en dia,mes,ano
  --Mensaje: "Calculando decodificar el d�a de hoy 08_01_2024...");
  Decodificar_Fecha(D=>          ,A=>          ,M=>          ,F=>          );--Nominal
  decodificar_Fecha(          ,          ,          ,          ); --Posicional
  --Mensaje: "El dia es: XX-XX-XXXX"
  --Detenerse 2 segs

  --Cuanto es 6+1?  y 9+9? (147)
  --Dejar el resultado en Total y Hay_LLevada
  --Mensaje: "Calculando Cuanto es 6+1? y 9+9? (147)...");
  Suma(Resultado=>          , Llevada=>          ,D1=>          ,D2=>          );--Nominal
  Suma(          ,          ,          ,          ); --Posicional
  --Mensaje: "6 + 1 = XXX. Hay Llevada = YYY"
  --Detenerse 2 segs
  --Mensaje: "Calculando Cuanto es 9+9? (147)...");
  Suma(Resultado=>          , Llevada=>          ,D1=>          ,D2=>          );--Nominal
  Suma(          ,          ,          ,          ); --Posicional
  --Mensaje: "9 + 9 = XXX. Hay Llevada = YYY"
  --Detenerse 2 segs

  
  --Definir los porcentajes que suponen 100 100 100 (17)
  --dejar el resultado Por1, por2 y por3
  --Mensaje: "Calculando los porcentajes que suponen 100 100 100..."
  --Darle valores a las variables para que sirvan como datos
  Porcentaje(A=>          ,C=>          ,B=>          );--Nominal
  Porcentaje(          ,          ,          );--Posicional
  --Mensaje: "Los porcentajes de 100, 100 y 100 son: XXX, YYY y ZZZ"
  --Detenerse 2 segs
end Prog20230921;