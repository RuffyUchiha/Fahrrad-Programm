UNIT uTCityBike;

interface

//--------------------  ggf Uses-Liste anpassen !  --------------------
uses uTFahrrad, Dialogs;

type
  TCityBike = class(TFahrrad)

  protected //Attribute
    FLast : Double;
    Fmaximallast : Double;

  public //Methoden
    constructor Create; override;
    procedure Belade (pFLast: Double); virtual;
    procedure Entlade (pFLast: Double); virtual;
    function GetFLast : Double; virtual;
    function GetFmaximallast : Double; virtual;

   end;

implementation

//+---------------------------------------------------------------------
//|         TCityBike: Methodendefinition 
//+---------------------------------------------------------------------

//-------- Create (public) ---------------------------------------------
constructor TCityBike.Create;
begin
  Inherited Create;
  FFarbe:='gelb';
  FLast:=0;
  FMaximallast:=30;
end;

//-------- Belade (public) ---------------------------------------------
procedure TCityBike.Belade (pFLast: Double);
begin
  FLast:=FLast+pFLast;
  if FLast>FMaximallast
  then
    begin
      FLast:=FMaximallast;
      ShowMessage('Maximallast ist erreicht.');
    end;
end;

//-------- Entlade (public) --------------------------------------------
procedure TCityBike.Entlade (pFLast: Double);
begin
FLast:=FLast-pFLast;
if FLast >=0
then
begin
FLast:=0;
ShowMessage('Der Gepäclträger ist Leer');
end;

end;

//-------- GetFLast (public) -------------------------------------------
function TCityBike.GetFLast : Double;
begin
  result  := FLast
end;

//-------- GetFmaximallast (public) ------------------------------------
function TCityBike.GetFmaximallast : Double;
begin
  result  := Fmaximallast
end;

end.
