unit TabbedTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Gestures, FMX.Controls.Presentation, FMX.Objects,
  FMX.MultiView, FMX.ImgList, FMX.Layouts, FMX.Effects, Data.DB, MemDS,
  DBAccess, MSAccess, System.ImageList, FMX.Edit, FMX.EditBox, FMX.SpinBox,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo;

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
    MSQuery2: TMSQuery;
    MSQuery3: TMSQuery;
    MSQuery3kategoriId: TIntegerField;
    MSQuery3kategoriAdi: TStringField;
    MSQuery3aktif: TStringField;
    ImageList2: TImageList;
    lo_hesapUst: TLayout;
    lo_hesapOrta: TLayout;
    lo_hesapAlt: TLayout;
    img_hesapUstLogo: TImage;
    lbl_hesapOrtaNickname: TLabel;
    edit_hesapOrtaNickname: TEdit;
    lbl_hesapOrtaPassword: TLabel;
    edit_hesapOrtaPassword: TEdit;
    lbl_hesapUstBaslik: TLabel;
    btn_hesapAltGiris: TButton;
    btn_hesapAltKayit: TButton;
    lo_hesapOrtaUst: TLayout;
    lo_hesapOrtaAlt: TLayout;
    MSQuery4: TMSQuery;
    MSQuery4kullaniciAdi: TStringField;
    MSQuery4sifre: TStringField;
    MSQuery4aktif: TStringField;
    btn_urunlerGiris: TButton;
    sepet_urunBir: TRectangle;
    ShadowEffect13: TShadowEffect;
    sepet_urunIki: TRectangle;
    ShadowEffect14: TShadowEffect;
    lo_sepetUrunBirResim: TLayout;
    lo_sepetUrunIkiResim: TLayout;
    sepet_AltPanel: TRectangle;
    lbl_sepetToplam: TLabel;
    lbl_sepetToplamFiyat: TLabel;
    btn_sepetTamamla: TButton;
    lbl_SepetUrunBirAdi: TLabel;
    lbl_SepetUrunIkiAdi: TLabel;
    txt_urunIkiDetail: TText;
    spin_urunIki: TSpinBox;
    txt_urunBirDetail: TText;
    spin_urunBir: TSpinBox;
    gly_sepetUrunBir: TGlyph;
    gly_sepetUrunIki: TGlyph;
    MSQuery2urunId: TIntegerField;
    MSQuery2urunAdi: TStringField;
    MSQuery2urunFiyat: TSmallintField;
    MSQuery2urunKategori: TStringField;
    MSQuery1urunId: TIntegerField;
    MSQuery1urunAdi: TStringField;
    MSQuery1urunOzellik: TStringField;
    MSQuery1urunFiyat: TSmallintField;
    MSQuery1urunAdet: TIntegerField;
    MSQuery1urunKategori: TStringField;
    Layout1: TLayout;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    btn_hesapAltCikis: TButton;
    MSQuery5: TMSQuery;
    lbl_SepetUrunBirFiyat: TLabel;
    lbl_SepetUrunIkiFiyat: TLabel;
    lbl_SepetUrunBirKatAdi: TLabel;
    lbl_SepetUrunIkiKatAdi: TLabel;
    MSQuery5urunAdi: TStringField;
    MSQuery5kullaniciAdi: TStringField;
    MSQuery5adet: TIntegerField;
    MSQuery5fiyat: TSmallintField;
    MSQuery5imageList: TStringField;
    MSQuery5imageIndex: TSmallintField;
    MSQuery5urunAlani: TByteField;
    MSQuery5urunKategori: TStringField;
    MSQuery5urunOzellik: TStringField;
    panel_Detail: TPanel;
    Button7: TButton;
    Image1: TImage;
    lbl_detailUrunAdi: TLabel;
    gly_detailPics: TGlyph;
    txt_detailOzellik: TText;
    MSConnection1: TMSConnection;
    btn_sepetSil: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
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
    procedure btn_hesapAltGirisClick(Sender: TObject);
    procedure btn_hesapAltKayitClick(Sender: TObject);
    procedure btn_urunlerGirisClick(Sender: TObject);
    procedure spin_urunBirChange(Sender: TObject);
    procedure spin_urunIkiChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_hesapAltCikisClick(Sender: TObject);
    procedure btn_sepetTamamlaClick(Sender: TObject);
    procedure img_SideMenuClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btn_sepetSilClick(Sender: TObject);
  private
    { Private declarations }
  public
  kategoriAdi : String;
  urunid : Integer;
  toplamfiyat: Integer;
  aktifKullanici : string;
  sepetUrunBirFiyat : Integer;
  sepetUrunIkiFiyat : Integer;
    { Public declarations }
  end;

var
  uAna: TuAna;




implementation

{$R *.fmx}

{$R *.LgXhdpiPh.fmx ANDROID}



procedure TuAna.btn_urunlerGirisClick(Sender: TObject);
begin
// T?kland???nda Girise y?nlendirir.
   tabcontrol_Menu.TabIndex := 3;
end;



procedure TuAna.btn_urunBirSepetClick(Sender: TObject);
begin





   // Aktif k?sm? 1 olan tabloyu ?a??r?r.

   MSQuery3.Close;
   MSQuery3.SQL.Clear;
   MSQuery3.SQL.BeginUpdate;
   MSQuery3.SQL.Add('SELECT TOP 1 * FROM kategoriler WHERE aktif=:aktif');
   MSQuery3.SQL.EndUpdate;
   MSQuery3.Params.ParamByName('aktif').Value := '1';
   MSQuery3.Open;




   if (gly_sepetUrunBir.Images <> nil) AND (gly_sepetUrunIki.Images <> nil) then
   begin
        // sepetteki iki ?r?n de dolu ise uyar? verir.

         ShowMessage('Sepete maksimum 2 ?r?n eklenebilir.');
         Abort;

   end;





   if gly_sepetUrunBir.Images = nil then
   begin
   // e?er sepetteki 1. ?r?n k?sm? bo? ise;
   sepet_urunBir.Visible := true;





        if MSQuery3.Fields[1].Text = 'Araba' then
         begin

           // Aktifli?i 1 olan kategori Araba ise bu kodlar? ?al??t?r.

          //gly_sepetUrunBir.Images:= ImageList1;
          gly_sepetUrunBir.Images := gly_urunBir.Images;
          gly_sepetUrunBir.ImageIndex := 0;
          lbl_SepetUrunBirAdi.Text := lbl_urunBirAdi.Text;
          lbl_SepetUrunBirFiyat.Text := lbl_urunBirFiyat.Text;
          lbl_SepetUrunBirKatAdi.Text := 'Araba';
            ShowMessage('Eklendi.');
            spin_urunBir.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
            MSQuery1.Open;

            txt_urunBirDetail.Text := MSQuery1.Fields[2].AsString ;
          end

        else if MSQuery3.Fields[1].Text = 'Elektronik' then
        begin

        // Aktifli?i 1 olan kategori Elektronik ise bu kodlar? 1.?r?n alan?nda ?al??t?r.

         gly_sepetUrunBir.Images:= ImageList2;
         gly_sepetUrunBir.ImageIndex := 0;
         lbl_SepetUrunBirAdi.Text := lbl_urunBirAdi.Text;
         lbl_SepetUrunBirFiyat.Text := lbl_urunBirFiyat.Text;
         lbl_SepetUrunBirKatAdi.Text := 'Elektronik';
         ShowMessage('Eklendi.');
         spin_urunBir.Value :=  1 ;

         // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
            MSQuery1.Open;


         txt_urunBirDetail.Text := MSQuery1.Fields[2].AsString ;
         end;

   end
   else if gly_sepetUrunBir.Images <> nil then
        begin
             // E?er sepetteki 1. ?r?n alan? bo? de?ilse;
             sepet_urunIki.Visible := true;

        if MSQuery3.Fields[1].Text = 'Araba' then
         begin
          //// Aktifli?i 1 olan kategori Araba ise bu kodlar? 2.?r?n alan?nda ?al??t?r.
          gly_sepetUrunIki.Images:= ImageList1;
          gly_sepetUrunIki.ImageIndex := 0;
          lbl_SepetUrunIkiAdi.Text := lbl_urunBirAdi.Text;
          lbl_SepetUrunIkiFiyat.Text := lbl_urunBirFiyat.Text;
          lbl_SepetUrunIkiKatAdi.Text := 'Araba';
          ShowMessage('Eklendi.');
            spin_urunIki.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
            MSQuery1.Open;


            txt_urunIkiDetail.Text := MSQuery1.Fields[2].AsString ;
          end

        else if MSQuery3.Fields[1].Text = 'Elektronik' then
        begin
             //// Aktifli?i 1 olan kategori Araba ise bu kodlar? 2.?r?n alan?nda ?al??t?r.
         gly_sepetUrunIki.Images:= ImageList2;
         gly_sepetUrunIki.ImageIndex := 0;
         lbl_SepetUrunIkiAdi.Text := lbl_urunBirAdi.Text;
         lbl_SepetUrunIkiFiyat.Text := lbl_urunBirFiyat.Text;
         lbl_SepetUrunIkiKatAdi.Text := 'Elektronik';
         ShowMessage('Eklendi.');
            spin_urunIki.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
            MSQuery1.Open;

            txt_urunIkiDetail.Text := MSQuery1.Fields[2].AsString ;
         end;
        end;




