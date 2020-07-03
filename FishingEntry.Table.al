table 50100 "Fishing Entry"
{
    fields
    {
        field(1; "Entry No."; integer)
        {
            AutoIncrement = true;
        }
        field(2; Fish; Enum "Ocean Fish")
        {

        }
        field(3; Weight; Decimal)
        {

        }
    }
    keys
    {
        key(EntryNo; "Entry No.") { }
    }

    procedure GetEnumValueCaption(): Text;
    begin
        exit(Format(Fish));
    end;

    procedure GetEnumValueID(): Integer;
    begin
        exit(Fish.AsInteger());
    end;

    procedure GetEnumValueName() ValueName: Text;
    begin
        // Fish.Names.Get(GetEnumValueID(), ValueName);
        Fish.Names.Get(Fish.Ordinals.IndexOf(GetEnumValueID()), ValueName);
        exit(ValueName);
    end;

    procedure GetEnumFromText(ValueName: Text)
    var
        OceanFish: Enum "Ocean Fish";
        Index: Integer;
        Id: Integer;
    begin
        OceanFish := "Ocean Fish".FromInteger(OceanFish.Names().IndexOf(ValueName));

        // Index := OceanFish.Names().IndexOf(ValueName);
        // OceanFish.Ordinals.Get(Index, Id);
        // OceanFish := "Ocean Fish".FromInteger(Id);

        Message(Format(OceanFish));
    end;
}