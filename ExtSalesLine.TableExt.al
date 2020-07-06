tableextension 50101 "ExtSalesLine" extends "Sales Line"
{
    trigger OnAfterInsert()
    begin
        if Rec."Document Type" = Rec."Document Type"::Order then
            Message('Document Type is %1', Rec."Document Type");
    end;
}