unit Unitprinc;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Layouts,
  FMX.ListBox,
  FMX.StdCtrls,
  FMX.Ani,
  FMX.Objects,
  FMX.Edit,
  FMX.TabControl,
  FMX.Effects,
  FMX.Controls.Presentation,
  FMX.Filter.Effects,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.Comp.UI,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  untclient,
  Skia.FMX,
  FMX.WebBrowser,
  FMX.Media,
  IdBaseComponent,
  IdComponent,
  IdTCPConnection,
  IdTCPClient,
  IdHTTP,
  FMX.Memo.Types,
  FMX.ScrollBox,
  FMX.Memo,
  REST.Types,
  REST.Client,
  Data.Bind.Components,
  Data.Bind.ObjectScope,
  untcard_prod,
  System.Generics.Collections,
  untcardpedido;

type
  TForm2= class(TForm)
    Layout1:TLayout;
    Layout2:TLayout;
    Label1:TLabel;
    ShadowEffect1:TShadowEffect;
    Layout3:TLayout;
    FlowLayout1:TFlowLayout;
    Layout4:TLayout;
    Layout5:TLayout;
    Image2:TImage;
    TabControl1:TTabControl;
    TabItem1:TTabItem;
    Layout6:TLayout;
    Layout7:TLayout;
    Label2:TLabel;
    lay_name:TLayout;
    Rectangle7:TRectangle;
    edtname:TEdit;
    Line1:TLine;
    Layout8:TLayout;
    Rectangle3:TRectangle;
    edtcel:TEdit;
    Line2:TLine;
    Layout9:TLayout;
    tablist_client:TTabItem;
    Layout10:TLayout;
    Label3:TLabel;
    Rectangle1:TRectangle;
    Rectangle2:TRectangle;
    StyleBook1:TStyleBook;
    FillRGBEffect1:TFillRGBEffect;
    Layout11:TLayout;
    Layout12:TLayout;
    Image1:TImage;
    FillRGBEffect2:TFillRGBEffect;
    FDConnection1:TFDConnection;
    FDGUIxWaitCursor1:TFDGUIxWaitCursor;
    FDQuery1:TFDQuery;
    FDPhysSQLiteDriverLink1:TFDPhysSQLiteDriverLink;
    Layout13:TLayout;
    SpeedButton1:TSpeedButton;
    Layout14:TLayout;
    tbinewped:TTabItem;
    Layout15:TLayout;
    Layout16:TLayout;
    VertScrollBox1:TVertScrollBox;
    SkLabel1:TSkLabel;
    Label4:TLabel;
    edtcod:TEdit;
    Rectangle4:TRectangle;
    Rectangle5:TRectangle;
    edtdescricao:TEdit;
    Label6:TLabel;
    tbipedclient:TTabItem;
    Layout18:TLayout;
    Layout19:TLayout;
    Layout20:TLayout;
    Layout21:TLayout;
    Image3:TImage;
    Layout22:TLayout;
    Circle1:TCircle;
    Labcountprod:TLabel;
    Layout23:TLayout;
    Layout17:TLayout;
    Image4:TImage;
    Image5:TImage;
    MediaPlayer1:TMediaPlayer;
    PathAnimation1:TPathAnimation;
    FloatAnimation1:TFloatAnimation;
    Layout24:TLayout;
    Label7:TLabel;
    Labcart_name:TLabel;
    VertScrollBox2:TVertScrollBox;
    Layout25:TLayout;
    Label8:TLabel;
    Rectangle8:TRectangle;
    Edit1:TEdit;
    Layout27:TLayout;
    Layout26:TLayout;
    Label5:TLabel;
    Rectangle6:TRectangle;
    edtquant:TEdit;
    Button2:TButton;
    Layout28:TLayout;
    txtsaldo:TText;
    Button1:TButton;
    tbilistpedclient:TTabItem;
    Layout29:TLayout;
    SkLabel2:TSkLabel;
    ListBox2:TListBox;
    VertScrollBox3:TVertScrollBox;
    SpeedButton2:TSpeedButton;
    TabItem2:TTabItem;
    Layout30: TLayout;
    VertScrollBox4: TVertScrollBox;
    procedure FormClose(Sender:TObject;var Action:TCloseAction);
    procedure FormShow(Sender:TObject);
    procedure Image2Click(Sender:TObject);
    procedure Image2MouseDown(Sender:TObject;Button:TMouseButton;
     Shift:TShiftState;X,Y:Single);
    procedure Image2MouseUp(Sender:TObject;Button:TMouseButton;
     Shift:TShiftState;X,Y:Single);
    procedure Image1Click(Sender:TObject);
    procedure Image1MouseDown(Sender:TObject;Button:TMouseButton;
     Shift:TShiftState;X,Y:Single);
    procedure Image1MouseUp(Sender:TObject;Button:TMouseButton;
     Shift:TShiftState;X,Y:Single);
    procedure Button1Click(Sender:TObject);
    procedure SpeedButton1Click(Sender:TObject);
    procedure SpeedButton1MouseDown(Sender:TObject;Button:TMouseButton;
     Shift:TShiftState;X,Y:Single);
    procedure SpeedButton1MouseUp(Sender:TObject;Button:TMouseButton;
     Shift:TShiftState;X,Y:Single);
    procedure Image4MouseDown(Sender:TObject;Button:TMouseButton;
     Shift:TShiftState;X,Y:Single);
    procedure Image4MouseUp(Sender:TObject;Button:TMouseButton;
     Shift:TShiftState;X,Y:Single);
    procedure Image4Click(Sender:TObject);
    procedure edtcodTyping(Sender:TObject);
    procedure FloatAnimation1Finish(Sender:TObject);
    procedure Image3Click(Sender:TObject);
    procedure Button2Click(Sender:TObject);
    procedure FormCreate(Sender:TObject);
    procedure edtcelTyping(Sender:TObject);
    procedure SpeedButton2Click(Sender:TObject);
    private
    lt: TStringList;
      procedure readlist;
      function format_caracter(v:string):string;
      procedure newped(Sender:TObject);
      procedure findprod(val:string);
      procedure onanimateint(Sender:TObject);
      procedure montcart;
      function create_cardprod(cod,desc,quant,valor:string):TFrame2;
      procedure nexttabproc(Sender:TObject);
      procedure totpedclient(clieid:string);
      procedure settotalpedidosclients(Sender:TObject);
      procedure endthreadinsertclient(Sender:TObject);
      procedure reloadlist(ind:integer);
      procedure loadinglistped(Sender:TObject);
    procedure endtthreadreadlist(sender: TObject);
    procedure clicklistitensped(sender: TObject);
    var
      cardframe:TFrame1;
    var
      totalpedidosclientes,countped,countcard:integer;
    var
      saveproddatabase:boolean;
    var
      idprod,nomeclient:string;
    var
      calculoped:double;
    var
      listcardprod:TObjectList<TFrame2>;
    var
      listframecliente:TObjectList<TFrame1>;
    var
      listframepedido:TObjectList<TFrame3>;
    var
      listids:TStringList;
    var
      qry:TFDQuery;
 { Private declarations }
    public
    { Public declarations }
  end;

