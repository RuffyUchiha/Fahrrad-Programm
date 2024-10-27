unit umain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  uTFahrrad, uTCityBike;


type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Erstelle: TButton;
    Ermittle: TButton;
    Panel1: TPanel;
    Streiche: TButton;
    aGeschwindigkeit: TButton;
    aRadgroesse: TButton;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ErstelleClick(Sender: TObject);
    procedure ErmittleClick(Sender: TObject);
    procedure StreicheClick(Sender: TObject);
    procedure aGeschwindigkeitClick(Sender: TObject);
    procedure aRadgroesseClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Fahrrad: TFahrrad;
  CityBike: TCityBike;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ErstelleClick(Sender: TObject);
begin
   if Fahrrad<>NIL
       then ShowMessage('Ich habe schon ein Fahrrad!')
       else
         begin
  Fahrrad:=TFahrrad.Create;
  ShowMessage(' Fahrrad wurde erstellt! ');

end;


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Fahrrad.Beschleunige;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  CityBike.Beschleunige;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  if CityBike=NIL
  then ShowMessage(' CityBike wurde bereits verschrottet! ')
  else
    begin
      CityBike.Free;
      CityBike:=NIL;
  ShowMessage(' CityBike wurde  verschrottet! ');

  end;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  if CityBike =NIL
  then ShowMessage ('Ich habe noch kein CityBike!')
  else
    begin
      CityBike.Belade(6);
    end;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  if CityBike =NIL
  then ShowMessage ('Ich habe noch kein CityBike!')
  else
    begin
      CityBike.Entlade(6);

    end;
end;

procedure TForm1.Button14Click(Sender: TObject);
var Last:Double;
begin
if CityBike =Nil
then ShowMessage('Ich habe noch kein CityBike!')
else
  begin
    Last:=CityBike.GetFLast;
    Showmessage('Die Last entspricht'+FloatToStr(Last)+'Kg!');
  end;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Fahrrad=NIL
      then ShowMessage('Fahrrad wurde gebremst')

      else
        begin
          Fahrrad.Bremseab;
        end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if Fahrrad=NIL
  then ShowMessage(' Fahrrad wurde bereits verschrottet! ')
  else
    begin
      Fahrrad.Free;
      Fahrrad:=NIL;
  ShowMessage(' Fahrrad wurde  verschrottet! ');

  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin

   if CityBike<>NIL
       then ShowMessage('Ich habe schon ein CityBike!')
       else
         begin
  CityBike:=TCityBike.Create;
  ShowMessage(' CityBike wurde erstellt! ');

 end;
end;

procedure TForm1.Button5Click(Sender: TObject);
  var Farbe: String;
begin
   if CityBike=NIL
    then ShowMessage('Ich habe noch kein CityBike!')
     else
       begin
Farbe:=CityBike.GetFFarbe;
ShowMessage(' Farbe ist '+Farbe);
end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
    if CityBike=NIL
     then ShowMessage(' Ich habe noch kein CityBike! ')
      else
        begin
  CityBike.SetFFarbe(' schwarz ');
  ShowMessage(' Ihr CityBike wurde gestrichen! ');

        end;
end;

procedure TForm1.Button7Click(Sender: TObject);
  var Geschwindigkeit: Double;
begin
   if CityBike=NIL
     then ShowMessage(' Ich habe noch kein CityBike! ')
      else
        begin
  Geschwindigkeit:= CityBike.GetFGeschwindigkeit;
  ShowMessage(' Die Geschwindigkeit '+FloatToStr(Geschwindigkeit)+' km/h ');

  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
  var Radgroesse: Integer;
begin
   if CityBike=NIL
     then ShowMessage('Ich habe noch kein CityBike!')
      else
        begin
Radgroesse:=CityBike.GetFRadgroesse;
ShowMessage(' Radgröße ist ' +IntToStr(Radgroesse)+' Zoll ');

 end;
end;

procedure TForm1.Button9Click(Sender: TObject);
  begin
  if CityBike=NIL
      then ShowMessage('CityBike wurde gebremst')

      else
        begin
          CityBike.Bremseab;
        end;
end;

procedure TForm1.ErmittleClick(Sender: TObject);
  var Farbe: String;
begin
  if Fahrrad=NIL
    then ShowMessage('Ich habe noch kein Fahrrad!')
     else
      begin
Farbe:=Fahrrad.GetFFarbe;
ShowMessage(' Farbe ist '+Farbe);

              end;

end;

procedure TForm1.StreicheClick(Sender: TObject);
begin
   if Fahrrad=NIL
     then ShowMessage(' Ich habe noch kein Fahrrad! ')
      else
        begin
  Fahrrad.SetFFarbe(' schwarz ');
  ShowMessage(' Ihr Fahrrad wurde gestrichen! ');

end;
end;

procedure TForm1.aGeschwindigkeitClick(Sender: TObject);
var Geschwindigkeit: Double;
begin
   if Fahrrad=NIL
     then ShowMessage(' Ich habe noch kein Fahrrad! ')
      else
        begin
  Geschwindigkeit:= Fahrrad.GetFGeschwindigkeit;
  ShowMessage(' Die Geschwindigkeit '+FloatToStr(Geschwindigkeit)+' km/h ');

end;
end;

procedure TForm1.aRadgroesseClick(Sender: TObject);
var Radgroesse: Integer;
begin
   if Fahrrad=NIL
     then ShowMessage('Ich habe noch kein Fahrrad!')
      else
        begin
Radgroesse:=Fahrrad.GetFRadgroesse;
ShowMessage(' Radgröße ist ' +IntToStr(Radgroesse)+' Zoll ');

end;
end;



end.

