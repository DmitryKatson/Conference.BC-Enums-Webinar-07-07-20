page 50100 "Ocean Fish Choice Enums"
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

    procedure ReturnEnteredChoice(): Integer
    begin
        exit(LakeFish.AsInteger());
    end;
}