var
   Form2:TForm2;

implementation

{$R *.fmx}

uses uFormat
{$IFDEF ANDROID}
   ,
  FMX.Platform.android;
{$ENDIF}
{$IFDEF MSWINDOWS}
, untprojanimacoes, untcardproduto;
{$ENDIF}


procedure TForm2.Button1Click(Sender:TObject);
var tr:TThread;
begin
   FDConnection1.Connected:=true;
  tr:=TThread.CreateAnonymousThread(procedure
    begin
      FDQuery1.SQL.Clear;
      FDQuery1.SQL.Add
       ('Insert Into clientes(id,nomepessoa,cel) values (hex(randomblob(2)),'
       + QuotedStr(edtname.Text)+ ','+ QuotedStr(edtcel.Text)+ ')');
      FDQuery1.ExecSQL;
    end);
  tr.FreeOnTerminate:=true;
  tr.OnTerminate:=endthreadinsertclient;
  tr.Start;
end;

procedure TForm2.endthreadinsertclient(Sender:TObject);
begin
  if Assigned(TThread(Sender).FatalException) then
  begin
     showmessage(EXception(TThread(Sender).FatalException).Message);
    FDConnection1.Connected:=false;
  end
  else
  begin
     FDConnection1.Connected:=false;
    reloadlist(1);
  end;

end;

procedure TForm2.FormClose(Sender:TObject;var Action:TCloseAction);
begin
{$IFDEF MSWINDOWS}
  if Assigned(listcardprod) then
     listcardprod.DisposeOf;
  if Assigned(listids) then
     listids.DisposeOf;
  if Assigned(listframecliente) then
     listframecliente.DisposeOf;
  if Assigned(qry) then
     qry.DisposeOf;

  Action:=TCloseAction.caFree;
  Form2:=nil;
{$ENDIF}
end;

