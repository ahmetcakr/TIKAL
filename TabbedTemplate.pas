unit TabbedTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Gestures, FMX.Controls.Presentation, FMX.Objects,
  FMX.MultiView, FMX.ImgList, FMX.Layouts, FMX.Effects, Data.DB, MemDS,
  DBAccess, MSAccess;

type
  TuAna = class(TForm)
    toolbar_baslik: TToolBar;
    toollabel: TLabel;
    tabcontrol_Menu: TTabControl;
    tabUrunler: TTabItem;
    tabSepetim: TTabItem;
    tabKategoriler: TTabItem;
    tabHesabim: TTabItem;
    GestureManager1: TGestureManager;
    img_SideMenu: TImage;
    img_Sepetim: TImage;
    sideMenu: TMultiView;
    Scr_urunler: TScrollBox;
    urunBir: TRectangle;
    ShadowEffect1: TShadowEffect;
    lo_urunBirUst: TLayout;
    Glyph1: TGlyph;
    lo_urunBirOrta: TLayout;
    lbl_urunBirAdi: TLabel;
    btn_urunBirDetail: TButton;
    btn_urunBirSepet: TButton;
    urunIki: TRectangle;
    ShadowEffect2: TShadowEffect;
    lo_urunIkiUst: TLayout;
    urunUc: TRectangle;
    ShadowEffect3: TShadowEffect;
    lo_urunUcUst: TLayout;
    Glyph3: TGlyph;
    urunDort: TRectangle;
    ShadowEffect4: TShadowEffect;
    lo_urunDortUst: TLayout;
    Glyph4: TGlyph;
    urunBes: TRectangle;
    ShadowEffect5: TShadowEffect;
    lo_urunBesUst: TLayout;
    Glyph5: TGlyph;
    urunAlti: TRectangle;
    ShadowEffect6: TShadowEffect;
    lo_urunAltiUst: TLayout;
    gly: TGlyph;
    img_urunBirDetail: TImage;
    img_urunBirSepet: TImage;
    lo_urunBirAlt: TLayout;
    lbl_urunBirFiyat: TLabel;
    lo_urunIkiAlt: TLayout;
    btn_urunIkiDetail: TButton;
    img_urunIkiDetail: TImage;
    btn_urunIkiSepet: TButton;
    img_urunIkiSepet: TImage;
    lbl_urunIkiFiyat: TLabel;
    lo_urunIkiOrta: TLayout;
    lbl_urunIkiAdi: TLabel;
    lo_urunUcAlt: TLayout;
    btn_urunUcDetail: TButton;
    img_urunUcDetail: TImage;
    btn_urunUcSepet: TButton;
    img_urunUcSepet: TImage;
    lbl_urunUcFiyat: TLabel;
    lo_urunUcOrta: TLayout;
    lbl_urunUcAdi: TLabel;
    lo_urunDortAlt: TLayout;
    btn_urunDortDetail: TButton;
    img_urunDortDetail: TImage;
    btn_urunDortSepet: TButton;
    img_urunDortSepet: TImage;
    lbl_urunDortFiyat: TLabel;
    lo_urunDortOrta: TLayout;
    lbl_urunDortAdi: TLabel;
    lo_urunBesAlt: TLayout;
    btn_urunBesDetail: TButton;
    img_urunBesDetail: TImage;
    btn_urunBesSepet: TButton;
    img_urunBesSepet: TImage;
    lbl_urunBesFiyat: TLabel;
    lo_urunBesOrta: TLayout;
    lbl_urunBesAdi: TLabel;
    lo_urunAltiAlt: TLayout;
    btn_urunAltiDetail: TButton;
    img_urunAltiDetail: TImage;
    btn_urunAltiSepet: TButton;
    img_urunAltiSepet: TImage;
    lbl_urunAltiFiyat: TLabel;
    lo_urunAltiOrta: TLayout;
    lbl_urunAltiAdi: TLabel;
    Glyph2: TGlyph;
    MSConnection1: TMSConnection;
    MSQuery1: TMSQuery;
    V: TVertScrollBox;
    kategoriBir: TRectangle;
    ShadowEffect7: TShadowEffect;
    kategoriUc: TRectangle;
    ShadowEffect8: TShadowEffect;
    kategoriBes: TRectangle;
    ShadowEffect9: TShadowEffect;
    kategoriAlti: TRectangle;
    ShadowEffect10: TShadowEffect;
    kategoriDort: TRectangle;
    ShadowEffect11: TShadowEffect;
    kategoriIki: TRectangle;
    ShadowEffect12: TShadowEffect;
    img_kategoriIki: TImage;
    img_kategoriDort: TImage;
    img_kategoriAlti: TImage;
    img_kategoriBes: TImage;
    img_kategoriUc: TImage;
    img_kategoriBir: TImage;
    lbl_kategoriIki: TLabel;
    lbl_kategoriDort: TLabel;
    lbl_kategoriAlti: TLabel;
    lbl_kategoriBes: TLabel;
    lbl_kategoriUc: TLabel;
    lbl_kategoriBir: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure img_SepetimClick(Sender: TObject);
    procedure urunBirClick(Sender: TObject);
    procedure urunIkiClick(Sender: TObject);
    procedure urunUcClick(Sender: TObject);
    procedure urunDortClick(Sender: TObject);
    procedure urunBesClick(Sender: TObject);
    procedure urunAltiClick(Sender: TObject);
    procedure kategoriBirClick(Sender: TObject);
    procedure kategoriIkiClick(Sender: TObject);
    procedure kategoriUcClick(Sender: TObject);
    procedure kategoriDortClick(Sender: TObject);
    procedure kategoriBesClick(Sender: TObject);
    procedure kategoriAltiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uAna: TuAna;
  kategoriAdi : String;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TuAna.FormCreate(Sender: TObject);
