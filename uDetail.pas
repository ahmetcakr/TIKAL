unit uDetail;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, FMX.ImgList;

type
  Tfrm_Detail = class(TFrame)
    rec_Detail: TRectangle;
    lo_detailUst: TLayout;
    btn_detailBack: TButton;
    lo_detailOrta: TLayout;
    txt_detailOzellik: TText;
    lbl_detailUrunAdi: TLabel;
    gly_detailUrunResmi: TGlyph;
    procedure btn_detailBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var
  frm_Detail : TFrame;

implementation

{$R *.fmx}

procedure Tfrm_Detail.btn_detailBackClick(Sender: TObject);
begin
     frm_Detail.Free;



end;

end.
