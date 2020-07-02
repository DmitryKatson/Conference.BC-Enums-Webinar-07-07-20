page 50101 "Ocean Fish Choice Options"
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
        OceanFish: Option "Atlantic bluefin tuna",Grouper,"Blue Marlin";
}