begin
  tabcontrol_Menu.ActiveTab := tabUrunler;

  // Querydeki kay�tlar kadar �r�n� listelemek i�in;


   case MSQuery1.RecordCount of
    1:
        urunBir.Visible := True;
    2:
      begin
        urunBir.Visible := True;
        urunIki.Visible := True;
      end;
    3:
      begin
        urunBir.Visible := True;
        urunIki.Visible := True;
        urunUc.Visible := True;
      end;
    4:
      begin
        urunBir.Visible := True;
        urunIki.Visible := True;
        urunUc.Visible := True;
        urunDort.Visible := True;
      end;
    5:
      begin
        urunBir.Visible := True;
        urunIki.Visible := True;
        urunUc.Visible := True;
        urunDort.Visible := True;
        urunBes.Visible := True;
      end;
    6:
      begin
        urunBir.Visible := True;
        urunIki.Visible := True;
        urunUc.Visible := True;
        urunDort.Visible := True;
        urunBes.Visible := True;
        urunAlti.Visible := True;
      end;
  end;


end;

procedure TuAna.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
{$IFDEF ANDROID}
  case EventInfo.GestureID of
    sgiLeft:
    begin
      if tabcontrol_Menu.ActiveTab <> tabcontrol_Menu.Tabs[tabcontrol_Menu.TabCount-1] then
        tabcontrol_Menu.ActiveTab := tabcontrol_Menu.Tabs[tabcontrol_Menu.TabIndex+1];
      Handled := True;
    end;

    sgiRight:
    begin
      if tabcontrol_Menu.ActiveTab <> tabcontrol_Menu.Tabs[0] then
        tabcontrol_Menu.ActiveTab := tabcontrol_Menu.Tabs[tabcontrol_Menu.TabIndex-1];
      Handled := True;
    end;
  end;
{$ENDIF}
end;

procedure TuAna.img_SepetimClick(Sender: TObject);
begin

     // Sol �stteki sepet resmine t�klad���nda sepet sayfas�na y�nlenmesi i�in;

 tabcontrol_Menu.TabIndex := 1;
end;



    // KATEGOR� CL�CK EVENTLER�  ###

procedure TuAna.kategoriAltiClick(Sender: TObject);
begin
     kategoriAdi := lbl_kategoriAlti.Text.ToLower;
     ShowMessage(lbl_kategoriAlti.Text.ToLower);
end;

procedure TuAna.kategoriBesClick(Sender: TObject);
begin
     kategoriAdi := lbl_kategoriBes.Text.ToLower;
     ShowMessage(lbl_kategoriBes.Text.ToLower);
end;

procedure TuAna.kategoriBirClick(Sender: TObject);
begin
     kategoriAdi := lbl_kategoriBir.Text.ToLower;
     ShowMessage(lbl_kategoriBir.Text.ToLower);
end;

procedure TuAna.kategoriDortClick(Sender: TObject);
begin
     kategoriAdi := lbl_kategoriDort.Text.ToLower;
     ShowMessage(lbl_kategoriDort.Text.ToLower);
end;

procedure TuAna.kategoriIkiClick(Sender: TObject);
begin
     kategoriAdi := lbl_kategoriIki.Text.ToLower;
    ShowMessage(lbl_kategoriIki.Text.ToLower);
end;

procedure TuAna.kategoriUcClick(Sender: TObject);
begin
     kategoriAdi := lbl_kategoriUc.Text.ToLower;
     ShowMessage(lbl_kategoriUc.Text.ToLower);
end;


 // URUN CLICK EVENTLER�  ###

procedure TuAna.urunAltiClick(Sender: TObject);
begin
     ShowMessage('URUN6');
end;

procedure TuAna.urunBesClick(Sender: TObject);
begin
     ShowMessage('URUN5');
end;

procedure TuAna.urunBirClick(Sender: TObject);
begin
    //ShowMessage('URUN1');
    btn_urunBirDetail.Visible := True;
    btn_urunBirSepet.Visible := True;
end;

procedure TuAna.urunDortClick(Sender: TObject);
begin
     ShowMessage('URUN4');
end;

procedure TuAna.urunIkiClick(Sender: TObject);
begin
     ShowMessage('URUN2');
end;

procedure TuAna.urunUcClick(Sender: TObject);
begin
     ShowMessage('URUN3');
end;

end.
