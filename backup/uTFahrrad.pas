UNIT uTFahrrad;

interface

//--------------------  ggf Uses-Liste einfügen !  --------------------
uses Dialogs;

type
  TFahrrad = class

  protected //Attribute
    FGeschwindigkeit : Double;
    FRadgroesse : Integer;
    FFarbe : String;

  public //Methoden
    constructor Create; virtual;
    procedure Beschleunige; virtual;
    procedure Bremseab; virtual;
    procedure SetFFarbe (pFFarbe: String); virtual;
    function GetFFarbe : String; virtual;
    function GetFGeschwindigkeit : Double; virtual;
    function GetFRadgroesse : Integer; virtual;

   end;

implementation

//+---------------------------------------------------------------------
//|         TFahrrad: Methodendefinition 
//+---------------------------------------------------------------------

//-------- Create (public) ---------------------------------------------
constructor TFahrrad.Create;
begin
  FGeschwindigkeit:=0;
  FRadgroesse:=26;
  FFarbe:='blau';
end;

//-------- Beschleunige (public) ---------------------------------------
procedure TFahrrad.Beschleunige;
begin
  if FGeschwindigkeit>=60
   then ShowMessage(' Schneller faehrt mein Fahrrad nicht. ')
   else FGeschwindigkeit:=FGeschwindigkeit+5;
end;

//-------- Bremseab (public) -------------------------------------------
procedure TFahrrad.Bremseab;
begin
  FGeschwindigkeit:=FGeschwindigkeit-5;
  if FGeschwindigkeit>=0
  then  ShowMessage(' Fahrrad wurde gebremst!. ');
   if FGeschwindigkeit<0;
  then ShowMessage(' Fahrrad steht bereits!. ')

end;

//-------- SetFFarbe (public) ------------------------------------------
procedure TFahrrad.SetFFarbe (pFFarbe: String);
begin
  FFarbe := pFFarbe
end;

//-------- GetFFarbe (public) ------------------------------------------
function TFahrrad.GetFFarbe : String;
begin
  result  := FFarbe
end;

//-------- GetFGeschwindigkeit (public) --------------------------------
function TFahrrad.GetFGeschwindigkeit : Double;
begin
  result  := FGeschwindigkeit
end;

//-------- GetFRadgroesse (public) -------------------------------------
function TFahrrad.GetFRadgroesse : Integer;
begin
  result  := FRadgroesse
end;

end.
