// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

// The factbox part that should be added.
page 50100 CustInfoFactBox
{
    PageType = CardPart;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            field("No.";"No.") {}
            field(Name;Name) {}
            field("Reminder Amounts (LCY)";"Reminder Amounts (LCY)") {}
            field("No. of Invoices";"No. of Invoices") {}
        }
    }
}

// Page extension adding "CustInfoFactBox" to the Customer Card
pageextension 50110 MyExtension extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addfirst(FactBoxes)
        {
            part(MyFactBox;CustInfoFactBox)
            {

            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
}