end;

procedure TuAna.btn_urunBirDetailClick(Sender: TObject);
begin

   lbl_detailUrunAdi.Text := lbl_urunBirAdi.Text;

   gly_detailPics.Images  := gly_urunBir.Images;
   gly_detailPics.ImageIndex  := gly_urunBir.ImageIndex;

   MSQuery1.Close;
   MSQuery1.SQL.Clear;
   MSQuery1.SQL.BeginUpdate;
   MSQuery1.SQL.Add('SELECT * from urunler WHERE urunAdi=:urunAdi');
   MSQuery1.SQL.EndUpdate;
   MSQuery1.Params.ParamByName('urunAdi').Value := lbl_urunBirAdi.Text;
   MSQuery1.Open;


   txt_detailOzellik.Text := MSQuery1.Fields[2].AsString;



end;

procedure TuAna.btn_urunIkiDetailClick(Sender: TObject);
begin
     lbl_detailUrunAdi.Text := lbl_urunIkiAdi.Text;

   gly_detailPics.Images  := gly_urunIki.Images;
   gly_detailPics.ImageIndex  := gly_urunIki.ImageIndex;

   MSQuery1.Close;
   MSQuery1.SQL.Clear;
   MSQuery1.SQL.BeginUpdate;
   MSQuery1.SQL.Add('SELECT * from urunler WHERE urunAdi=:urunAdi');
   MSQuery1.SQL.EndUpdate;
   MSQuery1.Params.ParamByName('urunAdi').Value := lbl_urunIkiAdi.Text;
   MSQuery1.Open;


   txt_detailOzellik.Text := MSQuery1.Fields[2].AsString;


end;

procedure TuAna.btn_urunIkiSepetClick(Sender: TObject);
begin

     // Aktif k?sm? 1 olan tabloyu ?a??r?r.

   MSQuery3.Close;
   MSQuery3.SQL.Clear;
   MSQuery3.SQL.BeginUpdate;
   MSQuery3.SQL.Add('SELECT TOP 1 * FROM kategoriler WHERE aktif=:aktif');
   MSQuery3.SQL.EndUpdate;
   MSQuery3.Params.ParamByName('aktif').Value := '1';
   MSQuery3.Open;



   // sepetteki iki ?r?n de dolu ise uyar? verir.

   if (gly_sepetUrunBir.Images <> nil) AND (gly_sepetUrunIki.Images <> nil) then
   begin
         ShowMessage('Sepete maksimum 2 ?r?n eklenebilir.');
         Abort;

   end;


   if gly_sepetUrunBir.Images = nil then
   begin
       // e?er sepetteki 1. ?r?n k?sm? bo? ise;
       sepet_urunBir.Visible := true;

        if MSQuery3.Fields[1].Text = 'Araba' then
         begin
              // Aktifli?i 1 olan kategori Araba ise kodlar? 1. alanda ?al??t?r.

          gly_sepetUrunBir.Images:= ImageList1;
          gly_sepetUrunBir.ImageIndex := 1;
          lbl_SepetUrunBirAdi.Text := lbl_urunIkiAdi.Text;
          lbl_SepetUrunBirFiyat.Text := lbl_urunIkiFiyat.Text;
          lbl_SepetUrunBirKatAdi.Text := 'Araba';
            ShowMessage('Eklendi.');
            spin_urunBir.Value := 1;


              // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
            MSQuery1.Open;



            txt_urunBirDetail.Text := MSQuery1.Fields[2].AsString;
          end

        else if MSQuery3.Fields[1].Text = 'Elektronik' then
        begin
        //// Aktifli?i 1 olan kategori Elektronik ise kodlar? 1. alanda ?al??t?r.

         gly_sepetUrunBir.Images:= ImageList2;
         gly_sepetUrunBir.ImageIndex := 1;
         lbl_SepetUrunBirAdi.Text := lbl_urunIkiAdi.Text;
         lbl_SepetUrunBirFiyat.Text := lbl_urunIkiFiyat.Text;
         lbl_SepetUrunBirKatAdi.Text := 'Elektronik';
         ShowMessage('Eklendi.');
         spin_urunBir.Value := 1 ;

         // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler

         MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
            MSQuery1.Open;


            txt_urunBirDetail.Text := MSQuery1.Fields[2].AsString;
         end;

   end
   else if gly_sepetUrunBir <> nil then
        begin
        // E?er sepetteki 1. ?r?n alan? bo? de?ilse;
        sepet_urunIki.Visible := true;

        if MSQuery3.Fields[1].Text = 'Araba' then
         begin
              // Aktifli?i 1 olan kategori Araba ise kodlar? 2. alanda ?al??t?r.

          gly_sepetUrunIki.Images:= ImageList1;
          gly_sepetUrunIki.ImageIndex := 1;
          lbl_SepetUrunIkiAdi.Text := lbl_urunIkiAdi.Text;
          lbl_SepetUrunIkiFiyat.Text := lbl_urunIkiFiyat.Text;
          lbl_SepetUrunIkiKatAdi.Text := 'Araba';
          ShowMessage('Eklendi.');
            spin_urunIki.Value := 1 ;


            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
            MSQuery1.Open;

            txt_urunIkiDetail.Text := MSQuery1.Fields[2].AsString;
          end

        else if MSQuery3.Fields[1].Text = 'Elektronik' then
        begin
             // Aktifli?i 1 olan kategori Elektronik ise kodlar? 2. alanda ?al??t?r.

         gly_sepetUrunIki.Images:= ImageList2;
         gly_sepetUrunIki.ImageIndex := 1;
         lbl_SepetUrunIkiAdi.Text := lbl_urunIkiAdi.Text;
         lbl_SepetUrunIkiFiyat.Text := lbl_urunIkiFiyat.Text;
         lbl_SepetUrunIkiKatAdi.Text := 'Elektronik';
         ShowMessage('Eklendi.');
            spin_urunIki.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
            MSQuery1.Open;

            txt_urunIkiDetail.Text := MSQuery1.Fields[2].AsString;
         end;
        end;



end;



procedure TuAna.btn_urunUcDetailClick(Sender: TObject);
begin
        lbl_detailUrunAdi.Text := lbl_urunUcAdi.Text;

   gly_detailPics.Images  := gly_urunUc.Images;
   gly_detailPics.ImageIndex  := gly_urunUc.ImageIndex;

   MSQuery1.Close;
   MSQuery1.SQL.Clear;
   MSQuery1.SQL.BeginUpdate;
   MSQuery1.SQL.Add('SELECT * from urunler WHERE urunAdi=:urunAdi');
   MSQuery1.SQL.EndUpdate;
   MSQuery1.Params.ParamByName('urunAdi').Value := lbl_urunUcAdi.Text;
   MSQuery1.Open;


   txt_detailOzellik.Text := MSQuery1.Fields[2].AsString;


