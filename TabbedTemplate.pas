unit TabbedTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Gestures, FMX.Controls.Presentation, FMX.Objects,
  FMX.MultiView, FMX.ImgList, FMX.Layouts, FMX.Effects;

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
    Label1: TLabel;
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
    Image1: TImage;
    Image2: TImage;
    lo_urunBirAlt: TLayout;
    Label7: TLabel;
    lo_urunIkiAlt: TLayout;
    Button3: TButton;
    Image3: TImage;
    Button4: TButton;
    Image4: TImage;
    Label2: TLabel;
    lo_urunIkiOrta: TLayout;
    Label8: TLabel;
    lo_urunUcAlt: TLayout;
    Button5: TButton;
    Image5: TImage;
    Button6: TButton;
    Image6: TImage;
    Label3: TLabel;
    lo_urunUcOrta: TLayout;
    Label9: TLabel;
    lo_urunDortAlt: TLayout;
    Button7: TButton;
    Image7: TImage;
    Button8: TButton;
    Image8: TImage;
    Label4: TLabel;
    lo_urunDortOrta: TLayout;
    Label10: TLabel;
    lo_urunBesAlt: TLayout;
    Button9: TButton;
    Image9: TImage;
    Button10: TButton;
    Image10: TImage;
    Label5: TLabel;
    lo_urunBesOrta: TLayout;
    Label11: TLabel;
    lo_urunAltiAlt: TLayout;
    Button1: TButton;
    Image11: TImage;
    Button2: TButton;
    Image12: TImage;
    Label6: TLabel;
    lo_urunAltiOrta: TLayout;
    Label12: TLabel;
    Glyph2: TGlyph;
    procedure FormCreate(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uAna: TuAna;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}

procedure TuAna.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
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

end.
