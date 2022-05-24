unit TabbedTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Gestures, FMX.Controls.Presentation, FMX.Objects,
  FMX.MultiView, FMX.ImgList, FMX.Layouts, FMX.Effects, Data.DB, MemDS,
  DBAccess, MSAccess, System.ImageList, FMX.Edit;

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
    gly_urunBir: TGlyph;
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
    gly_urunUc: TGlyph;
    urunDort: TRectangle;
    ShadowEffect4: TShadowEffect;
    lo_urunDortUst: TLayout;
    gly_urunDort: TGlyph;
    urunBes: TRectangle;
    ShadowEffect5: TShadowEffect;
    lo_urunBesUst: TLayout;
    gly_urunBes: TGlyph;
    urunAlti: TRectangle;
    ShadowEffect6: TShadowEffect;
    lo_urunAltiUst: TLayout;
    gly_urunAlti: TGlyph;
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
    gly_urunIki: TGlyph;
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
    ImageList1: TImageList;
    MSQuery1urunId: TIntegerField;
    MSQuery1urunAdi: TStringField;
    MSQuery1urunOzellik: TMemoField;
    MSQuery1urunFiyat: TCurrencyField;
    MSQuery1urunAdet: TIntegerField;
    MSQuery1urunKategori: TStringField;
    MSQuery2: TMSQuery;
    MSQuery2urunId: TIntegerField;
    MSQuery2urunAdi: TStringField;
    MSQuery2urunFiyat: TCurrencyField;
    MSQuery3: TMSQuery;
    MSQuery3kategoriId: TIntegerField;
    MSQuery3kategoriAdi: TStringField;
    MSQuery3aktif: TStringField;
    ImageList2: TImageList;
    MSQuery2urunKategori: TStringField;
    lo_hesapUst: TLayout;
    lo_hesapOrta: TLayout;
    lo_hesapAlt: TLayout;
    Image1: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Layout1: TLayout;
    Layout2: TLayout;
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
    procedure btn_urunBirSepetClick(Sender: TObject);
    procedure btn_urunBirDetailClick(Sender: TObject);
    procedure btn_urunIkiSepetClick(Sender: TObject);
    procedure btn_urunIkiDetailClick(Sender: TObject);
    procedure btn_urunUcSepetClick(Sender: TObject);
    procedure btn_urunUcDetailClick(Sender: TObject);
    procedure btn_urunDortSepetClick(Sender: TObject);
    procedure btn_urunDortDetailClick(Sender: TObject);
    procedure btn_urunBesSepetClick(Sender: TObject);
    procedure btn_urunBesDetailClick(Sender: TObject);
    procedure btn_urunAltiSepetClick(Sender: TObject);
    procedure btn_urunAltiDetailClick(Sender: TObject);
    procedure Scr_urunlerClick(Sender: TObject);
  private
    { Private declarations }
  public
  kategoriAdi : String;
  urunid : Integer;
    { Public declarations }
  end;

var
  uAna: TuAna;



implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}


procedure TuAna.btn_urunBirDetailClick(Sender: TObject);
begin
   urunid := 0;
end;

procedure TuAna.btn_urunBirSepetClick(Sender: TObject);
begin
   urunid := 0;
end;

procedure TuAna.btn_urunIkiDetailClick(Sender: TObject);
begin
     urunid := 1;
end;

procedure TuAna.btn_urunIkiSepetClick(Sender: TObject);
begin
     urunid := 1;
end;

procedure TuAna.btn_urunUcDetailClick(Sender: TObject);
begin
     urunid := 2;
end;

procedure TuAna.btn_urunUcSepetClick(Sender: TObject);
begin
     urunid := 2;
end;

procedure TuAna.btn_urunDortDetailClick(Sender: TObject);
begin
     urunid := 3;
end;

procedure TuAna.btn_urunDortSepetClick(Sender: TObject);
begin
     urunid := 3;
end;

procedure TuAna.btn_urunBesDetailClick(Sender: TObject);
begin
     urunid := 4;
