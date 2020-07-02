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

    procedure GetFishChoiceFromConfirmationDialog()
    var
        FishCoice: Page "Ocean Fish Choice Enums";
    begin
        FishCoice.LookupMode(true);
        if FishCoice.RunModal() = Action::LookupOK then
            Fish := FishCoice.ReturnEnteredChoice();
    end;

}