procedure TForm2.FormCreate(Sender:TObject);
begin
   listframecliente:=TObjectList<TFrame1>.create;
  qry:=TFDQuery.create(nil);
end;

procedure TForm2.FormShow(Sender:TObject);
begin
   countped:=0;
  countcard:=0;
  Layout27.Visible:=false;
  saveproddatabase:=true;
  TabControl1.TabPosition:=TTabPosition.None;
  TabControl1.ActiveTab:=tablist_client;
  readlist;
end;

function TForm2.format_caracter(v:string):string;
var
   str:string;
begin
   str:=v.Substring(0,1);
  str:=str+ v.Substring(1,1);
  result:=str;
end;

procedure TForm2.edtcelTyping(Sender:TObject);
begin
   Formatar(edtcel,TFormato.celular);
end;

procedure TForm2.edtcodTyping(Sender:TObject);
begin
  if edtcod.Text.Length> 3 then
     findprod(edtcod.Text)
end;

procedure TForm2.findprod(val:string);
var tr:TThread;
  str:string;
begin
   tr:=TThread.CreateAnonymousThread(procedure
    begin
      FDConnection1.Connected:=true;
      FDQuery1.SQL.Clear;
      FDQuery1.SQL.Add('select * from produto where codeudora='+
       QuotedStr(edtcod.Text));
      FDQuery1.Open;
      if FDQuery1.RecordCount= 0 then
         saveproddatabase:=true
      else
      begin
        saveproddatabase:=false;
        TThread.Synchronize(TThread.CurrentThread, procedure
          begin
            edtcod.Text:=FDQuery1.FieldByName('codeudora').AsString;
            edtdescricao.Text:=FDQuery1.FieldByName('descricao').AsString;
            Edit1.Text:=FDQuery1.FieldByName('valor').AsString;
            idprod:=FDQuery1.FieldByName('id').AsString;
            edtquant.SetFocus;
          end);

      end;

    end);

  tr.FreeOnTerminate:=true;
  tr.Start;

end;

procedure TForm2.FloatAnimation1Finish(Sender:TObject);
begin
   Image5.Opacity:=0.01;
  Image5.Visible:=true;
  Image5.Repaint;
  TAnimator.AnimateFloatWait(Image5,'Opacity',1,1.7);
  Image5.parent:=nil;
  Labcountprod.Text:=countped.ToString;
  Labcountprod.Repaint;
  Layout22.Visible:=true;
  Image4.Visible:=true;
  TAnimator.AnimateFloat(Image4,'Opacity',1,1.2);

end;

procedure TForm2.onanimateint(Sender:TObject);
begin
   FloatAnimation1.Inverse:=true;
  FloatAnimation1.Start;
end;

procedure TForm2.readlist;
var tr:TThread;
begin
TProjAni.animations4androidactions(self);
 tr:=TThread.CreateAnonymousThread(procedure
  begin
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('select * from clientes');
  FDQuery1.Open;
  while not FDQuery1.Eof do
  begin
    cardframe:=TFrame1.create(nil);
    cardframe.Height:=126;
    cardframe.Width:=320;
    cardframe.Align:=TAlignLayout.Top;
    cardframe.Margins.Left:=12;
    cardframe.Margins.Right:=12;
    cardframe.Margins.Top:=8;
    cardframe.Opacity:=1;
    cardframe.TagString:=FDQuery1.FieldByName('id').AsString;
    cardframe.Layout11.TagString:=FDQuery1.FieldByName('nomepessoa').AsString;
    cardframe.imgaddped.TagString:=FDQuery1.FieldByName('id').AsString;
    cardframe.labnome.Text:=FDQuery1.FieldByName('nomepessoa').AsString;
    cardframe.labfoto.Text:=format_caracter(FDQuery1.FieldByName('nomepessoa')
     .AsString);
    cardframe.Image1.TagString:=FDQuery1.FieldByName('id').AsString;
    cardframe.Image1.OnClick:=loadinglistped;
    cardframe.imglist_ped.TagString:=
     FDQuery1.FieldByName('nomepessoa').AsString;
    cardframe.Labcel.Text:=FDQuery1.FieldByName('cel').AsString;
    cardframe.labdetped.Text:=totalpedidosclientes.ToString;
    cardframe.imgaddped.OnClick:=newped;
    cardframe.Visible:=false;
    listframecliente.Add(cardframe);
    VertScrollBox3.AddObject(cardframe);
    FDQuery1.Next;
  end;
end);
tr.FreeOnTerminate:=true;
tr.OnTerminate:=endtthreadreadlist;
tr.Start;
end;