end;

procedure TuAna.btn_urunBesSepetClick(Sender: TObject);
begin
     urunid := 4;
end;

procedure TuAna.btn_urunAltiDetailClick(Sender: TObject);
begin
     urunid := 5;
end;

procedure TuAna.btn_urunAltiSepetClick(Sender: TObject);
begin
     urunid := 5;
end;






procedure TuAna.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  tabcontrol_Menu.ActiveTab := tabUrunler;
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


    // Elektronik kategorisi

procedure TuAna.kategoriBirClick(Sender: TObject);
begin
     tabcontrol_Menu.TabIndex := 0;

     gly_urunBir.Images := ImageList2;
     gly_urunBir.ImageIndex := 0;

     gly_urunIki.Images := ImageList2;
     gly_urunIki.ImageIndex := 1;

     gly_urunUc.Images := ImageList2;
     gly_urunUc.ImageIndex := 2;

     gly_urunDort.Images := ImageList2;
     gly_urunDort.ImageIndex := 3;

     gly_urunBes.Images := ImageList2;
     gly_urunBes.ImageIndex := 4;

     gly_urunAlti.Images := ImageList2;
     gly_urunAlti.ImageIndex := 5;





// URUNLERDEK� B�LG�LER� DOLDURMAK ���N SQLDEN VER� �EKMEK ###


  // URUN1

   MSQuery2.Close;
   MSQuery2.SQL.Clear;
   MSQuery2.SQL.BeginUpdate;
   MSQuery2.SQL.Add('SELECT urunId,urunAdi,urunFiyat,urunKategori FROM urunler WHERE urunId=:urunId AND urunKategori=:urunKategori');
   MSQuery2.SQL.EndUpdate;
   MSQuery2.Params.ParamByName('urunId').Value := 7;
   MSQuery2.Params.ParamByName('urunKategori').Value := Trim('Elektronik');
   MSQuery2.Open;
   lbl_urunBirAdi.Text := MSQuery2.Fields[1].AsString;
   lbl_urunBirFiyat.Text := MSQuery2.Fields[2].AsString;

   // URUN2

   MSQuery2.Close;
   MSQuery2.SQL.Clear;
   MSQuery2.SQL.BeginUpdate;
   MSQuery2.SQL.Add('SELECT urunId,urunAdi,urunFiyat,urunKategori FROM urunler WHERE urunId=:urunId AND urunKategori=:urunKategori');
   MSQuery2.SQL.EndUpdate;
   MSQuery2.Params.ParamByName('urunId').Value := 8;
   MSQuery2.Params.ParamByName('urunKategori').Value := Trim('Elektronik');
   MSQuery2.Open;
   lbl_urunIkiAdi.Text := MSQuery2.Fields[1].AsString;
   lbl_urunIkiFiyat.Text := MSQuery2.Fields[2].AsString;

   //URUN3

   MSQuery2.Close;
   MSQuery2.SQL.Clear;
   MSQuery2.SQL.BeginUpdate;
   MSQuery2.SQL.Add('SELECT urunId,urunAdi,urunFiyat,urunKategori FROM urunler WHERE urunId=:urunId AND urunKategori=:urunKategori');
   MSQuery2.SQL.EndUpdate;
   MSQuery2.Params.ParamByName('urunId').Value := 9;
   MSQuery2.Params.ParamByName('urunKategori').Value := Trim('Elektronik');
   MSQuery2.Open;
   lbl_urunUcAdi.Text := MSQuery2.Fields[1].AsString;
   lbl_urunUcFiyat.Text := MSQuery2.Fields[2].AsString;


    //URUN4

   MSQuery2.Close;
   MSQuery2.SQL.Clear;
   MSQuery2.SQL.BeginUpdate;
   MSQuery2.SQL.Add('SELECT urunId,urunAdi,urunFiyat,urunKategori FROM urunler WHERE urunId=:urunId AND urunKategori=:urunKategori');
   MSQuery2.SQL.EndUpdate;
   MSQuery2.Params.ParamByName('urunId').Value := 10;
   MSQuery2.Params.ParamByName('urunKategori').Value := Trim('Elektronik');
   MSQuery2.Open;
   lbl_urunDortAdi.Text := MSQuery2.Fields[1].AsString;
   lbl_urunDortFiyat.Text := MSQuery2.Fields[2].AsString;

   //URUN5

   MSQuery2.Close;
   MSQuery2.SQL.Clear;
   MSQuery2.SQL.BeginUpdate;
   MSQuery2.SQL.Add('SELECT urunId,urunAdi,urunFiyat,urunKategori FROM urunler WHERE urunId=:urunId AND urunKategori=:urunKategori');
   MSQuery2.SQL.EndUpdate;
   MSQuery2.Params.ParamByName('urunId').Value := 11;
   MSQuery2.Params.ParamByName('urunKategori').Value := Trim('Elektronik');
   MSQuery2.Open;
   lbl_urunBesAdi.Text := MSQuery2.Fields[1].AsString;
   lbl_urunBesFiyat.Text := MSQuery2.Fields[2].AsString;

   //URUN6

   MSQuery2.Close;
   MSQuery2.SQL.Clear;
   MSQuery2.SQL.BeginUpdate;
   MSQuery2.SQL.Add('SELECT urunId,urunAdi,urunFiyat,urunKategori FROM urunler WHERE urunId=:urunId AND urunKategori=:urunKategori');
   MSQuery2.SQL.EndUpdate;
   MSQuery2.Params.ParamByName('urunId').Value := 12;
   MSQuery2.Params.ParamByName('urunKategori').Value := Trim('Elektronik');
   MSQuery2.Open;
   lbl_urunAltiAdi.Text := MSQuery2.Fields[1].AsString;
   lbl_urunAltiFiyat.Text := MSQuery2.Fields[2].AsString;






     MSQuery3.Close;
     MSQuery3.SQL.Clear;
     MSQuery3.SQL.BeginUpdate;
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=1 WHERE kategoriAdi =:kategoriAdi');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi2');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi3');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi4');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi5');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi6');
     MSQuery3.SQL.EndUpdate;
     MSQuery3.Params.ParamByName('kategoriAdi').Value := Trim('Elektronik');
     MSQuery3.Params.ParamByName('kategoriAdi2').Value := Trim('Araba');
     MSQuery3.Params.ParamByName('kategoriAdi3').Value := Trim('Ev');
     MSQuery3.Params.ParamByName('kategoriAdi4').Value := Trim('Giyim');
     MSQuery3.Params.ParamByName('kategoriAdi5').Value := Trim('Ayakkabi');
     MSQuery3.Params.ParamByName('kategoriAdi6').Value := Trim('Yaz');
     MSQuery3.Execute;


                // Querydeki kay�tlar kadar �r�n� listelemek i�in;

  MSQuery3.Close;
  MSQuery3.SQL.Clear;
  MSQuery3.SQL.BeginUpdate;
  MSQuery3.SQL.Add('SELECT * FROM kategoriler where aktif=:aktif');
  MSQuery3.SQL.EndUpdate;
  MSQuery3.Params.ParamByName('aktif').Value := 1;
  MSQuery3.Open;
  kategoriAdi := MSQuery3.Fields[1].AsString;

  if kategoriAdi = 'Elektronik' then
  begin

  MSQuery1.Close;
  MSQuery1.SQL.Clear;
  MSQuery1.SQL.BeginUpdate;
  MSQuery1.SQL.Add('select * from urunler where urunKategori =:urunKategori');
  MSQuery1.SQL.EndUpdate;
  MSQuery1.Params.ParamByName('urunKategori').Value := Trim('Elektronik');
  MSQuery1.Open;

  case MSQuery1.RecordCount of
    1:
    begin
        urunBir.Visible := True;

        urunIki.Visible := False;
        urunUc.Visible := False;
        urunDort.Visible := False;
        urunBes.Visible := False;
        urunAlti.Visible := False;
    end;


    2:
      begin
        urunBir.Visible := True;
        urunIki.Visible := True;

        urunUc.Visible := False;
        urunDort.Visible := False;
        urunBes.Visible := False;
        urunAlti.Visible := False;
      end;
    3:
      begin
        urunBir.Visible := True;
        urunIki.Visible := True;
        urunUc.Visible := True;

        urunDort.Visible := False;
        urunBes.Visible := False;
        urunAlti.Visible := False;
      end;
    4:
      begin
        urunBir.Visible := True;
        urunIki.Visible := True;
        urunUc.Visible := True;
        urunDort.Visible := True;

         urunBes.Visible := False;
        urunAlti.Visible := False;
      end;
    5:
      begin
        urunBir.Visible := True;
        urunIki.Visible := True;
        urunUc.Visible := True;
        urunDort.Visible := True;
        urunBes.Visible := True;

        urunAlti.Visible := False;
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

  end

  else
  begin
       ShowMessage('hata');
  end;



