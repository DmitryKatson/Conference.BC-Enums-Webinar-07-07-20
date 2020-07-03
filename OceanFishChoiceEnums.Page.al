page 50100 "Ocean Fish Choice Enums"
{
    PageType = ConfirmationDialog;
    InstructionalText = 'Choose the fish you catched';
    layout
    {
        area(Content)
        {
            field(OceanFish; OceanFish)
            {
                ApplicationArea = All;
            }
        }
    }

    var
        OceanFish: Enum "Ocean Fish";

    procedure ReturnEnteredChoice(): Enum "Ocean Fish"
    begin
        exit(OceanFish);
    end;
}