procedure TForm2.endtthreadreadlist(sender:TObject);
begin
  if Assigned(TThread(Sender).FatalException) then
  begin
     showmessage(EXception(TThread(Sender).FatalException).Message);
  end
   else
    begin
    VertScrollBox3.BeginUpdate;
     for var I := 0 to listframecliente.Count-1  do
       begin
        listframecliente.Items[i].Visible:=true;
       end;
    VertScrollBox3.EndUpdate;
      TProjAni.stop;
      totpedclient('');
    end;
end;

procedure TForm2.SpeedButton1Click(Sender:TObject);
begin
{$IFDEF ANDROID}
  if Assigned(listcardprod) then
     listcardprod.DisposeOf;
  if Assigned(listids) then
     listids.DisposeOf;
  if Assigned(listframecliente) then
     listframecliente.DisposeOf;
  if Assigned(qry) then
     qry.DisposeOf;

  MainActivity.finish;
{$ENDIF}
{$IFDEF MSWINDOWS}
  close;
{$ENDIF}
end;

procedure TForm2.SpeedButton1MouseDown(Sender:TObject;Button:TMouseButton;
Shift:TShiftState;X,Y:Single);
begin
   SpeedButton1.Position.X:=SpeedButton1.Position.X- 3;
end;

procedure TForm2.SpeedButton1MouseUp(Sender:TObject;Button:TMouseButton;
Shift:TShiftState;X,Y:Single);
begin
   SpeedButton1.Position.X:=SpeedButton1.Position.X+ 3;
end;

procedure TForm2.SpeedButton2Click(Sender:TObject);
begin
   SpeedButton1.Visible:=true;
  SpeedButton2.Visible:=false;
  if (TabControl1.tabIndex= 0)or (TabControl1.tabIndex= 2) then
  begin
     reloadlist(1);
  end;

end;

procedure TForm2.Image1Click(Sender:TObject);
begin
   TabControl1.GotoVisibleTab(1);
end;

procedure TForm2.loadinglistped(Sender:TObject);
var cardframepedido:TFrame3;
  str:string;
  d:integer;
  ar: array of string;
begin
   qry.Active:=false;
  qry.SQL.Clear;
  lt:=TStringList.create;
  qry.SQL.Add('select * from pedidos where name='+
   QuotedStr(TImage(Sender).TagString));
  qry.Active:=true;
  lt.Delimiter:='#';
  lt.DelimitedText:=qry.FieldByName('itens').AsString;
  SetLength(ar,lt.Count);
  for var I:=0 to pred(lt.Count) do
  begin
     str:=lt.Strings[I];
     ar[I]:=str.Chars[5];
  end;

  cardframepedido:=TFrame3.create(nil);
  cardframepedido.parent:=ListBox2;
  cardframepedido.SkLabel1.Words[1].Text:=qry.FieldByName('date').AsString;


 if lt.Count=0 then
   begin
    d:=lt.Count+1;
    cardframepedido.lbquatprod.Text:=d.ToString;
   end
    else
     begin
       cardframepedido.lbquatprod.Text:=lt.Count.ToString;
     end;
  cardframepedido.Label2.Text:='R$ '+ qry.FieldByName('totalcompra').AsString;
  if qry.FieldByName('entregue').AsInteger= 0 then
     cardframepedido.CheckBox1.IsChecked:=false
  else
     cardframepedido.CheckBox1.IsChecked:=true;
  if qry.FieldByName('pgto').AsInteger= 0 then
     cardframepedido.CheckBox2.IsChecked:=false
  else
     cardframepedido.CheckBox2.IsChecked:=true;

  cardframepedido.Image1.OnClick:=clicklistitensped;

  qry.Active:=false;
  TabControl1.GotoVisibleTab(4);

end;

