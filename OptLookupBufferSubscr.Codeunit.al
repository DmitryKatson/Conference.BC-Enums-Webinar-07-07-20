codeunit 50100 "OptLookup Buffer Subscr"
{
    [EventSubscriber(ObjectType::Table, Database::"Option Lookup Buffer", 'OnBeforeIncludeOption', '', false, false)]
    local procedure AddFishToOption(LookupType: Option; Option: Integer; OptionLookupBuffer: Record "Option Lookup Buffer"; var Handled: Boolean; var Result: Boolean)
    var
        SalesLine: Record "Sales Line";
        IndexOfFishType: Integer;
    begin
        if (LookupType <> OptionLookupBuffer."Lookup Type"::Sales) then
            exit;
        IndexOfFishType := SalesLine.Type.Ordinals.IndexOf(SalesLine.Type::"AIR Fish".AsInteger()) - 1;
        if Option = IndexOfFishType then begin
            Result := true;
            Handled := true;
        end;
    end;

}