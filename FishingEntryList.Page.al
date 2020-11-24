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
                }
                field(Weight; Rec.Weight)
                {
                    ApplicationArea = All;
                }

                field(EnumIndexID; Rec.GetEnumIndexID())
                {
                    ApplicationArea = All;
                }

                field(EnumValueID; Rec.GetEnumValueID())
                {
                    ApplicationArea = All;
                }
                field(EnumValueCaption; Rec.GetEnumValueCaption())
                {
                    ApplicationArea = All;
                }
                field(EnumValueName; Rec.GetEnumValueName())
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(GetEnumFromText)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    // GetEnumFromText(GetEnumValueCaption());
                    Rec.GetEnumFromText(Rec.GetEnumValueName());
                end;
            }
        }
    }
}
