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
                field(Fish; Rec.OceanFish)
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

    actions
    {
        area(Creation)
        {
            action(SelectType)
            {
                Caption = 'Select Type';
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = New;
                PromotedIsBig = true;
                Image = Select;
                ApplicationArea = all;
                trigger OnAction()
                begin
                    Rec.GetFishChoiceFromConfirmationDialog();
                end;
            }
        }
    }


}
