codeunit 50100 "Tuna Fishing" implements IFishing
{
    procedure GetBestLocation(var Lat: Decimal; var Lon: Decimal)
    begin
        Lat := 10.075287;
        Lon := 100.050197
    end;

    procedure GetBestSeason(): Text
    begin
        exit('Summer');
    end;
}