end;








    // araba kategorisi
procedure TuAna.kategoriIkiClick(Sender: TObject);
begin
     tabcontrol_Menu.TabIndex := 0;

     gly_urunBir.Images := ImageList1;
     gly_urunBir.ImageIndex := 0;

     gly_urunIki.Images := ImageList1;
     gly_urunIki.ImageIndex := 1;

     gly_urunUc.Images := ImageList1;
     gly_urunUc.ImageIndex := 2;

     gly_urunDort.Images := ImageList1;
     gly_urunDort.ImageIndex := 3;

     gly_urunBes.Images := ImageList1;
     gly_urunBes.ImageIndex := 4;

     gly_urunAlti.Images := ImageList1;
     gly_urunAlti.ImageIndex := 5;




  // URUNLERDEK� B�LG�LER� DOLDURMAK ���N SQLDEN VER� �EKMEK ###


  // URUN1

   MSQuery2.Close;
   MSQuery2.SQL.Clear;
   MSQuery2.SQL.BeginUpdate;
   MSQuery2.SQL.Add('SELECT urunId,urunAdi,urunFiyat,urunKategori FROM urunler WHERE urunId=:urunId AND urunKategori=:urunKategori');
   MSQuery2.SQL.EndUpdate;
   MSQuery2.Params.ParamByName('urunId').Value := 1;
   MSQuery2.Params.ParamByName('urunKategori').Value := Trim('araba');
   MSQuery2.Open;
   lbl_urunBirAdi.Text := MSQuery2.Fields[1].AsString;
   lbl_urunBirFiyat.Text := MSQuery2.Fields[2].AsString;

   // URUN2

   MSQuery2.Close;
   MSQuery2.SQL.Clear;
   MSQuery2.SQL.BeginUpdate;
   MSQuery2.SQL.Add('SELECT urunId,urunAdi,urunFiyat,urunKategori FROM urunler WHERE urunId=:urunId AND urunKategori=:urunKategori');
   MSQuery2.SQL.EndUpdate;
   MSQuery2.Params.ParamByName('urunId').Value := 2;
   MSQuery2.Params.ParamByName('urunKategori').Value := Trim('araba');
   MSQuery2.Open;
   lbl_urunIkiAdi.Text := MSQuery2.Fields[1].AsString;
   lbl_urunIkiFiyat.Text := MSQuery2.Fields[2].AsString;

   //URUN3

   MSQuery2.Close;
   MSQuery2.SQL.Clear;
   MSQuery2.SQL.BeginUpdate;
   MSQuery2.SQL.Add('SELECT urunId,urunAdi,urunFiyat,urunKategori FROM urunler WHERE urunId=:urunId AND urunKategori=:urunKategori');
   MSQuery2.SQL.EndUpdate;
   MSQuery2.Params.ParamByName('urunId').Value := 3;
   MSQuery2.Params.ParamByName('urunKategori').Value := Trim('araba');
   MSQuery2.Open;
   lbl_urunUcAdi.Text := MSQuery2.Fields[1].AsString;
   lbl_urunUcFiyat.Text := MSQuery2.Fields[2].AsString;

   //URUN4

   MSQuery2.Close;
   MSQuery2.SQL.Clear;
   MSQuery2.SQL.BeginUpdate;
   MSQuery2.SQL.Add('SELECT urunId,urunAdi,urunFiyat,urunKategori FROM urunler WHERE urunId=:urunId AND urunKategori=:urunKategori');
   MSQuery2.SQL.EndUpdate;
   MSQuery2.Params.ParamByName('urunId').Value := 4;
   MSQuery2.Params.ParamByName('urunKategori').Value := Trim('araba');
   MSQuery2.Open;
   lbl_urunDortAdi.Text := MSQuery2.Fields[1].AsString;
   lbl_urunDortFiyat.Text := MSQuery2.Fields[2].AsString;

   //URUN5

   MSQuery2.Close;
   MSQuery2.SQL.Clear;
   MSQuery2.SQL.BeginUpdate;
   MSQuery2.SQL.Add('SELECT urunId,urunAdi,urunFiyat,urunKategori FROM urunler WHERE urunId=:urunId AND urunKategori=:urunKategori');
   MSQuery2.SQL.EndUpdate;
   MSQuery2.Params.ParamByName('urunId').Value := 5;
   MSQuery2.Params.ParamByName('urunKategori').Value := Trim('araba');
   MSQuery2.Open;
   lbl_urunBesAdi.Text := MSQuery2.Fields[1].AsString;
   lbl_urunBesFiyat.Text := MSQuery2.Fields[2].AsString;

   //URUN6

   MSQuery2.Close;
   MSQuery2.SQL.Clear;
   MSQuery2.SQL.BeginUpdate;
   MSQuery2.SQL.Add('SELECT urunId,urunAdi,urunFiyat,urunKategori FROM urunler WHERE urunId=:urunId AND urunKategori=:urunKategori');
   MSQuery2.SQL.EndUpdate;
   MSQuery2.Params.ParamByName('urunId').Value := 6;
   MSQuery2.Params.ParamByName('urunKategori').Value := Trim('araba');
   MSQuery2.Open;
   lbl_urunAltiAdi.Text := MSQuery2.Fields[1].AsString;
   lbl_urunAltiFiyat.Text := MSQuery2.Fields[2].AsString;















     MSQuery3.Close;
     MSQuery3.SQL.Clear;
     MSQuery3.SQL.BeginUpdate;
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=1 WHERE kategoriAdi =:kategoriAdi');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi2');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi3');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi4');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi5');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi6');
     MSQuery3.SQL.EndUpdate;
     MSQuery3.Params.ParamByName('kategoriAdi').Value := Trim('Araba');
     MSQuery3.Params.ParamByName('kategoriAdi2').Value := Trim('Elektronik');
     MSQuery3.Params.ParamByName('kategoriAdi3').Value := Trim('Ev');
     MSQuery3.Params.ParamByName('kategoriAdi4').Value := Trim('Giyim');
     MSQuery3.Params.ParamByName('kategoriAdi5').Value := Trim('Ayakkabi');
     MSQuery3.Params.ParamByName('kategoriAdi6').Value := Trim('Yaz');
     MSQuery3.Execute;


           // Querydeki kay�tlar kadar �r�n� listelemek i�in;

  MSQuery3.Close;
  MSQuery3.SQL.Clear;
  MSQuery3.SQL.BeginUpdate;
  MSQuery3.SQL.Add('SELECT * FROM kategoriler where aktif=:aktif');
  MSQuery3.SQL.EndUpdate;
  MSQuery3.Params.ParamByName('aktif').Value := 1;
  MSQuery3.Open;
  kategoriAdi := MSQuery3.Fields[1].AsString;

  if kategoriAdi = 'Araba' then
  begin

  MSQuery1.Close;
  MSQuery1.SQL.Clear;
  MSQuery1.SQL.BeginUpdate;
  MSQuery1.SQL.Add('select * from urunler where urunKategori =:urunKategori');
  MSQuery1.SQL.EndUpdate;
  MSQuery1.Params.ParamByName('urunKategori').Value := Trim('Araba');
  MSQuery1.Open;

  case MSQuery1.RecordCount of
    1:
    begin
        urunBir.Visible := True;

        urunIki.Visible := False;
        urunUc.Visible := False;
        urunDort.Visible := False;
        urunBes.Visible := False;
        urunAlti.Visible := False;
    end;


    2:
      begin
        urunBir.Visible := True;
        urunIki.Visible := True;

        urunUc.Visible := False;
        urunDort.Visible := False;
        urunBes.Visible := False;
        urunAlti.Visible := False;
      end;
    3:
      begin
        urunBir.Visible := True;
        urunIki.Visible := True;
        urunUc.Visible := True;

        urunDort.Visible := False;
        urunBes.Visible := False;
        urunAlti.Visible := False;
      end;
    4:
      begin
        urunBir.Visible := True;
        urunIki.Visible := True;
        urunUc.Visible := True;
        urunDort.Visible := True;

         urunBes.Visible := False;
        urunAlti.Visible := False;
      end;
    5:
      begin
        urunBir.Visible := True;
        urunIki.Visible := True;
        urunUc.Visible := True;
        urunDort.Visible := True;
        urunBes.Visible := True;

        urunAlti.Visible := False;
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

  end

  else
  begin
       ShowMessage('hata');
  end;