end;

procedure TuAna.btn_urunUcSepetClick(Sender: TObject);
begin

   // Aktif k?sm? 1 olan tabloyu ?a??r?r.

   MSQuery3.Close;
   MSQuery3.SQL.Clear;
   MSQuery3.SQL.BeginUpdate;
   MSQuery3.SQL.Add('SELECT TOP 1 * FROM kategoriler WHERE aktif=:aktif');
   MSQuery3.SQL.EndUpdate;
   MSQuery3.Params.ParamByName('aktif').Value := '1';
   MSQuery3.Open;




   if (gly_sepetUrunBir.Images <> nil) AND (gly_sepetUrunIki.Images <> nil) then
   begin
        // sepetteki iki ?r?n de dolu ise uyar? verir.

         ShowMessage('Sepete maksimum 2 ?r?n eklenebilir.');
         Abort;

   end;


   if gly_sepetUrunBir.Images = nil then
   begin
   // e?er sepetteki 1. ?r?n k?sm? bo? ise;
   sepet_urunBir.Visible := true;

        if MSQuery3.Fields[1].Text = 'Araba' then
         begin

           // Aktifli?i 1 olan kategori Araba ise bu kodlar? ?al??t?r.

          gly_sepetUrunBir.Images:= ImageList1;
          gly_sepetUrunBir.ImageIndex := 2;
          lbl_SepetUrunBirAdi.Text := lbl_urunUcAdi.Text;
          lbl_SepetUrunBirFiyat.Text := lbl_urunUcFiyat.Text;
          lbl_SepetUrunBirKatAdi.Text := 'Araba';
            ShowMessage('Eklendi.');
            spin_urunBir.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
            MSQuery1.Open;


            txt_urunBirDetail.Text := MSQuery1.Fields[2].AsString;
          end

        else if MSQuery3.Fields[1].Text = 'Elektronik' then
        begin

        // Aktifli?i 1 olan kategori Elektronik ise bu kodlar? 1.?r?n alan?nda ?al??t?r.

         gly_sepetUrunBir.Images:= ImageList2;
         gly_sepetUrunBir.ImageIndex := 2;
         lbl_SepetUrunBirAdi.Text := lbl_urunUcAdi.Text;
         lbl_SepetUrunBirFiyat.Text := lbl_urunUcFiyat.Text;
         lbl_SepetUrunBirKatAdi.Text := 'Elektronik';
         ShowMessage('Eklendi.');
         spin_urunBir.Value := 1 ;

         // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
            MSQuery1.Open;

         txt_urunBirDetail.Text := MSQuery1.Fields[2].AsString ;
         end;

   end
   else if gly_sepetUrunBir <> nil then
        begin
             // E?er sepetteki 1. ?r?n alan? bo? de?ilse;
             sepet_urunIki.Visible := true;

        if MSQuery3.Fields[1].Text = 'Araba' then
         begin
          //// Aktifli?i 1 olan kategori Araba ise bu kodlar? 2.?r?n alan?nda ?al??t?r.
          gly_sepetUrunIki.Images:= ImageList1;
          gly_sepetUrunIki.ImageIndex := 2;
          lbl_SepetUrunIkiAdi.Text := lbl_urunUcAdi.Text;
          lbl_SepetUrunIkiFiyat.Text := lbl_urunUcFiyat.Text;
          lbl_SepetUrunIkiKatAdi.Text := 'Araba';
          ShowMessage('Eklendi.');
            spin_urunIki.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
            MSQuery1.Open;


            txt_urunIkiDetail.Text := MSQuery1.Fields[2].AsString ;
          end

        else if MSQuery3.Fields[1].Text = 'Elektronik' then
        begin
             //// Aktifli?i 1 olan kategori Araba ise bu kodlar? 2.?r?n alan?nda ?al??t?r.
         gly_sepetUrunIki.Images:= ImageList2;
         gly_sepetUrunIki.ImageIndex := 2;
         lbl_SepetUrunIkiAdi.Text := lbl_urunUcAdi.Text;
         lbl_SepetUrunIkiFiyat.Text := lbl_urunUcFiyat.Text;
         lbl_SepetUrunIkiKatAdi.Text := 'Elektronik';
         ShowMessage('Eklendi.');
            spin_urunIki.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
            MSQuery1.Open;


            txt_urunIkiDetail.Text := MSQuery1.Fields[2].AsString ;
         end;
        end;






end;

procedure TuAna.Button7Click(Sender: TObject);
begin

     // e?er kullan?c? ?r?nler ekran?nda d?eilse detail panelini a?ma !

     if tabcontrol_Menu.TabIndex = 0 then
     begin

       if panel_Detail.Visible = True then
           begin
               panel_Detail.Visible := False;
           end
           else if panel_Detail.Visible = False then
            begin
                 panel_Detail.Visible := True;
            end;

     end;

end;




procedure TuAna.btn_urunDortDetailClick(Sender: TObject);
begin
        lbl_detailUrunAdi.Text := lbl_urunDortAdi.Text;

   gly_detailPics.Images  := gly_urunDort.Images;
   gly_detailPics.ImageIndex  := gly_urunDort.ImageIndex;

   MSQuery1.Close;
   MSQuery1.SQL.Clear;
   MSQuery1.SQL.BeginUpdate;
   MSQuery1.SQL.Add('SELECT * from urunler WHERE urunAdi=:urunAdi');
   MSQuery1.SQL.EndUpdate;
   MSQuery1.Params.ParamByName('urunAdi').Value := lbl_urunDortAdi.Text;
   MSQuery1.Open;


   txt_detailOzellik.Text := MSQuery1.Fields[2].AsString;


end;

procedure TuAna.btn_urunDortSepetClick(Sender: TObject);
begin
       // Aktif k?sm? 1 olan tabloyu ?a??r?r.

   MSQuery3.Close;
   MSQuery3.SQL.Clear;
   MSQuery3.SQL.BeginUpdate;
   MSQuery3.SQL.Add('SELECT TOP 1 * FROM kategoriler WHERE aktif=:aktif');
   MSQuery3.SQL.EndUpdate;
   MSQuery3.Params.ParamByName('aktif').Value := '1';
   MSQuery3.Open;




   if (gly_sepetUrunBir.Images <> nil) AND (gly_sepetUrunIki.Images <> nil) then
   begin
        // sepetteki iki ?r?n de dolu ise uyar? verir.

         ShowMessage('Sepete maksimum 2 ?r?n eklenebilir.');
         Abort;

   end;


   if gly_sepetUrunBir.Images = nil then
   begin
   // e?er sepetteki 1. ?r?n k?sm? bo? ise;
   sepet_urunBir.Visible := true;

        if MSQuery3.Fields[1].Text = 'Araba' then
         begin

           // Aktifli?i 1 olan kategori Araba ise bu kodlar? ?al??t?r.

          gly_sepetUrunBir.Images:= ImageList1;
          gly_sepetUrunBir.ImageIndex := 3;
          lbl_SepetUrunBirAdi.Text := lbl_urunDortAdi.Text;
          lbl_SepetUrunBirFiyat.Text := lbl_urunDortFiyat.Text;
          lbl_SepetUrunBirKatAdi.Text := 'Araba';
            ShowMessage('Eklendi.');
            spin_urunBir.Value :=  1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
            MSQuery1.Open;


            txt_urunBirDetail.Text := MSQuery1.Fields[2].AsString;
          end

        else if MSQuery3.Fields[1].Text = 'Elektronik' then
        begin

        // Aktifli?i 1 olan kategori Elektronik ise bu kodlar? 1.?r?n alan?nda ?al??t?r.

         gly_sepetUrunBir.Images:= ImageList2;
         gly_sepetUrunBir.ImageIndex := 3;
         lbl_SepetUrunBirAdi.Text := lbl_urunDortAdi.Text;
         lbl_SepetUrunBirFiyat.Text := lbl_urunDortFiyat.Text;
         lbl_SepetUrunBirKatAdi.Text := 'Elektronik';
         ShowMessage('Eklendi.');
         spin_urunBir.Value := 1 ;

         // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
            MSQuery1.Open;

         txt_urunBirDetail.Text := MSQuery1.Fields[2].AsString ;
         end;

   end
   else if gly_sepetUrunBir <> nil then
        begin
             // E?er sepetteki 1. ?r?n alan? bo? de?ilse;
             sepet_urunIki.Visible := true;

        if MSQuery3.Fields[1].Text = 'Araba' then
         begin
          //// Aktifli?i 1 olan kategori Araba ise bu kodlar? 2.?r?n alan?nda ?al??t?r.
          gly_sepetUrunIki.Images:= ImageList1;
          gly_sepetUrunIki.ImageIndex := 3;
          lbl_SepetUrunIkiAdi.Text := lbl_urunDortAdi.Text;
          lbl_SepetUrunIkiFiyat.Text := lbl_urunDortFiyat.Text;
          lbl_SepetUrunIkiKatAdi.Text := 'Araba';
          ShowMessage('Eklendi.');
            spin_urunIki.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
            MSQuery1.Open;


            txt_urunIkiDetail.Text := MSQuery1.Fields[2].AsString ;
          end

        else if MSQuery3.Fields[1].Text = 'Elektronik' then
        begin
             //// Aktifli?i 1 olan kategori Araba ise bu kodlar? 2.?r?n alan?nda ?al??t?r.
         gly_sepetUrunIki.Images:= ImageList2;
         gly_sepetUrunIki.ImageIndex := 3;
         lbl_SepetUrunIkiAdi.Text := lbl_urunDortAdi.Text;
         lbl_SepetUrunIkiFiyat.Text := lbl_urunDortFiyat.Text;
         lbl_SepetUrunIkiKatAdi.Text := 'Elektronik';
         ShowMessage('Eklendi.');
            spin_urunIki.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
            MSQuery1.Open;


            txt_urunIkiDetail.Text := MSQuery1.Fields[2].AsString ;
         end;
        end;





