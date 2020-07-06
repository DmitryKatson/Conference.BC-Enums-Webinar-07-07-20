tableextension 50101 "ExtSalesLine" extends "Sales Line"
{
    trigger OnAfterInsert()
    begin
        if Rec."Document Type" = Rec."Document Type"::Order then
            Message('Document Type is %1', Rec."Document Type");

        CreatePurchaseLineFromSalesLineIfNotExist();
        CheckIfThereIsPurchaseDocumentWithTheSameDocumentAndNumber();
    end;

    local procedure CreatePurchaseLineFromSalesLineIfNotExist()
    begin
        if CheckIfThereIsPurchaseDocumentWithTheSameDocumentAndNumber() then
            exit;
        CreatePurchaseLineFromSalesLine();
    end;

    local procedure CheckIfThereIsPurchaseDocumentWithTheSameDocumentAndNumber(): Boolean
    var
        PurchLine: Record "Purchase Line";
    begin
        PurchLine.SetRange("Document Type", Rec."Document Type");
        PurchLine.SetRange("Document No.", Rec."Document No.");
        PurchLine.SetRange("Line No.", Rec."Line No.");
        PurchLine.SetRange(Type, Rec.Type);
        exit(PurchLine.IsEmpty);
    end;

    local procedure CreatePurchaseLineFromSalesLine()
    var
        PurchLine: Record "Purchase Line";
    begin
        PurchLine.Init();
        PurchLine."Document Type" := Rec."Document Type";
        PurchLine.MyDocumentType := Rec."Document Type";
        PurchLine."Document No." := Rec."Document No.";
        PurchLine."Line No." := Rec."Line No.";
        PurchLine.Type := Rec.Type;
        // do other stuff
    end;
}