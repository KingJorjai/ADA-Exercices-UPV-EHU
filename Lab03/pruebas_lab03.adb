with Lab03_Sol; use Lab03_Sol;
with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
procedure pruebas_lab03 is
  Horas,Minutos,Segs:Natural;
begin

  --Calcular Cuantas horas minutos y segundos son 84669 segundos (69)
  --dejar el resultado en horas,minutos y segs
  Put_Line("Calculando las horas minutos y segundos de 84669 segundos (69)...");
  Hora(Hh=>Horas,Ss=>Segs, Segundos=>84669, Mm=>Minutos);
  Hora(84669,Horas,Minutos,Segs);
  Put(Item=>Horas,width=>3); Put(" Horas"); New_Line;
  Put(Minutos,3); Put(" Mins"); New_Line;
  Put(Segs,3); Put(" Segs"); New_Line;
  
end pruebas_lab03;