end;

procedure TuAna.btn_urunBesDetailClick(Sender: TObject);
begin
        lbl_detailUrunAdi.Text := lbl_urunBesAdi.Text;

   gly_detailPics.Images  := gly_urunBes.Images;
   gly_detailPics.ImageIndex  := gly_urunBes.ImageIndex;

   MSQuery1.Close;
   MSQuery1.SQL.Clear;
   MSQuery1.SQL.BeginUpdate;
   MSQuery1.SQL.Add('SELECT * from urunler WHERE urunAdi=:urunAdi');
   MSQuery1.SQL.EndUpdate;
   MSQuery1.Params.ParamByName('urunAdi').Value := lbl_urunBesAdi.Text;
   MSQuery1.Open;


   txt_detailOzellik.Text := MSQuery1.Fields[2].AsString;


end;

procedure TuAna.btn_urunBesSepetClick(Sender: TObject);
begin
            // Aktif k?sm? 1 olan tabloyu ?a??r?r.

   MSQuery3.Close;
   MSQuery3.SQL.Clear;
   MSQuery3.SQL.BeginUpdate;
   MSQuery3.SQL.Add('SELECT TOP 1 * FROM kategoriler WHERE aktif=:aktif');
   MSQuery3.SQL.EndUpdate;
   MSQuery3.Params.ParamByName('aktif').Value := '1';
   MSQuery3.Open;




   if (gly_sepetUrunBir.Images <> nil) AND (gly_sepetUrunIki.Images <> nil) then
   begin
        // sepetteki iki ?r?n de dolu ise uyar? verir.

         ShowMessage('Sepete maksimum 2 ?r?n eklenebilir.');
         Abort;

   end;


   if gly_sepetUrunBir.Images = nil then
   begin
   // e?er sepetteki 1. ?r?n k?sm? bo? ise;
   sepet_urunBir.Visible := true;

        if MSQuery3.Fields[1].Text = 'Araba' then
         begin

           // Aktifli?i 1 olan kategori Araba ise bu kodlar? ?al??t?r.

          gly_sepetUrunBir.Images:= ImageList1;
          gly_sepetUrunBir.ImageIndex := 4;
          lbl_SepetUrunBirAdi.Text := lbl_urunBesAdi.Text;
          lbl_SepetUrunBirFiyat.Text := lbl_urunBesFiyat.Text;
          lbl_SepetUrunBirKatAdi.Text := 'Araba';
            ShowMessage('Eklendi.');
            spin_urunBir.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
            MSQuery1.Open;


            txt_urunBirDetail.Text := MSQuery1.Fields[2].AsString;
          end

        else if MSQuery3.Fields[1].Text = 'Elektronik' then
        begin

        // Aktifli?i 1 olan kategori Elektronik ise bu kodlar? 1.?r?n alan?nda ?al??t?r.

         gly_sepetUrunBir.Images:= ImageList2;
         gly_sepetUrunBir.ImageIndex := 4;
         lbl_SepetUrunBirAdi.Text := lbl_urunBesAdi.Text;
         lbl_SepetUrunBirFiyat.Text := lbl_urunBesFiyat.Text;
         lbl_SepetUrunBirKatAdi.Text := 'Elektronik';
         ShowMessage('Eklendi.');
         spin_urunBir.Value := 1 ;

         // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
            MSQuery1.Open;

         txt_urunBirDetail.Text := MSQuery1.Fields[2].AsString ;
         end;

   end
   else if gly_sepetUrunBir <> nil then
        begin
             // E?er sepetteki 1. ?r?n alan? bo? de?ilse;
             sepet_urunIki.Visible := true;

        if MSQuery3.Fields[1].Text = 'Araba' then
         begin
          //// Aktifli?i 1 olan kategori Araba ise bu kodlar? 2.?r?n alan?nda ?al??t?r.
          gly_sepetUrunIki.Images:= ImageList1;
          gly_sepetUrunIki.ImageIndex := 4;
          lbl_SepetUrunIkiAdi.Text := lbl_urunBesAdi.Text;
          lbl_SepetUrunIkiFiyat.Text := lbl_urunBesFiyat.Text;
          lbl_SepetUrunIkiKatAdi.Text := 'Araba';
          ShowMessage('Eklendi.');
            spin_urunIki.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
            MSQuery1.Open;


            txt_urunIkiDetail.Text := MSQuery1.Fields[2].AsString ;
          end

        else if MSQuery3.Fields[1].Text = 'Elektronik' then
        begin
             //// Aktifli?i 1 olan kategori Araba ise bu kodlar? 2.?r?n alan?nda ?al??t?r.
         gly_sepetUrunIki.Images:= ImageList2;
         gly_sepetUrunIki.ImageIndex := 4;
         lbl_SepetUrunIkiAdi.Text := lbl_urunBesAdi.Text;
         lbl_SepetUrunIkiFiyat.Text := lbl_urunBesFiyat.Text;
         lbl_SepetUrunIkiKatAdi.Text := 'Elektronik';
         ShowMessage('Eklendi.');
            spin_urunIki.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
            MSQuery1.Open;


            txt_urunIkiDetail.Text := MSQuery1.Fields[2].AsString ;
         end;
        end;



end;



procedure TuAna.btn_urunAltiDetailClick(Sender: TObject);
begin
        lbl_detailUrunAdi.Text := lbl_urunAltiAdi.Text;

   gly_detailPics.Images  := gly_urunAlti.Images;
   gly_detailPics.ImageIndex  := gly_urunAlti.ImageIndex;

   MSQuery1.Close;
   MSQuery1.SQL.Clear;
   MSQuery1.SQL.BeginUpdate;
   MSQuery1.SQL.Add('SELECT * from urunler WHERE urunAdi=:urunAdi');
   MSQuery1.SQL.EndUpdate;
   MSQuery1.Params.ParamByName('urunAdi').Value := lbl_urunAltiAdi.Text;
   MSQuery1.Open;


   txt_detailOzellik.Text := MSQuery1.Fields[2].AsString;


