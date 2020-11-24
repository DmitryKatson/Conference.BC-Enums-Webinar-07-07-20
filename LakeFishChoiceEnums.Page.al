page 50103 "Lake Fish Choice Enums"
{
    PageType = ConfirmationDialog;
    InstructionalText = 'Choose the fish you catched';
    layout
    {
        area(Content)
        {
            field(LakeFish; LakeFish)
            {
                ApplicationArea = All;
            }
        }
    }

    var
        LakeFish: Enum "Lake Fish";

    procedure ReturnEnteredChoice(): Enum "Lake Fish"
    begin
        exit(LakeFish);
    end;
}