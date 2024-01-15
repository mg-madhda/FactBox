/// <summary>
/// PageExtension DocumentAttachmentFactboxExt (ID 50100) extends Record Document Attachment Factbox.
/// </summary>
pageextension 50100 DocumentAttachmentFactboxExt extends "Document Attachment Factbox"
{
    layout
    {
        addlast(Control2)
        {
            repeater(Attatchments)
            {
                field("File Name"; Rec."File Name")
                {
                    ApplicationArea = All;
                    Caption = 'Attachment';
                    trigger OnDrillDown()
                    begin
                        if Rec."Document Reference ID".HasValue() then
                            Rec.Export(true);
                    end;
                }
                field("File Type"; Rec."File Type")
                {
                    ApplicationArea = All;
                    Caption = 'File Type';
                }
            }
        }
    }
}