page 50100 "Ocean Fish Choice Enums"
{
    PageType = ConfirmationDialog;
    InstructionalText = 'Choose the fish you want to catch';
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
}