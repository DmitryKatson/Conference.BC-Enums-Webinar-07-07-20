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
                }
                field(Weight; Weight)
                {
                    ApplicationArea = All;
                }

                field(EnumValueID; GetEnumValueID)
                {
                    ApplicationArea = All;
                }
                field(EnumValueCaption; GetEnumValueCaption)
                {
                    ApplicationArea = All;
                }
                field(EnumValueName; GetEnumValueName)
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
                    GetEnumFromText(GetEnumValueName());
                end;
            }
        }
    }
}
