unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  BaseForm, FMX.Menus, System.ImageList, FMX.ImgList, FMX.Controls.Presentation,
  FMX.TabControl, FMX.Objects, FMX.Styles.Objects, FMX.Styles, FMX.MultiView,
  FMX.Layouts, Data.Bind.Controls, Fmx.Bind.Navigator, FMX.TMSBaseControl,
  FMX.TMSTreeViewBase, FMX.TMSTreeViewData, FMX.TMSCustomTreeView,
  FMX.TMSTreeView, FMX.TMSToolBar, FMX.TMSGridCell, FMX.TMSGridOptions,
  FMX.TMSGridData, FMX.TMSCustomGrid, FMX.TMSGrid, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, FMX.TMSGridDataBinding, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Data.DB, DBAccess, Uni, MemDS;

type
  TfrmMain = class(TfrmBase)
    ilMain: TImageList;
    sbMain: TStatusBar;
    lblInfo: TLabel;
    lblBookCount: TLabel;
    lblDBStatus: TLabel;
    lMain: TLayout;
    tbMain: TToolBar;
    btnMenu: TSpeedButton;
    btnSearch: TSpeedButton;
    mvMain: TMultiView;
    recMenuTop: TRectangle;
    vsbMenu: TVertScrollBox;
    recRefreshMenuItem: TRectangle;
    imgRefreshMenuItem: TImage;
    lblRefreshMenuItem: TLabel;
    recMenuPrincipal: TRectangle;
    recStyleMenuItem: TRectangle;
    imgStyleMenuItem: TImage;
    lblStyleMenuItem: TLabel;
    linSeparator: TLine;
    recExitMenuItem: TRectangle;
    imgExitMenuItem: TImage;
    lblExitMenuItem: TLabel;
    cirLogin: TCircle;
    lblLoginName: TLabel;
    recTopToolbar: TRectangle;
    tbcMain: TTabControl;
    tbiMainView: TTabItem;
    tbiSQLMon: TTabItem;
    recSQLMonMenuItem: TRectangle;
    imgSQLMonMenuItem: TImage;
    lblSQLMonMenuItem: TLabel;
    lMainView: TLayout;
    pnlCategory: TPanel;
    splMainView: TSplitter;
    pnlBook: TPanel;
    tbrCategory: TTMSFMXToolBar;
    btnAddCategory: TTMSFMXToolBarButton;
    tvCategory: TTMSFMXTreeView;
    btnEditCategory: TTMSFMXToolBarButton;
    btnDelCategory: TTMSFMXToolBarButton;
    btnRefreshCategory: TTMSFMXToolBarButton;
    TMSFMXToolBar1: TTMSFMXToolBar;
    TMSFMXToolBarButton1: TTMSFMXToolBarButton;
    TMSFMXToolBarButton2: TTMSFMXToolBarButton;
    TMSFMXToolBarButton3: TTMSFMXToolBarButton;
    TMSFMXToolBarButton4: TTMSFMXToolBarButton;
    TMSFMXGrid1: TTMSFMXGrid;
    conn: TUniConnection;
    qryCategory: TUniQuery;
    dsCategory: TUniDataSource;
    bsCategory: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure miStyleClick(Sender: TObject);
    procedure recExitMenuItemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.miStyleClick(Sender: TObject);
var
  Style: TFmxObject;
begin
  // Изменение стиля
  with TOpenDialog.Create(Owner) do begin
    Filter := '*.style';
    FilterIndex := 0;
    if Execute then begin
      TStyleManager.SetStyleFromFile(FileName);
    end;
  end;
end;

procedure TfrmMain.recExitMenuItemClick(Sender: TObject);
begin
  Close;
end;

end.
