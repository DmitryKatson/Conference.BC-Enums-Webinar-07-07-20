page 50101 "Fishing Entry List"
{

    ApplicationArea = All;
    Caption = 'Fishing Entry List';
    PageType = List;
    SourceTable = "Fishing Entry";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Fish; Fish)
                {
                    ApplicationArea = All;
                    ValuesAllowed = Tuna, "Blue Marlin";
                }
                field(Weight; Weight)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
