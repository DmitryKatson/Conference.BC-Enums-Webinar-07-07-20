interface "IFishing"
{
    procedure GetBestLocation(var Lat: Decimal; var Lon: Decimal)

    procedure GetBestSeason(): Text
}