end;

procedure TuAna.btn_urunAltiSepetClick(Sender: TObject);
begin
                 // Aktif k?sm? 1 olan tabloyu ?a??r?r.

   MSQuery3.Close;
   MSQuery3.SQL.Clear;
   MSQuery3.SQL.BeginUpdate;
   MSQuery3.SQL.Add('SELECT TOP 1 * FROM kategoriler WHERE aktif=:aktif');
   MSQuery3.SQL.EndUpdate;
   MSQuery3.Params.ParamByName('aktif').Value := '1';
   MSQuery3.Open;




   if (gly_sepetUrunBir.Images <> nil) AND (gly_sepetUrunIki.Images <> nil) then
   begin
        // sepetteki iki ?r?n de dolu ise uyar? verir.

         ShowMessage('Sepete maksimum 2 ?r?n eklenebilir.');
         Abort;

   end;


   if gly_sepetUrunBir.Images = nil then
   begin
   // e?er sepetteki 1. ?r?n k?sm? bo? ise;
   sepet_urunBir.Visible := true;

        if MSQuery3.Fields[1].Text = 'Araba' then
         begin

           // Aktifli?i 1 olan kategori Araba ise bu kodlar? ?al??t?r.

          gly_sepetUrunBir.Images:= ImageList1;
          gly_sepetUrunBir.ImageIndex := 5;
          lbl_SepetUrunBirAdi.Text := lbl_urunAltiAdi.Text;
          lbl_SepetUrunBirFiyat.Text := lbl_urunAltiFiyat.Text;
          lbl_SepetUrunBirKatAdi.Text := 'Araba';
            ShowMessage('Eklendi.');
            spin_urunBir.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
            MSQuery1.Open;


            txt_urunBirDetail.Text := MSQuery1.Fields[2].AsString;
          end

        else if MSQuery3.Fields[1].Text = 'Elektronik' then
        begin

        // Aktifli?i 1 olan kategori Elektronik ise bu kodlar? 1.?r?n alan?nda ?al??t?r.

         gly_sepetUrunBir.Images:= ImageList2;
         gly_sepetUrunBir.ImageIndex := 5;
         lbl_SepetUrunBirAdi.Text := lbl_urunAltiAdi.Text;
         lbl_SepetUrunBirFiyat.Text := lbl_urunAltiFiyat.Text;
         lbl_SepetUrunBirKatAdi.Text := 'Elektronik';
         ShowMessage('Eklendi.');
         spin_urunBir.Value := 1 ;

         // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
            MSQuery1.Open;

         txt_urunBirDetail.Text := MSQuery1.Fields[2].AsString ;
         end;

   end
   else if gly_sepetUrunBir <> nil then
        begin
             // E?er sepetteki 1. ?r?n alan? bo? de?ilse;
             sepet_urunIki.Visible := true;

        if MSQuery3.Fields[1].Text = 'Araba' then
         begin
          //// Aktifli?i 1 olan kategori Araba ise bu kodlar? 2.?r?n alan?nda ?al??t?r.
          gly_sepetUrunIki.Images:= ImageList1;
          gly_sepetUrunIki.ImageIndex := 5;
          lbl_SepetUrunIkiAdi.Text := lbl_urunAltiAdi.Text;
          lbl_SepetUrunIkiFiyat.Text := lbl_urunAltiFiyat.Text;
          lbl_SepetUrunIkiKatAdi.Text := 'Araba';
          ShowMessage('Eklendi.');
            spin_urunIki.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
            MSQuery1.Open;


            txt_urunIkiDetail.Text := MSQuery1.Fields[2].AsString ;
          end

        else if MSQuery3.Fields[1].Text = 'Elektronik' then
        begin
             //// Aktifli?i 1 olan kategori Araba ise bu kodlar? 2.?r?n alan?nda ?al??t?r.
         gly_sepetUrunIki.Images:= ImageList2;
         gly_sepetUrunIki.ImageIndex := 5;
         lbl_SepetUrunIkiAdi.Text := lbl_urunAltiAdi.Text;
         lbl_SepetUrunIkiFiyat.Text := lbl_urunAltiFiyat.Text;
         lbl_SepetUrunIkiKatAdi.Text := 'Elektronik';
         ShowMessage('Eklendi.');
            spin_urunIki.Value := 1 ;

            // Query1'i sepete eklenen ?r?n?n kategori ve ad?na g?re filtreler
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunKategori=:urunKategori AND urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunKategori').Value := MSQuery3.Fields[1].Text;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
            MSQuery1.Open;


            txt_urunIkiDetail.Text := MSQuery1.Fields[2].AsString ;
         end;
        end;


end;


 // G?R?S VE KAYIT ???N KULLANILACAK KODLAR ###


procedure TuAna.btn_hesapAltCikisClick(Sender: TObject);
begin
         MSQuery4.Close;
         MSQuery4.SQL.Clear;
         MSQuery4.SQL.BeginUpdate;
         MSQuery4.SQL.Add('UPDATE kullanicilar SET aktif=0');
         MSQuery4.SQL.EndUpdate;
         MSQuery4.Execute;

         aktifKullanici := '';
         Close;
end;