end;

    // yaz kategorisi
procedure TuAna.kategoriUcClick(Sender: TObject);
begin
     tabcontrol_Menu.TabIndex := 0;

     MSQuery3.Close;
     MSQuery3.SQL.Clear;
     MSQuery3.SQL.BeginUpdate;
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=1 WHERE kategoriAdi =:kategoriAdi');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi2');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi3');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi4');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi5');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi6');
     MSQuery3.SQL.EndUpdate;
     MSQuery3.Params.ParamByName('kategoriAdi').Value := Trim('Yaz');
     MSQuery3.Params.ParamByName('kategoriAdi2').Value := Trim('Araba');
     MSQuery3.Params.ParamByName('kategoriAdi3').Value := Trim('Ev');
     MSQuery3.Params.ParamByName('kategoriAdi4').Value := Trim('Giyim');
     MSQuery3.Params.ParamByName('kategoriAdi5').Value := Trim('Ayakkabi');
     MSQuery3.Params.ParamByName('kategoriAdi6').Value := Trim('Elektronik');
     MSQuery3.Execute;

end;


// Ev kategorisi
procedure TuAna.kategoriDortClick(Sender: TObject);
begin
     tabcontrol_Menu.TabIndex := 0;

     MSQuery3.Close;
     MSQuery3.SQL.Clear;
     MSQuery3.SQL.BeginUpdate;
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=1 WHERE kategoriAdi =:kategoriAdi');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi2');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi3');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi4');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi5');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi6');
     MSQuery3.SQL.EndUpdate;
     MSQuery3.Params.ParamByName('kategoriAdi').Value := Trim('Ev');
     MSQuery3.Params.ParamByName('kategoriAdi2').Value := Trim('Elektronik');
     MSQuery3.Params.ParamByName('kategoriAdi3').Value := Trim('Yaz');
     MSQuery3.Params.ParamByName('kategoriAdi4').Value := Trim('Giyim');
     MSQuery3.Params.ParamByName('kategoriAdi5').Value := Trim('Ayakkabi');
     MSQuery3.Params.ParamByName('kategoriAdi6').Value := Trim('Araba');
     MSQuery3.Execute;


