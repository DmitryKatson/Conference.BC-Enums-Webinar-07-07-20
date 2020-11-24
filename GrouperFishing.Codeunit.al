codeunit 50101 "Grouper Fishing" implements IFishing
{
    procedure GetBestLocation(var Lat: Decimal; var Lon: Decimal)
    begin
        Lat := 9.860153;
        Lon := 99.665506
    end;

    procedure GetBestSeason(): Text
    begin
        exit('Spring');
    end;
}