procedure TuAna.btn_hesapAltGirisClick(Sender: TObject);
begin
 // Giris tusu


      if (edit_hesapOrtaNickname.Text<>'') AND (edit_hesapOrtaPassword.Text<>'') then
      begin
           // E?er nickname ve password bo? de?ilse; Query4'? yaz?lan nickname ve password'a g?re filtrele
       MSQuery4.Close;
       MSQuery4.SQL.Clear;
       MSQuery4.SQL.BeginUpdate;
       MSQuery4.SQL.Add('SELECT TOP 1 * FROM kullanicilar WHERE kullaniciAdi=:kullaniciAdi AND sifre=:sifre');
       MSQuery4.SQL.EndUpdate;
       MSQuery4.Params.ParamByName('kullaniciAdi').Value := edit_hesapOrtaNickname.Text;
       MSQuery4.Params.ParamByName('sifre').Value := edit_hesapOrtaPassword.Text;
       MSQuery4.Open;


    if (MSQuery4.Fields[0].AsString <> edit_hesapOrtaNickname.Text) AND (MSQuery4.Fields[1].AsString <> edit_hesapOrtaPassword.Text) then
    begin
         // E?er veritaban?ndaki kullan?c? ad? ve ?ifre birbirine uymuyorsa hata ver.
      ShowMessage('KULLANICI ADI VEYA SIFRE YANLIS !');
    end
    else
    begin
         // E?er giri? yap?ld?ysa ;
         sepet_AltPanel.Visible := true;
         btn_hesapAltGiris.Visible := false;
         btn_hesapAltKayit.Visible := false;

         MSQuery4.Close;
         MSQuery4.SQL.Clear;
         MSQuery4.SQL.BeginUpdate;
         MSQuery4.SQL.Add('UPDATE kullanicilar SET aktif=1 WHERE kullaniciAdi=:kullaniciAdi');
         MSQuery4.SQL.Add('UPDATE kullanicilar SET aktif=0 WHERE kullaniciAdi !=:kullaniciAdi');
         MSQuery4.SQL.EndUpdate;
         MSQuery4.Params.ParamByName('kullaniciAdi').Value := edit_hesapOrtaNickname.Text;
         MSQuery4.Execute;
         ShowMessage('Giris yapildi. ' + 'Ho?geldin ' + edit_hesapOrtaNickname.Text);
         tabcontrol_Menu.TabIndex := 2;
         btn_urunlerGiris.Visible := False;
         aktifKullanici := edit_hesapOrtaNickname.Text;



       try

       MSQuery5.Close;
       MSQuery5.SQL.Clear;
       MSQuery5.SQL.BeginUpdate;
       MSQuery5.SQL.Add('SELECT TOP 2 * FROM sepet WHERE kullaniciAdi=:kullaniciAdi');
       MSQuery5.SQL.EndUpdate;
       MSQuery5.Params.ParamByName('kullaniciAdi').Value := edit_hesapOrtaNickname.Text;
       MSQuery5.Open;

       except

       end;

       // E?er kullan?c?ya ait iki kay?t varsa ;

       if MSQuery5.RecordCount = 2 then
       begin
           // 1. sepet alan? kodlar?
       MSQuery5.Close;
       MSQuery5.SQL.Clear;
       MSQuery5.SQL.BeginUpdate;
       MSQuery5.SQL.Add('SELECT TOP 1 * FROM sepet WHERE kullaniciAdi=:kullaniciAdi AND urunAlani=1');
       MSQuery5.SQL.EndUpdate;
       MSQuery5.Params.ParamByName('kullaniciAdi').Value := edit_hesapOrtaNickname.Text;
       MSQuery5.Open;

           sepet_urunBir.Visible := true;
           gly_sepetUrunBir.ImageIndex := MSQuery5.Fields[5].AsInteger;
           lbl_SepetUrunBirAdi.Text := MSQuery5.Fields[0].AsString;
           lbl_SepetUrunBirFiyat.Text := MSQuery5.Fields[3].AsString;
           spin_urunBir.Value := MSQuery5.Fields[2].AsInteger;
           txt_urunBirDetail.Text := MSQuery5.Fields[8].AsString;
           lbl_SepetUrunBirKatAdi.Text := MSQuery5.Fields[7].AsString;

           if MSQuery5.Fields[7].AsString = 'Araba' then
           begin
             gly_sepetUrunBir.Images := ImageList1;
           end
           else if MSQuery5.Fields[7].AsString = 'Elektronik' then
               begin
                    gly_sepetUrunBir.Images := ImageList2;
               end;


               // toplam fiyat kodlar?


               MSQuery1.Close;
               MSQuery1.SQL.Clear;
               MSQuery1.SQL.BeginUpdate;
               MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunAdi=:urunAdi');
               MSQuery1.SQL.EndUpdate;
               MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
               MSQuery1.Open;

               sepetUrunBirFiyat := MSQuery1.Fields[3].AsInteger * spin_urunBir.Text.ToInteger;
               lbl_sepetToplamFiyat.Text := IntToStr(sepetUrunBirFiyat + sepetUrunIkiFiyat);





           // 2. sepet alan? kodlar?
           try



           sepet_urunIki.Visible := true;
           MSQuery5.Close;
           MSQuery5.SQL.Clear;
           MSQuery5.SQL.BeginUpdate;
           MSQuery5.SQL.Add('SELECT TOP 1 * FROM sepet WHERE kullaniciAdi=:kullaniciAdi AND urunAlani=2');
           MSQuery5.SQL.EndUpdate;
           MSQuery5.Params.ParamByName('kullaniciAdi').Value := edit_hesapOrtaNickname.Text;
           MSQuery5.Open;

           except

           end;

           gly_sepetUrunIki.ImageIndex := MSQuery5.Fields[5].AsInteger;
           lbl_SepetUrunIkiAdi.Text := MSQuery5.Fields[0].AsString;
           lbl_SepetUrunIkiFiyat.Text := MSQuery5.Fields[3].AsString;
           spin_urunIki.Value := MSQuery5.Fields[2].AsInteger;
           txt_urunIkiDetail.Text := MSQuery5.Fields[8].AsString;
           lbl_SepetUrunIkiKatAdi.Text := MSQuery5.Fields[7].AsString;

           if MSQuery5.Fields[7].AsString = 'Araba' then
           begin
             gly_sepetUrunIki.Images := ImageList1;
           end
           else if MSQuery5.Fields[7].AsString = 'Elektronik' then
               begin
                    gly_sepetUrunIki.Images := ImageList2;
               end;



               // toplam fiyat kodlar?


               MSQuery1.Close;
               MSQuery1.SQL.Clear;
               MSQuery1.SQL.BeginUpdate;
               MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunAdi=:urunAdi');
               MSQuery1.SQL.EndUpdate;
               MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
               MSQuery1.Open;

               sepetUrunIkiFiyat := MSQuery1.Fields[3].AsInteger * spin_urunIki.Text.ToInteger;
               lbl_sepetToplamFiyat.Text := IntToStr(sepetUrunBirFiyat + sepetUrunIkiFiyat);


       end
       else if MSQuery5.RecordCount = 1 then
            begin

              MSQuery5.Close;
              MSQuery5.SQL.Clear;
              MSQuery5.SQL.BeginUpdate;
              MSQuery5.SQL.Add('SELECT TOP 1 * FROM sepet WHERE kullaniciAdi=:kullaniciAdi');
              MSQuery5.SQL.EndUpdate;
              MSQuery5.Params.ParamByName('kullaniciAdi').Value := edit_hesapOrtaNickname.Text;
              MSQuery5.Open;

              if MSQuery5.Fields[6].Value = 1 then
              begin
                  sepet_urunBir.Visible := true;
                  gly_sepetUrunBir.ImageIndex := MSQuery5.Fields[5].AsInteger;
                  lbl_SepetUrunBirAdi.Text := MSQuery5.Fields[0].AsString;
                  lbl_SepetUrunBirFiyat.Text := MSQuery5.Fields[3].AsString;
                  spin_urunBir.Value := MSQuery5.Fields[2].AsInteger;
                  txt_urunBirDetail.Text := MSQuery5.Fields[8].AsString;
                  lbl_SepetUrunBirKatAdi.Text := MSQuery5.Fields[7].AsString;

                 if MSQuery5.Fields[7].AsString = 'Araba' then
                 begin
                   gly_sepetUrunBir.Images := ImageList1;
                 end

                 else if MSQuery5.Fields[7].AsString = 'Elektronik' then
                     begin
                          gly_sepetUrunBir.Images := ImageList2;
                     end;
                    end;


               // toplam fiyat kodlar?


               MSQuery1.Close;
               MSQuery1.SQL.Clear;
               MSQuery1.SQL.BeginUpdate;
               MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunAdi=:urunAdi');
               MSQuery1.SQL.EndUpdate;
               MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
               MSQuery1.Open;

               sepetUrunBirFiyat := MSQuery1.Fields[3].AsInteger * spin_urunBir.Text.ToInteger;
               lbl_sepetToplamFiyat.Text := IntToStr(sepetUrunBirFiyat + sepetUrunIkiFiyat);


            end
            else if MSQuery5.Fields[6].Value = 2 then
                 begin
                  gly_sepetUrunIki.ImageIndex := MSQuery5.Fields[5].AsInteger;
                  lbl_SepetUrunIkiAdi.Text := MSQuery5.Fields[0].AsString;
                  lbl_SepetUrunIkiFiyat.Text := MSQuery5.Fields[3].AsString;
                  spin_urunIki.Value := MSQuery5.Fields[2].AsInteger;
                  txt_urunIkiDetail.Text := MSQuery5.Fields[8].AsString;
                  lbl_SepetUrunIkiKatAdi.Text := MSQuery5.Fields[7].AsString;

                   if MSQuery5.Fields[7].AsString = 'Araba' then
                   begin
                     gly_sepetUrunIki.Images := ImageList1;
                   end
                   else if MSQuery5.Fields[7].AsString = 'Elektronik' then
                       begin
                            gly_sepetUrunIki.Images := ImageList2;
                       end;
                                // toplam fiyat kodlar?


                                MSQuery1.Close;
                                MSQuery1.SQL.Clear;
                                MSQuery1.SQL.BeginUpdate;
                                MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunAdi=:urunAdi');
                                MSQuery1.SQL.EndUpdate;
                                MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
                                MSQuery1.Open;

                                sepetUrunIkiFiyat := MSQuery1.Fields[3].AsInteger * spin_urunIki.Text.ToInteger;
                                lbl_sepetToplamFiyat.Text := IntToStr(sepetUrunBirFiyat + sepetUrunIkiFiyat);



                 end;












    end;
    
    
  end
  else
  begin
       // E?er kullan?c? ad? ve ?ifre alan? bo? ise;
    ShowMessage('L?tfen kullan?c? ad? / sifre alan?n? bo? b?rakmay?n?z.');
  end;
    


