table 50100 "Fishing Entry"
{
    fields
    {
        field(1; "Entry No."; integer)
        {
            AutoIncrement = true;
        }
        field(2; OceanFish; Enum "Ocean Fish")
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


    procedure GetFishChoiceFromConfirmationDialog()
    var
        LakeFishChoice: Page "Lake Fish Choice Enums";
    begin
        if LakeFishChoice.RunModal() = Action::Yes then
            OceanFish := "Ocean Fish".FromInteger(LakeFishChoice.ReturnEnteredChoice());
    end;

}