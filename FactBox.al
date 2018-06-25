/*
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
*/

page 50110 SimpleCustomerCard 
{ 
    PageType = Card; 
    SourceTable = Customer; 
    UsageCategory = Documents;  
    AccessByPermission = page SimpleCustomerCard = X;
    ApplicationArea = All;
    layout 
    { 
        area(content) 
        { 
            group(General) 
            { 
                field("No.";"No.") {} 
                field(Name;Name) {} 
                field(Address;Address) {} 
            } 
        } 
    } 
} 