end;

    // Ayakkabi kategorisi
procedure TuAna.kategoriBesClick(Sender: TObject);
begin
     tabcontrol_Menu.TabIndex := 0;

     MSQuery3.Close;
     MSQuery3.SQL.Clear;
     MSQuery3.SQL.BeginUpdate;
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=1 WHERE kategoriAdi =:kategoriAdi');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi2');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi3');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi4');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi5');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi6');
     MSQuery3.SQL.EndUpdate;
     MSQuery3.Params.ParamByName('kategoriAdi').Value := Trim('Ayakkabi');
     MSQuery3.Params.ParamByName('kategoriAdi2').Value := Trim('Elektronik');
     MSQuery3.Params.ParamByName('kategoriAdi3').Value := Trim('Yaz');
     MSQuery3.Params.ParamByName('kategoriAdi4').Value := Trim('Giyim');
     MSQuery3.Params.ParamByName('kategoriAdi5').Value := Trim('Ev');
     MSQuery3.Params.ParamByName('kategoriAdi6').Value := Trim('Araba');
     MSQuery3.Execute;

end;

    // Giyim kategorisi
procedure TuAna.kategoriAltiClick(Sender: TObject);
begin
     tabcontrol_Menu.TabIndex := 0;

     MSQuery3.Close;
     MSQuery3.SQL.Clear;
     MSQuery3.SQL.BeginUpdate;
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=1 WHERE kategoriAdi =:kategoriAdi');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi2');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi3');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi4');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi5');
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi6');
     MSQuery3.SQL.EndUpdate;
     MSQuery3.Params.ParamByName('kategoriAdi').Value := Trim('Giyim');
     MSQuery3.Params.ParamByName('kategoriAdi2').Value := Trim('Araba');
     MSQuery3.Params.ParamByName('kategoriAdi3').Value := Trim('Ev');
     MSQuery3.Params.ParamByName('kategoriAdi4').Value := Trim('Elektronik');
     MSQuery3.Params.ParamByName('kategoriAdi5').Value := Trim('Ayakkabi');
     MSQuery3.Params.ParamByName('kategoriAdi6').Value := Trim('Yaz');
     MSQuery3.Execute;