procedure TForm2.clicklistitensped(sender:TObject);
var cardprod:TFrame4;
begin
 for var I:=0  to lt.Count-1 do
   begin
   lt.Strings[i]:=lt.Strings[i].Remove(4,2);
   cardprod:=TFrame4.Create(nil);
   qry.SQL.Clear;
   qry.Active:=false;
   qry.SQL.Add('select * from  produto where id='+quotedstr(lt.Strings[i]));
   qry.Active:=true;
   cardprod.Labcod.Text:=qry.FieldByName('codeudora').AsString;
   cardprod.Labdesc.Text:=qry.FieldByName('descricao').AsString;
   cardprod.Labvalor.Text:='Valor do Produto R$ '+FormatFloat('0.,00',StrToFloat(qry.FieldByName('valor').AsString));
   cardprod.Visible:=true;
   VertScrollBox4.AddObject(cardprod);
   end;
  lt.DisposeOf;
  TabControl1.GotoVisibleTab(5);
end;

procedure TForm2.newped(Sender:TObject);
begin
   SkLabel1.Words[1].Text:=TImage(Sender).parent.TagString;
  TabControl1.GotoVisibleTab(2);
  Image3.TagString:=cardframe.imgaddped.TagString;
  SpeedButton1.Visible:=false;
  SpeedButton2.Visible:=true;
end;

procedure TForm2.Image1MouseDown(Sender:TObject;Button:TMouseButton;
Shift:TShiftState;X,Y:Single);
begin
   Image1.Position.Y:=Image1.Position.Y+ 3;
end;

procedure TForm2.Image1MouseUp(Sender:TObject;Button:TMouseButton;
Shift:TShiftState;X,Y:Single);
begin
   Image1.Position.Y:=Image1.Position.Y- 3;
end;

procedure TForm2.Image2Click(Sender:TObject);
begin
   TabControl1.GotoVisibleTab(0);
  SpeedButton1.Visible:=false;
  SpeedButton2.Visible:=true;
end;

procedure TForm2.Image2MouseDown(Sender:TObject;Button:TMouseButton;
Shift:TShiftState;X,Y:Single);
begin
   Image2.Position.Y:=Image2.Position.Y+ 3;
end;

procedure TForm2.Image2MouseUp(Sender:TObject;Button:TMouseButton;
Shift:TShiftState;X,Y:Single);
begin
   Image2.Position.Y:=Image2.Position.Y- 3;
end;

procedure TForm2.Image3Click(Sender:TObject);
begin
   TabControl1.GotoVisibleTab(3);
  Layout27.Visible:=true;
  Layout3.Visible:=false;
  txtsaldo.Text:='R$ '+ FormatFloat('#,##0.00',calculoped);
end;

procedure TForm2.montcart;
begin
  if not Assigned(listcardprod) then
  begin
    if not Assigned(listids) then
    begin
       listids:=TStringList.create;
      listids.Add(idprod);
    end;
    listcardprod:=TObjectList<TFrame2>.create;
    listcardprod.Add(create_cardprod(edtcod.Text,edtdescricao.Text,
     edtquant.Text,Edit1.Text));
    listcardprod[0].Align:=TAlignLayout.Top;
    listcardprod[0].parent:=VertScrollBox2;
  end
  else
  begin
     listcardprod.Add(create_cardprod(edtcod.Text,edtdescricao.Text,
     edtquant.Text,Edit1.Text));
    listids.Add(idprod);
    listcardprod[countcard- 1].Align:=TAlignLayout.Top;
    listcardprod[countcard- 1].Margins.Top:=8;
    listcardprod[countcard- 1].parent:=VertScrollBox2;
  end;
end;

procedure TForm2.Button2Click(Sender:TObject);
var td:TThread;
  str,ids,outids,strdate:string;
  strchar:char;
begin
   outids:='';
  strdate:=FormatDateTime('dd/mm/yyyy',now);
  for var d:=0 to listids.Count- 1 do
  begin
     ids:=listids.Strings[d]+ '&'+ listcardprod.Items[d].quantcomprada+ '#';
    outids:=outids+ ids;
  end;
  outids:=outids.Remove(outids.Length- 1,1);
  td:=TThread.CreateAnonymousThread(procedure
    begin
      FDConnection1.Connected:=true;
      FDQuery1.SQL.Clear;
      FDQuery1.SQL.Add
       ('insert into pedidos (id,name,date,entregue,pgto,itens,totalcompra) values (Hex(randomblob(2)),'
       +
       QuotedStr(Image3.TagString)+ ','+ QuotedStr(strdate)+ ','+ inttostr(0)+
       ','+ inttostr(0)+ ','+ QuotedStr(outids)+
       ','+ QuotedStr(calculoped.ToString)+ ')');
      FDQuery1.ExecSQL;
    end);
  td.FreeOnTerminate:=true;
  td.OnTerminate:=nexttabproc;
  td.Start;