end;


procedure TuAna.btn_hesapAltKayitClick(Sender: TObject);
begin
    // KAYIT TUSU

     if (edit_hesapOrtaNickname.Text<>'') AND (edit_hesapOrtaPassword.Text<>'') then
     begin
       // E?er kullan?c? ad? ve sifre alan? bos de?ilse ;

       MSQuery4.Close;
       MSQuery4.SQL.Clear;
       MSQuery4.SQL.BeginUpdate;
       MSQuery4.SQL.Add('SELECT TOP 1 * FROM kullanicilar WHERE kullaniciAdi=:kullaniciAdi AND sifre=:sifre');
       MSQuery4.SQL.EndUpdate;
       MSQuery4.Params.ParamByName('kullaniciAdi').Value := edit_hesapOrtaNickname.Text;
       MSQuery4.Params.ParamByName('sifre').Value := edit_hesapOrtaPassword.Text;
       MSQuery4.Open;
       
        if (MSQuery4.Fields[0].AsString <> edit_hesapOrtaNickname.Text) AND (MSQuery4.Fields[1].AsString <> edit_hesapOrtaPassword.Text) then
    begin
         // E?er veritaban?nda b?yle bir kay?t yoksa ?al??t?r;
       MSQuery4.Close;
         MSQuery4.SQL.Clear;
         MSQuery4.SQL.BeginUpdate;
         MSQuery4.SQL.Add('INSERT INTO kullanicilar (kullaniciAdi,sifre,aktif) VALUES (:kullaniciAdi,:sifre,:aktif)');
         MSQuery4.SQL.EndUpdate;
         MSQuery4.Params.ParamByName('kullaniciAdi').Value := edit_hesapOrtaNickname.Text;
         MSQuery4.Params.ParamByName('sifre').Value := edit_hesapOrtaPassword.Text;
         MSQuery4.Params.ParamByName('aktif').Value := 0;
         MSQuery4.Execute;
         ShowMessage('Kay?t Ba?ar?l? ' + edit_hesapOrtaNickname.Text + ' L?tfen Giris Yap?n?z');
    end
    else
    begin
    // E?er kullan?c? varsa hata ver;
    ShowMessage('KULLANICI ADI VEYA SIFRE HATALI !');

    end;
     end
     else
     begin

     end;


end;







procedure TuAna.btn_sepetSilClick(Sender: TObject);
begin
        MSQuery5.Close;
        MSQuery5.SQL.Clear;
        MSQuery5.SQL.BeginUpdate;
        MSQuery5.SQL.Add('DELETE FROM sepet WHERE kullaniciAdi=:kullaniciAdi');
        MSQuery5.SQL.EndUpdate;
        MSQuery5.Params.ParamByName('kullaniciAdi').Value := edit_hesapOrtaNickname.Text;
        MSQuery5.Execute;

        sepet_urunBir.Visible := false;
        sepet_urunIki.Visible := false;
        gly_sepetUrunBir.Images := nil;
        gly_sepetUrunIki.Images := nil;
        sepetUrunBirFiyat := 0;
        sepetUrunIkiFiyat := 0;
        lbl_sepetToplamFiyat.Text := '0';
end;

procedure TuAna.btn_sepetTamamlaClick(Sender: TObject);
begin

     // Sepette iki ?r?n varsa;
     if (gly_sepetUrunBir.Images <> nil) AND (gly_sepetUrunIki.Images <> nil) then
     begin
        ShowMessage('ikisi de dolu');

        MSQuery5.Close;
        MSQuery5.SQL.Clear;
        MSQuery5.SQL.BeginUpdate;
        MSQuery5.SQL.Add('INSERT INTO sepet (urunAdi,kullaniciAdi,adet,imageList,imageIndex,fiyat,urunAlani,urunKategori,urunOzellik) VALUES (:urunAdi,:kullaniciAdi,:adet,:imageList,:imageIndex,:fiyat,:urunAlani,:urunKategori,:urunOzellik)');
        MSQuery5.SQL.EndUpdate;
        MSQuery5.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
        MSQuery5.Params.ParamByName('kullaniciAdi').Value := aktifKullanici;
        MSQuery5.Params.ParamByName('adet').Value := spin_urunBir.Value;
        MSQuery5.Params.ParamByName('imageList').Value := gly_sepetUrunBir.Images.Name;
        MSQuery5.Params.ParamByName('imageIndex').Value := gly_sepetUrunBir.ImageIndex;
        MSQuery5.Params.ParamByName('fiyat').Value := lbl_SepetUrunBirFiyat.Text.ToInteger;
        MSQuery5.Params.ParamByName('urunKategori').Value := lbl_SepetUrunBirKatAdi.Text;
        MSQuery5.Params.ParamByName('urunOzellik').Value := txt_urunBirDetail.Text;
        MSQuery5.Params.ParamByName('urunAlani').Value := 1;
        MSQuery5.Execute;


        MSQuery5.Close;
        MSQuery5.SQL.Clear;
        MSQuery5.SQL.BeginUpdate;
        MSQuery5.SQL.Add('INSERT INTO sepet (urunAdi,kullaniciAdi,adet,imageList,imageIndex,fiyat,urunAlani,urunKategori,urunOzellik) VALUES (:urunAdi,:kullaniciAdi,:adet,:imageList,:imageIndex,:fiyat,:urunAlani,:urunKategori,:urunOzellik)');
        MSQuery5.SQL.EndUpdate;
        MSQuery5.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
        MSQuery5.Params.ParamByName('kullaniciAdi').Value := aktifKullanici;
        MSQuery5.Params.ParamByName('adet').Value := spin_urunIki.Value;
        MSQuery5.Params.ParamByName('imageList').Value := gly_sepetUrunIki.Images.Name;
        MSQuery5.Params.ParamByName('imageIndex').Value := gly_sepetUrunIki.ImageIndex;
        MSQuery5.Params.ParamByName('fiyat').Value := lbl_SepetUrunIkiFiyat.Text.ToInteger;
        MSQuery5.Params.ParamByName('urunKategori').Value := lbl_SepetUrunIkiKatAdi.Text;
        MSQuery5.Params.ParamByName('urunOzellik').Value := txt_urunIkiDetail.Text;
        MSQuery5.Params.ParamByName('urunAlani').Value := 2;
        MSQuery5.Execute;



     end;
       // Sepetteki yaln?zca 1. ?r?n alan? doluysa;
       if (gly_sepetUrunBir.Images <> nil ) AND (gly_sepetUrunIki.Images = nil) then
            begin
                ShowMessage('Bir dolu iki bo?');

                MSQuery5.Close;
                MSQuery5.SQL.Clear;
                MSQuery5.SQL.BeginUpdate;
                MSQuery5.SQL.Add('INSERT INTO sepet (urunAdi,kullaniciAdi,adet,imageList,imageIndex,fiyat,urunAlani,urunKategori,urunOzellik) VALUES (:urunAdi,:kullaniciAdi,:adet,:imageList,:imageIndex,:fiyat,:urunAlani,:urunKategori,:urunOzellik)');
                MSQuery5.SQL.EndUpdate;
                MSQuery5.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
                MSQuery5.Params.ParamByName('kullaniciAdi').Value := aktifKullanici;
                MSQuery5.Params.ParamByName('adet').Value := spin_urunBir.Value;
                MSQuery5.Params.ParamByName('imageList').Value := gly_sepetUrunBir.Images.Name;
                MSQuery5.Params.ParamByName('imageIndex').Value := gly_sepetUrunBir.ImageIndex;
                MSQuery5.Params.ParamByName('fiyat').Value := lbl_SepetUrunBirFiyat.Text.ToInteger;
                MSQuery5.Params.ParamByName('urunKategori').Value := lbl_SepetUrunBirKatAdi.Text;
                MSQuery5.Params.ParamByName('urunOzellik').Value := txt_urunBirDetail.Text;
                MSQuery5.Params.ParamByName('urunAlani').Value := 1;
                MSQuery5.Execute;

            end;
         // Sepetteki yaln?zca 2. ?r?n alan? doluysa;
         if (gly_sepetUrunBir.Images = nil ) AND (gly_sepetUrunIki.Images <> nil) then
                begin
                    ShowMessage('Bir Bo? ?ki Dolu');

                    MSQuery5.Close;
                    MSQuery5.SQL.Clear;
                    MSQuery5.SQL.BeginUpdate;
                    MSQuery5.SQL.Add('INSERT INTO sepet (urunAdi,kullaniciAdi,adet,imageList,imageIndex,fiyat,urunAlani,urunKategori,urunOzellik) VALUES (:urunAdi,:kullaniciAdi,:adet,:imageList,:imageIndex,:fiyat,:urunAlani,:urunKategori,:urunOzellik)');
                    MSQuery5.SQL.EndUpdate;
                    MSQuery5.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
                    MSQuery5.Params.ParamByName('kullaniciAdi').Value := aktifKullanici;
                    MSQuery5.Params.ParamByName('adet').Value := spin_urunIki.Value;
                    MSQuery5.Params.ParamByName('imageList').Value := gly_sepetUrunIki.Images.Name;
                    MSQuery5.Params.ParamByName('imageIndex').Value := gly_sepetUrunIki.ImageIndex;
                    MSQuery5.Params.ParamByName('fiyat').Value := lbl_SepetUrunIkiFiyat.Text.ToInteger;
                    MSQuery5.Params.ParamByName('urunKategori').Value := lbl_SepetUrunIkiKatAdi.Text;
                    MSQuery5.Params.ParamByName('urunOzellik').Value := txt_urunIkiDetail.Text;
                    MSQuery5.Params.ParamByName('urunAlani').Value := 2;
                    MSQuery5.Execute;


                end;
           // Sepet bo?sa ;
           if (gly_sepetUrunBir.Images = nil) AND (gly_sepetUrunIki = nil) then
                   begin
                        ShowMessage('Sepetinde ?r?n yok !');
                   end;