end;




 procedure TuAna.Scr_urunlerClick(Sender: TObject);
begin

//   URUN �ZER�NDEK� BUTONLARIN G�ZLENMES� ���N;

     btn_urunBirDetail.Visible := False;
     btn_urunBirSepet.Visible := False;

     btn_urunIkiDetail.Visible := False;
     btn_urunIkiSepet.Visible := False;

     btn_urunUcDetail.Visible := False;
     btn_urunUcSepet.Visible := False;

     btn_urunDortDetail.Visible := False;
     btn_urunDortSepet.Visible := False;

     btn_urunBesDetail.Visible := False;
     btn_urunBesSepet.Visible := False;

     btn_urunAltiDetail.Visible := False;
     btn_urunAltiSepet.Visible := False;
end;

   // URUN CLICK EVENTLER�  ###

// URUNLER �ZER�NDEK� BUTONLARI G�R�N�R HALE GET�RMEK ���N

procedure TuAna.urunAltiClick(Sender: TObject);
begin
     btn_urunAltiDetail.Visible := True;
    btn_urunAltiSepet.Visible := True;
end;

procedure TuAna.urunBesClick(Sender: TObject);
begin
     btn_urunBesDetail.Visible := True;
    btn_urunBesSepet.Visible := True;
end;

procedure TuAna.urunBirClick(Sender: TObject);
begin
    btn_urunBirDetail.Visible := True;
    btn_urunBirSepet.Visible := True;
end;

procedure TuAna.urunDortClick(Sender: TObject);
begin
     btn_urunDortDetail.Visible := True;
    btn_urunDortSepet.Visible := True;
end;

procedure TuAna.urunIkiClick(Sender: TObject);
begin
     btn_urunIkiDetail.Visible := True;
    btn_urunIkiSepet.Visible := True;
end;

procedure TuAna.urunUcClick(Sender: TObject);
begin
     btn_urunUcDetail.Visible := True;
    btn_urunUcSepet.Visible := True;
end;

end.
