enum 50100 "Ocean Fish" implements IFishing
{

    value(1; Tuna)    //index = 1
    {
        Caption = 'Atlantic bluefin tuna';
        Implementation = IFishing = "Tuna Fishing";
    }
    value(2; Grouper) //index = 2
    {
        Implementation = IFishing = "Grouper Fishing";
    }
    value(10; "Blue Marlin") //index = 3
    {
        Implementation = IFishing = "Blue Marlin Fishing";
    }
}