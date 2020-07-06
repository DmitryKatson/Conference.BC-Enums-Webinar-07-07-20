table 50100 "Fishing Entry"
{
    fields
    {
        field(1; "Entry No."; integer)
        {
            AutoIncrement = true;
        }
        field(2; Fish; Option)
        {
            OptionMembers = ,Tuna,Grouper,"Blue Marlin";
            OptionCaption = ',Atlantic bluefin tuna,Grouper,Blue Marlin';
        }
        field(3; Weight; Decimal)
        {

        }
    }
    keys
    {
        key(EntryNo; "Entry No.") { }
    }

}