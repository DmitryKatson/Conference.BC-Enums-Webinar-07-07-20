tableextension 50101 "ExtSalesLine" extends "Sales Line"
{
    trigger OnAfterInsert()
    begin
        if Rec."Document Type" = Rec."Document Type"::Order then
            Message('Document Type is %1', Rec."Document Type");

        CheckIfThereIsPurchaseDocumentWithTheSameDocumentAndNumber();
    end;

    local procedure CheckIfThereIsPurchaseDocumentWithTheSameDocumentAndNumber()
    var
        PurchLine: Record "Purchase Line";
    begin
        PurchLine.SetRange("Document Type", Rec."Document Type");
        PurchLine.SetRange("Document No.", Rec."Document No.");
        PurchLine.SetRange("Line No.", Rec."Line No.");
        PurchLine.SetRange(Type, Rec.Type);
        if PurchLine.IsEmpty then
            Message('Purchase Line does not exist')
        else
            Message('Purchase Line exist')
    end;
}