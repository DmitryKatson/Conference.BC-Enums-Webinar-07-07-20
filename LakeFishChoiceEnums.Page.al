page 50100 "Ocean Fish Choice Enums"
{
    PageType = ConfirmationDialog;
    InstructionalText = 'Choose the fish you catched';
    layout
    {
        area(Content)
        {
            field(OceanFish; Fish)
            {
                ApplicationArea = All;
            }
        }
    }

    var
        Fish: Enum "Lake Fish";

    procedure ReturnEnteredChoice(): Integer
    begin
        exit(Fish);
    end;
}