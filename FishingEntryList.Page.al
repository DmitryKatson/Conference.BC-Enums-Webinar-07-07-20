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
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Fish; Rec.Fish)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Weight; Rec.Weight)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        if not BelowxRec then
            exit;
        Rec.GetFishChoiceFromConfirmationDialog();
    end;


}
