codeunit 50102 "Blue Marlin Fishing" implements IFishing
{
    procedure GetBestLocation(var Lat: Decimal; var Lon: Decimal)
    begin
        Lat := 9.544759;
        Lon := 100.137285
    end;

    procedure GetBestSeason(): Text
    begin
        exit('Winter');
    end;
}