end;

procedure TForm2.totpedclient(clieid:string);
var tr:TThread;
begin
   qry.Connection:=FDConnection1;
  totalpedidosclientes:=0;
  tr:=TThread.CreateAnonymousThread(procedure
    begin
      sleep(500);
      qry.Active:=false;
      for var I:=0 to pred(listframecliente.Count) do
      begin
        qry.SQL.Clear;
        qry.SQL.Add('select * from pedidos where name='+
         QuotedStr(listframecliente.Items[I].TagString));
        qry.Active:=true;
        totalpedidosclientes:=qry.RecordCount;
        qry.Active:=false;

        TThread.Synchronize(TThread.CurrentThread, procedure
          begin
           listframecliente.Items[I].labdetped.Text:=
             totalpedidosclientes.ToString;
            if listframecliente.Items[I].labdetped.Text.Equals('0') then
               listframecliente.Items[I].Image1.Enabled:=false;
          end);

      end;
    end);
  tr.FreeOnTerminate:=true;
  tr.OnTerminate:=settotalpedidosclients;
  tr.Start;
end;

procedure TForm2.settotalpedidosclients(Sender:TObject);
begin
  if Assigned(TThread(Sender).FatalException) then
  begin
     showmessage(EXception(TThread(Sender).FatalException).Message);
  end;
end;

procedure TForm2.nexttabproc(Sender:TObject);
begin
  if Assigned(TThread(Sender).FatalException) then
  begin
     showmessage(EXception(TThread(Sender).FatalException).Message);
  end
  else
  begin
     reloadlist(1);
  end;
end;

procedure TForm2.reloadlist(ind:integer);
begin
   Layout27.Visible:=false;
  Layout13.Visible:=true;

  listframecliente.Clear;

  VertScrollBox3.BeginUpdate;
  sleep(1000);
  readlist;
  VertScrollBox3.EndUpdate;
  TabControl1.GotoVisibleTab(ind);
end;

function TForm2.create_cardprod(cod,desc,quant,valor:string):TFrame2;
var mycardcart:TFrame2;
begin
   mycardcart:=TFrame2.create(VertScrollBox2);
  mycardcart.Labdescricao.Text:=desc;
  mycardcart.SkLabcodprod.Words[1].Text:=cod;
  mycardcart.Edit1.Text:=quant;
  mycardcart.Name:='mycard'+ countcard.ToString;
  mycardcart.SkLab_valprod.Words[1].Text:=valor;
  mycardcart.calculavalor;
  calculoped:=calculoped+ mycardcart.valorcalculadoped;
  inc(countcard,1);
  result:=mycardcart;
end;

procedure TForm2.Image4Click(Sender:TObject);
var td:TThread;
begin
   td:=TThread.CreateAnonymousThread(procedure
    begin
      if saveproddatabase then
      begin
        FDConnection1.Connected:=true;
        FDQuery1.SQL.Clear;
        FDQuery1.SQL.Add
         ('insert into produto(id,codeudora,descricao,valor) values (Hex(randomblob(2)),'
         +
         QuotedStr(edtcod.Text)+ ','+ QuotedStr(edtdescricao.Text)+ ','+
         QuotedStr(Edit1.Text)+ ')');
        FDQuery1.ExecSQL;
      end;
      montcart;
      TThread.Synchronize(TThread.CurrentThread, procedure
        begin
          edtcod.Text:='';
          edtquant.Text:='1';
          edtdescricao.Text:='';
          Edit1.Text:='';
          edtcod.SetFocus;
          inc(countped,1);
          Application.ProcessMessages;
        end);

    end);
  td.FreeOnTerminate:=true;
  td.OnTerminate:=onanimateint;
  td.Start;
end;

procedure TForm2.Image4MouseDown(Sender:TObject;Button:TMouseButton;
Shift:TShiftState;X,Y:Single);
begin
   Image4.Position.Y:=Image4.Position.Y+ 3;
end;

procedure TForm2.Image4MouseUp(Sender:TObject;Button:TMouseButton;
Shift:TShiftState;X,Y:Single);
begin
   Image4.Position.Y:=Image4.Position.Y- 3;
end;

end.
