pageextension 50105 MyExtension extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    trigger OnOpenPage();
    begin
        report.Run(Report::MyReport);
    end;

    var
        myInt: Integer;
}