end;

procedure TuAna.FormClose(Sender: TObject; var Action: TCloseAction);
begin

     // Uygulama kapan?rken aktif olan kategoriyi 0 yapma.

     MSQuery3.Close;
     MSQuery3.SQL.Clear;
     MSQuery3.SQL.BeginUpdate;
     MSQuery3.SQL.Add('UPDATE kategoriler SET aktif=0 WHERE kategoriAdi =:kategoriAdi');
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
end;

procedure TuAna.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  tabcontrol_Menu.ActiveTab := tabUrunler;

  MSQuery4.Close;
  MSQuery4.SQL.Clear;
  MSQuery4.SQL.BeginUpdate;
  MSQuery4.SQL.Add('SELECT * FROM kullanicilar WHERE aktif=1');
  MSQuery4.SQL.EndUpdate;
  MSQuery4.Open;

  //ShowMessage(MSQuery4.Fields[0].AsString);
  aktifKullanici := MSQuery4.Fields[0].AsString;


  if (gly_sepetUrunBir.Images = nil) AND (gly_sepetUrunIki.Images = nil) then
  begin
  sepetUrunBirFiyat := 0;
  sepetUrunIkiFiyat := 0;
  end
  else if (gly_sepetUrunBir.Images <> nil) AND (gly_sepetUrunIki.Images = nil) then
       begin
            sepetUrunIkiFiyat := 0;
       end
       else if  (gly_sepetUrunBir.Images = nil) AND (gly_sepetUrunIki.Images <> nil) then
            begin
                 sepetUrunBirFiyat := 0;
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

procedure TuAna.img_SideMenuClick(Sender: TObject);
begin

end;

// KATEGOR? CL?CK EVENTLER?  ###


    // Elektronik kategorisi

procedure TuAna.kategoriBirClick(Sender: TObject);
begin
     if btn_urunlerGiris.Visible = False then
     begin
       // E?er giri? yap?lm??sa urunlerin image k?s?mlar?n? doldur.
     
     
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

     



// URUNLERDEK? B?LG?LER? DOLDURMAK ???N SQLDEN VER? ?EKMEK ###


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




      // T?klanan kategori aktifli?ini 1 yap, kalanlar?n? 0 yap.

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


     // Querydeki kay?tlar kadar ?r?n? listelemek i?in;

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


  // Querydeki kay?t say?s?na g?re urunlerin Visible ?zelli?ini de?i?tir.
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



end;




    // araba kategorisi
procedure TuAna.kategoriIkiClick(Sender: TObject);
begin
     if btn_urunlerGiris.Visible = False then
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




  // URUNLERDEK? B?LG?LER? DOLDURMAK ???N SQLDEN VER? ?EKMEK ###


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


           // Querydeki kay?tlar kadar ?r?n? listelemek i?in;

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
end;

    // yaz kategorisi
procedure TuAna.kategoriUcClick(Sender: TObject);
begin
     if btn_urunlerGiris.Visible = False then
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
end;

// Ev kategorisi
procedure TuAna.kategoriDortClick(Sender: TObject);
begin

     if btn_urunlerGiris.Visible = False then
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
end;
 
    // Ayakkabi kategorisi
procedure TuAna.kategoriBesClick(Sender: TObject);
begin

     if btn_urunlerGiris.Visible = False then
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
end;
    // Giyim kategorisi
procedure TuAna.kategoriAltiClick(Sender: TObject);
begin

     if btn_urunlerGiris.Visible = False then
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
     
     

end;




 procedure TuAna.Scr_urunlerClick(Sender: TObject);
begin

//   URUN ?ZER?NDEK? BUTONLARIN G?ZLENMES? ???N;

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



procedure TuAna.spin_urunBirChange(Sender: TObject);
begin
     if gly_sepetUrunBir.Images <> nil then
     begin
          MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunBirAdi.Text;
            MSQuery1.Open;

            sepetUrunBirFiyat := MSQuery1.Fields[3].AsInteger * spin_urunBir.Text.ToInteger;
            lbl_sepetToplamFiyat.Text := IntToStr(sepetUrunBirFiyat + sepetUrunIkiFiyat);

     end;


     if spin_urunBir.Value = 0 then
     begin
          // E?er sipari? edilecek ?r?n say?s? 0 a d??erse sipari?i yoket.
          ShowMessage('?r?n siliniyor..');
         gly_sepetUrunBir.Images := nil;
         lbl_SepetUrunBirAdi.Text := '';
         txt_urunBirDetail.Text := '';
         sepet_urunBir.Visible := false;
         sepetUrunBirFiyat := 0;
     end;

end;

procedure TuAna.spin_urunIkiChange(Sender: TObject);
begin
     if gly_sepetUrunIki.Images <> nil then
     begin
            MSQuery1.Close;
            MSQuery1.SQL.Clear;
            MSQuery1.SQL.BeginUpdate;
            MSQuery1.SQL.Add('SELECT TOP 1 * FROM urunler WHERE urunAdi=:urunAdi');
            MSQuery1.SQL.EndUpdate;
            MSQuery1.Params.ParamByName('urunAdi').Value := lbl_SepetUrunIkiAdi.Text;
            MSQuery1.Open;

            sepetUrunIkiFiyat := MSQuery1.Fields[3].AsInteger * spin_urunIki.Text.ToInteger;
            lbl_sepetToplamFiyat.Text := IntToStr(sepetUrunBirFiyat + sepetUrunIkiFiyat);
     end;


     if spin_urunIki.Value = 0 then
     begin
          // E?er sipari? edilecek ?r?n say?s? 0 a d??erse sipari?i yoket.
          ShowMessage('?r?n siliniyor..');
         gly_sepetUrunIki.Images := nil;
         lbl_SepetUrunIkiAdi.Text := '';
         txt_urunIkiDetail.Text := '';
         sepet_urunIki.Visible := false;
         sepetUrunIkiFiyat := 0;
     end;
end;




// URUN CLICK EVENTLER?  ###

// URUNLER ?ZER?NDEK? BUTONLARI G?R?N?R HALE GET?RMEK ???N

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
