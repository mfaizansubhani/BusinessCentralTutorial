report 50105 MyReport
{
    UsageCategory = Administration;
    ApplicationArea = All;
    RDLCLayout = 'MyFirstReport.rdl';
    WordLayout = 'MyFirstReport.docx';

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = sorting (Name);
            column(No; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(Balance; Balance)
            {

            }

            dataitem(CustomerLedgerEntry; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = field ("No.");
                DataItemLinkReference = Customer;
                DataItemTableView = sorting ("Posting Date");
                column(Amount; Amount)
                {

                }
                column(Posting_Date; "Posting Date")
                {

                }
            }

        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    //field(Name; SourceExpression)
                    //{
                    //  ApplicationArea = All;

                    //}
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        myInt: Integer;
}