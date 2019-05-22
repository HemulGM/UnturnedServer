unit UServer.Database;

interface
 uses Vcl.Graphics, System.SysUtils, SQLiteTable3, SQLLang, UServer.Types,
      System.Generics.Collections, Data.SqlExpr;

 type
  TUDataBase = class
   private
    FFileName:string;
    FDatabase:TSQLiteDatabase;
    procedure RecreateTables;
   public
    //Статистика
    function AddStatistic(pType:string; Value:Extended):Integer;
    function GetStatistic(pType:string; Count:Cardinal; var Data:TStatistics):Integer;
    //Чат
    procedure AddChat(Data:TChatRecord);
    procedure GetChat(List:TChatList; Count:Integer);
    procedure GetChatFilter(List:TChatList; Count:Integer; Filter:TSteamID);
    //Кит-наборы
    function AddKit(KT_Name:string):Integer;
    procedure EditKit(KT_ID:Integer; KT_Name:string);
    procedure DeleteKit(KT_ID:Integer);
    procedure FillKitsTable(Table:TKits);
    //Данные кит-наборов
    function AddKitData(KT_ID:Integer; KD_ITEM:string; KD_COUNT:Integer):Integer;
    procedure EditKitData(KD_ID:Integer; KD_ITEM:string; KD_COUNT:Integer);
    procedure DeleteKitData(KD_ID:Integer);
    procedure FillKitDataTable(Table:TKit);
    //Сообщения
    function AddMessage(pText:string; pColor:TColor):Integer;
    function EditMessage(pID:Integer; pText:string; pColor:TColor):Boolean;
    function DeleteMessage(pID:Integer):Boolean;
    function FillMessage(Table:TGameMessages):Integer;
    //Отметки
    function AddMark(ValueStr:string; ValueInt:Integer):Integer;
    function GetMark(ID:Integer; var Data:TMark):Boolean;
    function GetLastMark(var Data:TMark):Boolean;
    function EditMark(ID:Integer; ValueStr:string; ValueInt:Integer):Boolean;
    function DeleteMark(ID:Integer):Boolean;
    function FillMark(Table:TMarks):Integer;
    //
    constructor Create(pFileName:string);
    property Database:TSQLiteDatabase read FDatabase;
  end;

  TExtDBException = procedure(E:Exception; Text:string) of object;

  TExternalDatabase = class
   private
    FSQL:TSQLConnection;
    FOnExcept:TExtDBException;
    function GetConnected: Boolean;
   public
    function Connect:Boolean;
    procedure Disconnect;
    procedure DoExcept(E:Exception; Text:string);
    procedure SetConnectionParam(Host, Port, Database, UserName, Pass:string);
    property Connected:Boolean read GetConnected;
    property OnExcept:TExtDBException read FOnExcept write FOnExcept;
    constructor Create;
  end;

  TServerDB = class(TExternalDatabase)
   public
    function UpdatePlayerFrom(List:TUpdatedDataPlayerFromList):Boolean;
    function GetDonats(Data:TDonats):Boolean;
    function CreateDonat(var Data:TDonat):Boolean;
    function PlayerInfoCount:Integer;
    function UpdateDonat(Data: TDonat): Boolean;
    function UpdateBansTable(Bans: TBans): Boolean;
    function PayPlayer(SteamID: TSteamID; Amount: Extended): Boolean;
    function UnlimitDonat(Data: TDonat): Boolean;
    function DeleteDonat(ID: Integer): Boolean;
    function InsertBan(SID, Reason: string; Duration: Cardinal):Boolean;
    function GetPlayers(Dest:TPlayerInfo; var Statistics:TCurrentStatistics; pOrderBy:string):Boolean;
    function DeactivateDonat(ID:Integer):Boolean;
  end;

  TSiteDB = class(TExternalDatabase)
   public
    function GetLastSiteChatID:Integer;
    function GetLastChat(var Chat:TChatList; var LastID:Integer):Boolean;
    function SendChatToSite(ChatRec:TChatRecord):Boolean;
  end;


 const
  tableStatistics = 'statistics';
   fieldSTID = 'stID';
   fieldSTType = 'stType';
    stTypeOnline = 'online';
    stTypeAvgPing = 'avgping';
   fieldSTDate = 'stDate';
   fieldSTValue = 'stValue';

  tableChat = 'chat';
   fieldCHID = 'chID';
   fieldCHDate = 'chDate';
   fieldCHText = 'chText';
   fieldCHSteamID = 'chSteamID';
   fieldCHGameName = 'chGameName';
   fieldCHSteamName = 'chSteamName';
   fieldCHAround = 'chAround';
   fieldCHPrivate = 'chPrivate';

  tableKits = 'kits';
   fieldKTID = 'ktID';
   fieldKTName = 'ktName';

  tableKitData = 'kitdata';
   fieldKD_ID = 'kdID';
   fieldKD_KTID = 'kdKTID';
   fieldKD_Item = 'kdItem';
   fieldKD_Count = 'kdCount';

  tableMessages = 'messages';
   fieldMSG_ID = 'msgID';
   fieldMSG_TEXT = 'msgTEXT';
   fieldMSG_COLOR = 'msgCOLOR';

  tableMarks = 'marks';
   fieldMK_ID = 'mkID';
   fieldMK_STR = 'mkStr';
   fieldMK_INT = 'mkInt';
   fieldMK_DATE = 'mkDate';

  tablePlayerInfo = 'playerinfo_full';
  tablePlayerInfoSrc = 'playerinfo';
   fieldPI_SteamID = 'SteamID';
   fieldPI_SteamName = 'SteamName';
   fieldPI_CharName = 'CharName';
   fieldPI_IP = 'IP';
   fieldPI_LastLoginGlobal = 'LastLoginGlobal';
   fieldPI_TotalPlayTime = 'TotalPlayTime';
   fieldPI_FromCountry = 'FromCountry';
   fieldPI_FromCity = 'FromCity';
   fieldPI_RegDate = 'RegDate';
   fieldPI_Balance = 'Balance';
   fieldPI_SZombie = 'SZombie';
   fieldPI_MZombie = 'MZombie';
   fieldPI_Animal = 'Animal';
   fieldPI_Player = 'Player';
   fieldPI_Score = 'Score';

  tableUconomy = 'uconomy';
   fieldUC_SteamID = 'SteamID';
   fieldUC_Balance = 'balance';

  tableWPChat = 'wp_wise_chat_messages';
   fieldWPC_ID = 'id';
   fieldWPC_USER = 'user';
   fieldWPC_TEXT = 'text';
   fieldWPC_USERID = 'user_id';
   fieldWPC_TIME = 'time';
   fieldWPC_CHATUSERID = 'chat_user_id';
   fieldWPC_CHANNEL = 'channel';
   fieldWPC_IP = 'ip';

  tableDonat = 'donation_list';
   fieldDN_ID = 'ID';
   fieldDN_SteamID = 'SteamID';
   fieldDN_PermGroup = 'PermGroup';
   fieldDN_Active = 'Active';
   fieldDN_DateBegin = 'DateBegin';
   fieldDN_Days = 'Days';
   fieldDN_Unlimit = 'Unlimit';
   fieldDN_Comment = 'Comment';

  tableBanned = 'banned';
   fieldBN_SteamID = 'SteamID';
   fieldBN_JudgeID = 'JudgeID';
   fieldBN_Info = 'Info';
   fieldBN_Time = 'Time';
   fieldBN_Duration = 'Duration';

implementation
 uses System.DateUtils;

{ TUDataBase }

constructor TUDataBase.Create(pFileName:string);
begin
 FFileName:=pFileName;
 FDatabase:=TSQLiteDatabase.Create(FFileName);
 RecreateTables;
end;

function TUDataBase.AddKit(KT_Name: string): Integer;
begin
 with SQL.InsertInto do
  begin
   TableName:=tableKits;
   AddValue(fieldKTName, KT_Name);
   FDatabase.ExecSQL(GetSQL);
   Result:=FDatabase.GetLastInsertRowID;
   EndCreate;
  end;
end;

function TUDataBase.AddKitData(KT_ID: Integer; KD_ITEM: string; KD_COUNT: Integer): Integer;
begin
 with SQL.InsertInto(tableKitData) do
  begin
   AddValue(fieldKD_KTID, KT_ID);
   AddValue(fieldKD_Item, KD_ITEM);
   AddValue(fieldKD_Count, KD_COUNT);
   FDatabase.ExecSQL(GetSQL);
   Result:=FDatabase.GetLastInsertRowID;
   EndCreate;
  end;
end;

function TUDataBase.AddMark(ValueStr: string; ValueInt: Integer): Integer;
begin
 with SQL.InsertInto(tableMarks) do
  begin
   AddValue(fieldMK_STR, ValueStr);
   AddValue(fieldMK_INT, ValueInt);
   AddValue(fieldMK_DATE, Now);
   FDatabase.ExecSQL(GetSQL);
   Result:=FDatabase.GetLastInsertRowID;
   EndCreate;
  end;
end;

function TUDataBase.AddMessage(pText:string; pColor:TColor):Integer;
begin
 with SQL.InsertInto do
  begin
   TableName:=tableMessages;
   AddValue(fieldMSG_TEXT, pText);
   AddValue(fieldMSG_COLOR, pColor);
   FDatabase.ExecSQL(GetSQL);
   Result:=FDatabase.GetLastInsertRowID;
   EndCreate;
  end;
end;

function TUDataBase.AddStatistic(pType: string; Value: Extended):Integer;
begin
 with SQL.InsertInto do
  begin
   TableName:=tableStatistics;
   AddValue(fieldSTType, pType);
   AddValue(fieldSTDate, Now);
   AddValue(fieldSTValue, Value);
   FDatabase.ExecSQL(GetSQL);
   Result:=FDatabase.GetLastInsertRowID;
   EndCreate;
  end;
end;

function TUDataBase.DeleteMark(ID:Integer):Boolean;
begin
 with SQL.Delete(tableMarks) do
  begin
   WhereFieldEqual(fieldMK_ID, ID);
   FDatabase.ExecSQL(GetSQL);
   Result:=FDatabase.GetLastChangedRows > 0;
   EndCreate;
  end;
end;

function TUDataBase.DeleteMessage(pID: Integer): Boolean;
begin
 with SQL.Delete(tableMessages) do
  begin
   WhereFieldEqual(fieldMSG_ID, pID);
   FDatabase.ExecSQL(GetSQL);
   Result:=FDatabase.GetLastChangedRows > 0;
   EndCreate;
  end;
end;

function TUDataBase.EditMark(ID:Integer; ValueStr:string; ValueInt:Integer): Boolean;
begin
 with SQL.Update(tableMarks) do
  begin
   AddValue(fieldMK_STR, ValueStr);
   AddValue(fieldMK_INT, ValueInt);
   AddValue(fieldMK_DATE, Now);
   WhereFieldEqual(fieldMK_ID, ID);
   FDatabase.ExecSQL(GetSQL);
   Result:=FDatabase.GetLastChangedRows > 0;
   EndCreate;
  end;
end;

function TUDataBase.EditMessage(pID:Integer; pText:string; pColor:TColor):Boolean;
begin
 with SQL.Update(tableMessages) do
  begin
   AddValue(fieldMSG_TEXT, pText);
   AddValue(fieldMSG_COLOR, pColor);
   WhereFieldEqual(fieldMSG_ID, pID);
   FDatabase.ExecSQL(GetSQL);
   Result:=FDatabase.GetLastChangedRows > 0;
   EndCreate;
  end;
end;

function TUDataBase.FillMark(Table: TMarks): Integer;
var STable:TSQLiteTable;
    Item:TMark;
begin
 Table.Clear;
 with SQL.Select(tableMarks) do
  begin
   AddField(fieldMK_ID);
   AddField(fieldMK_STR);
   AddField(fieldMK_INT);
   AddField(fieldMK_DATE);
   STable:=FDatabase.GetTable(GetSQL);
   while not STable.EOF do
    begin
     Item.ID:=STable.FieldAsInteger(0);
     Item.ValueStr:=STable.FieldAsString(1);
     Item.ValueInt:=STable.FieldAsInteger(2);
     Item.Date:=STable.FieldAsDateTime(3);
     Table.Add(Item);
     STable.Next;
    end;
   EndCreate;
  end;
end;

function TUDataBase.FillMessage(Table:TGameMessages):Integer;
var STable:TSQLiteTable;
    Item:TGameMessage;
begin
 Table.BeginUpdate;
 Table.Clear;

 with SQL.Select(tableMessages) do
  begin
   AddField(fieldMSG_ID);
   AddField(fieldMSG_TEXT);
   AddField(fieldMSG_COLOR);
   STable:=FDatabase.GetTable(GetSQL);
   while not STable.EOF do
    begin
     Item.ID:=STable.FieldAsInteger(0);
     Item.Text:=STable.FieldAsString(1);
     Item.Color:=TColor(STable.FieldAsInteger(2));
     Table.Add(Item);
     STable.Next;
    end;
   EndCreate;
  end;

 Table.EndUpdate;
end;

function TUDataBase.GetStatistic(pType:string; Count:Cardinal; var Data:TStatistics): Integer;
var Table:TSQLiteTable;
    SD:TStatData;
begin
 with SQL.Select do
  begin
   TableName:=tableStatistics;
   AddField(fieldSTID);
   AddField(fieldSTDate);
   AddField(fieldSTValue);
   WhereFieldEqual(fieldSTType, pType);
   Table:=FDatabase.GetTable(GetSQL);
   EndCreate;
  end;
 Result:=Table.Count;
 while not Table.EOF do
  begin
   Data.Add(SD.Create(Table.FieldAsInteger(0), Table.FieldAsDateTime(1), Table.FieldAsDouble(2)));
   Table.Next;
  end;
 Table.Free;
end;

procedure TUDataBase.AddChat(Data: TChatRecord);
begin
 with SQL.InsertInto do
  begin
   TableName:=tableChat;
   AddValue(fieldCHDate, Data.Date);
   AddValue(fieldCHText, Data.Text);
   AddValue(fieldCHSteamID, Data.Player.SteamID);
   AddValue(fieldCHGameName, Data.Player.GameName);
   AddValue(fieldCHSteamName, Data.Player.SteamName);
   AddValue(fieldCHAround, Ord(Data.Around));
   AddValue(fieldCHPrivate, Data.PM);
   FDatabase.ExecSQL(GetSQL);
   EndCreate;
  end;
end;

procedure TUDataBase.DeleteKit(KT_ID: Integer);
begin
 with SQL.Delete(tableKits) do
  begin
   WhereFieldEqual(fieldKTID, KT_ID);
   FDatabase.ExecSQL(GetSQL);
   EndCreate;
  end;
 with SQL.Delete(tableKitData) do
  begin
   WhereFieldEqual(fieldKD_KTID, KT_ID);
   FDatabase.ExecSQL(GetSQL);
   EndCreate;
  end;
end;

procedure TUDataBase.DeleteKitData(KD_ID: Integer);
begin
 with SQL.Delete(tableKitData) do
  begin
   WhereFieldEqual(fieldKD_ID, KD_ID);
   FDatabase.ExecSQL(GetSQL);
   EndCreate;
  end;
end;

procedure TUDataBase.EditKit(KT_ID: Integer; KT_Name: string);
begin
 with SQL.Update do
  begin
   TableName:=tableKits;
   AddValue(fieldKTName, KT_Name);
   WhereFieldEqual(fieldKTID, KT_ID);
   FDatabase.ExecSQL(GetSQL);
   EndCreate;
  end;
end;

procedure TUDataBase.EditKitData(KD_ID:Integer; KD_ITEM:string; KD_COUNT:Integer);
begin
 with SQL.Update(tableKitData) do
  begin
   AddValue(fieldKD_Item, KD_ITEM);
   AddValue(fieldKD_Count, KD_COUNT);
   WhereFieldEqual(fieldKD_ID, KD_ID);
   FDatabase.ExecSQL(GetSQL);
   EndCreate;
  end;
end;

procedure TUDataBase.FillKitDataTable(Table: TKit);
var STable:TSQLiteTable;
    Item:TKitItem;
begin
 Table.Clear;
 with SQL.Select(tableKitData) do
  begin
   AddField(fieldKD_ID);
   AddField(fieldKD_Item);
   AddField(fieldKD_Count);
   AddField(fieldKD_KTID);
   WhereFieldEqual(fieldKD_KTID, Table.DBID);
   STable:=FDatabase.GetTable(GetSQL);
   while not STable.EOF do
    begin
     Item := TKitItem.Create(STable.FieldAsInteger(0), STable.FieldAsString(1), STable.FieldAsInteger(2));

     Table.Add(Item);
     STable.Next;
    end;
   EndCreate;
  end;
end;

procedure TUDataBase.FillKitsTable(Table: TKits);
var STable:TSQLiteTable;
begin
 Table.BeginUpdate;
 Table.Clear;

 with SQL.Select(tableKits) do
  begin
   AddField(fieldKTID);
   AddField(fieldKTName);
   STable:=FDatabase.GetTable(GetSQL);
   while not STable.EOF do
    begin
     Table.Add(TKit.Create(STable.FieldAsInteger(0), STable.FieldAsString(1)));
     STable.Next;
    end;
   EndCreate;
  end;

 Table.EndUpdate;
end;

procedure TUDataBase.GetChat(List: TChatList; Count: Integer);
begin
 GetChatFilter(List, Count, '');
end;

procedure TUDataBase.GetChatFilter(List: TChatList; Count: Integer; Filter: TSteamID);
var Table:TSQLiteTable;
    Item:TChatRecord;
begin
 List.BeginUpdate;
 List.Clear;
 with SQL.Select(tableChat) do
  begin
   AddField(fieldCHDate);
   AddField(fieldCHText);
   AddField(fieldCHSteamID);
   AddField(fieldCHGameName);
   AddField(fieldCHSteamName);
   AddField(fieldCHAround);
   AddField(fieldCHPrivate);
   OrderBy(fieldCHDate, True);
   if Filter <> '' then WhereFieldEqual(fieldCHSteamID, Filter);
   Limit:=Count;
   Table:=FDatabase.GetTable(GetSQL);
   EndCreate;
  end;
 while not Table.EOF do
  begin
   Item.Date:=Table.FieldAsDateTime(0);
   Item.Text:=Table.FieldAsString(1);
   Item.Player.SteamID:=Table.FieldAsString(2);
   Item.Player.GameName:=Table.FieldAsString(3);
   Item.Player.SteamName:=Table.FieldAsString(4);
   Item.Around:=TAround(Table.FieldAsInteger(5));
   Item.PM:=Table.FieldAsBoolean(6);
   List.Insert(0, Item);
   Table.Next;
  end;
 Table.Free;
 List.EndUpdate;
end;

function TUDataBase.GetLastMark(var Data: TMark): Boolean;
var Table:TSQLiteTable;
begin
 with SQL.Select(tableMarks) do
  begin
   AddField(fieldMK_ID);
   AddField(fieldMK_STR);
   AddField(fieldMK_INT);
   AddField(fieldMK_DATE);
   Limit:=1;
   OrderBy(fieldMK_DATE, True);
   Table:=FDatabase.GetTable(GetSQL);
   if Table.Count > 0 then
    begin
     Data.ID:=Table.FieldAsInteger(0);
     Data.ValueStr:=Table.FieldAsString(1);
     Data.ValueInt:=Table.FieldAsInteger(2);
     Data.Date:=Table.FieldAsDateTime(3);
    end;
   Result:=Table.Count > 0;
   Table.Free;
   EndCreate;
  end;
end;

function TUDataBase.GetMark(ID: Integer; var Data: TMark): Boolean;
var Table:TSQLiteTable;
begin
 with SQL.Select(tableMarks) do
  begin
   AddField(fieldMK_ID);
   AddField(fieldMK_STR);
   AddField(fieldMK_INT);
   AddField(fieldMK_DATE);
   WhereFieldEqual(fieldMK_ID, ID);
   Table:=FDatabase.GetTable(GetSQL);
   if Table.Count > 0 then
    begin
     Data.ID:=Table.FieldAsInteger(0);
     Data.ValueStr:=Table.FieldAsString(1);
     Data.ValueInt:=Table.FieldAsInteger(2);
     Data.Date:=Table.FieldAsDateTime(3);
    end;
   Result:=Table.Count > 0;
   Table.Free;
   EndCreate;
  end;
end;

procedure TUDataBase.RecreateTables;
begin
 if not FDatabase.TableExists(tableStatistics) then
  with SQL.CreateTable(tableStatistics) do
   begin
    AddField(fieldSTID, ftInteger, True, True);
    AddField(fieldSTType, ftString);
    AddField(fieldSTDate, ftDateTime);
    AddField(fieldSTValue, ftFloat);
    FDatabase.ExecSQL(GetSQL);
    EndCreate;
   end;

 if not FDatabase.TableExists(tableChat) then
  with SQL.CreateTable(tableChat) do
   begin
    AddField(fieldCHID, ftInteger, True, True);
    AddField(fieldCHDate, ftDateTime);
    AddField(fieldCHText, ftString);
    AddField(fieldCHSteamID, ftString);
    AddField(fieldCHGameName, ftString);
    AddField(fieldCHSteamName, ftString);
    AddField(fieldCHAround, ftInteger);
    AddField(fieldCHPrivate, ftBoolean);
    FDatabase.ExecSQL(GetSQL);
    EndCreate;
   end;

 if not FDatabase.TableExists(tableKits) then
  with SQL.CreateTable(tableKits) do
   begin
    AddField(fieldKTID, ftInteger, True, True);
    AddField(fieldKTName, ftString);
    FDatabase.ExecSQL(GetSQL);
    EndCreate;
   end;

 if not FDatabase.TableExists(tableKitData) then
  with SQL.CreateTable(tableKitData) do
   begin
    AddField(fieldKD_ID, ftInteger, True, True);
    AddField(fieldKD_KTID, ftInteger);
    AddField(fieldKD_Item, ftString);
    AddField(fieldKD_Count, ftInteger);
    FDatabase.ExecSQL(GetSQL);
    EndCreate;
   end;

 if not FDatabase.TableExists(tableMessages) then
  with SQL.CreateTable(tableMessages) do
   begin
    AddField(fieldMSG_ID, ftInteger, True, True);
    AddField(fieldMSG_TEXT, ftString);
    AddField(fieldMSG_COLOR, ftInteger);
    FDatabase.ExecSQL(GetSQL);
    EndCreate;
   end;

 if not FDatabase.TableExists(tableMarks) then
  with SQL.CreateTable(tableMarks) do
   begin
    AddField(fieldMK_ID, ftInteger, True, True);
    AddField(fieldMK_STR, ftString);
    AddField(fieldMK_INT, ftInteger);
    AddField(fieldMK_DATE, ftDateTime);
    FDatabase.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

{ TExternalDatabase }

function TExternalDatabase.Connect:Boolean;
begin
 Result:=False;
 with FSQL do
  begin
   try
    if Connected then Close;
    Connected:=True;
    Result:=Connected;
   except
    Exit(False);
   end;
  end;
end;

constructor TExternalDatabase.Create;
begin
 FSQL:=TSQLConnection.Create(nil);
 with FSQL do
  begin
   Drivername:='MySQL';
   VendorLib:='libmySQL.dll';
  end;
end;

procedure TExternalDatabase.Disconnect;
begin
 FSQL.Close;
end;

procedure TExternalDatabase.DoExcept(E: Exception; Text: string);
begin
 if Assigned(FOnExcept) then FOnExcept(E, Text);
end;

function TExternalDatabase.GetConnected: Boolean;
begin
 Result:=FSQL.Connected;
end;

procedure TExternalDatabase.SetConnectionParam(Host, Port, Database, UserName, Pass: string);
begin
 with FSQL.Params do
  begin
   Clear;
   Append('Database='+Database);
   Append('User_Name='+UserName);
   Append('Password='+Pass);
   Append('HostName='+Host);
   Append('Port='+Port);
   Append('ServerCharSet=utf8');
  end;
end;

{ TServerDB }

function TServerDB.CreateDonat(var Data: TDonat): Boolean;
var Query:TSQLQuery;
begin
 Result:=False;
 if FSQL.Connected then
  begin
   Query:=TSQLQuery.Create(nil);
   Query.SQLConnection:=FSQL;
   with SQL.InsertInto(tableDonat) do
    begin                  {
     AddValue(fieldDN_SteamID, Data.Player.SteamID);
     AddValue(fieldDN_PermGroup, Data.Group);
     AddValue(fieldDN_Active, Data.Active);
     AddValue(fieldDN_DateBegin, Data.DateBegin);
     AddValue(fieldDN_Days, Data.Days);
     AddValue(fieldDN_Unlimit, Data.Unlimit);
     AddValue(fieldDN_Comment, Data.Comment);     }

     AddValueAsParam(fieldDN_SteamID);
     AddValueAsParam(fieldDN_PermGroup);
     AddValueAsParam(fieldDN_Active);
     AddValueAsParam(fieldDN_DateBegin);
     AddValueAsParam(fieldDN_Days);
     AddValueAsParam(fieldDN_Unlimit);
     AddValueAsParam(fieldDN_Comment);
     Query.SQL.Text:=GetSQL;
     EndCreate;
    end;
  { Query.SQL.Text:='INSERT INTO donation_list (SteamID, PermGroup, Active, DateBegin, Days, Unlimit, Comment) VALUES (:v1, :v2, :v3, :v4, :v5, :v6, :v7)';
   Query.Params.ParamValues['v1']:=Data.Player.SteamID;
   Query.Params.ParamValues['v2']:=Data.Group;
   Query.Params.ParamValues['v3']:=Ord(Data.Active);
   Query.Params.ParamValues['v4']:=Data.DateBegin;
   Query.Params.ParamValues['v5']:=Data.Days;
   Query.Params.ParamValues['v6']:=Ord(Data.Unlimit);
   Query.Params.ParamValues['v7']:=Data.Comment; }
   Query.Params.ParamValues[fieldDN_SteamID]:=Data.Player.SteamID;
   Query.Params.ParamValues[fieldDN_PermGroup]:=Data.Group;
   Query.Params.ParamValues[fieldDN_Active]:=Data.Active;
   Query.Params.ParamValues[fieldDN_DateBegin]:=Data.DateBegin;
   Query.Params.ParamValues[fieldDN_Days]:=Data.Days;
   Query.Params.ParamValues[fieldDN_Unlimit]:=Data.Unlimit;
   Query.Params.ParamValues[fieldDN_Comment]:=Data.Comment;
   try
    Result:=Query.ExecSQL > 0;
   except
    on E:Exception do DoExcept(E, 'CreateDonat');
   end;
   if Result then
    try
     Query.SQL.Text:=SQL.SelectLastInsertID;
     Query.Open;
     Data.ID:=Query.Fields[0].AsInteger;
    except
     on E:Exception do DoExcept(E, 'CreateDonat 2');
    end;
   Query.Free;
  end;
end;

function TServerDB.DeactivateDonat(ID: Integer): Boolean;
var Query:TSQLQuery;
begin
 Result:=False;
 if not FSQL.Connected then Exit;
 Query:=TSQLQuery.Create(nil);
 Query.SQLConnection:=FSQL;
 with SQL.Update(tableDonat) do
  begin
   AddValue(fieldDN_Active, 0);
   WhereFieldEqual(fieldDN_ID, ID);
   Query.SQL.Text:=GetSQL;
   EndCreate;
  end;
 //Query.SQL.Text:='update donation_list set active = 0 where ID = '+QuotedStr(IntToStr(ID));
 try
  Result:=Query.ExecSQL > 0;
 except
  on E:Exception do DoExcept(E, 'DeactivateDonat');
 end;
 Query.Free;
end;

function TServerDB.DeleteDonat(ID:Integer):Boolean;
var Query:TSQLQuery;
begin
 Result:=False;
 if not FSQL.Connected then Exit;
 Query:=TSQLQuery.Create(nil);
 Query.SQLConnection:=FSQL;
 with SQL.Delete(tableDonat) do
  begin
   WhereFieldEqual(fieldDN_ID, ID);
   Query.SQL.Text:=GetSQL;
   EndCreate;
  end;
 //Query.SQL.Text:='delete from donation_list where ID = '+QuotedStr(IntToStr(ID));
 try
  Result:=Query.ExecSQL > 0;
 except
  on E:Exception do DoExcept(E, 'DeleteDonat');
 end;
 Query.Free;
end;

function TServerDB.GetDonats(Data: TDonats): Boolean;
var Query:TSQLQuery;
    DRecord:TDonat;
    i:Integer;
begin
 Result:=False;
 if not FSQL.Connected then Exit;
 Data.BeginUpdate;
 Data.Clear;
 Query:=TSQLQuery.Create(nil);
 Query.SQLConnection:=FSQL;
 with SQL.Select(tableDonat) do
  begin
   AddField(fieldDN_ID);
   AddField(fieldDN_SteamID);
   AddField(fieldDN_PermGroup);
   AddField(fieldDN_DateBegin);
   AddField(fieldDN_Days);
   AddField(fieldDN_Comment);
   AddField('ADDDATE(DateBegin, Days) as DateEnd');
   AddField(fieldDN_Unlimit);
   AddField(fieldDN_Active);
   Query.SQL.Text:=GetSQL;
   EndCreate;
  end;
 //Query.SQL.Text:='SELECT ID, SteamID, PermGroup, DateBegin, Days, Comment, ADDDATE(DateBegin, Days) as DateEnd, Unlimit, Active FROM donation_list';
 try
  Query.Open;
  while not Query.Eof do
   begin
    DRecord.ID:=Query.Fields[0].AsInteger;
    DRecord.Player.SteamID:=Query.Fields[1].AsString;
    DRecord.Player.GameName:=DRecord.Player.SteamID;
    DRecord.Player.SteamName:=DRecord.Player.SteamID;
    DRecord.Group:=Query.Fields[2].AsString;
    DRecord.DateBegin:=Query.Fields[3].AsDateTime;
    DRecord.Days:=Query.Fields[4].AsInteger;
    DRecord.Comment:=Query.Fields[5].AsString;
    DRecord.DateEnd:=Query.Fields[6].AsDateTime;
    DRecord.Unlimit:=Query.Fields[7].AsInteger = 1;
    DRecord.Active:=Query.Fields[8].AsInteger = 1;
    Data.Add(DRecord);
    Query.Next;
   end;
  Result:=Data.Count > 0;
 except
  on E:Exception do DoExcept(E, 'GetDonats');
 end;
 Query.Free;
 Data.EndUpdate;
end;

function TServerDB.GetPlayers(Dest: TPlayerInfo; var Statistics: TCurrentStatistics; pOrderBy:string):Boolean;
var SQLQuery:TSQLQuery;
    PI:TPlayerInfoRecord;
begin
 Result:=False;
 if FSQL.Connected then
  begin
   SQLQuery:=TSQLQuery.Create(nil);
   SQLQuery.Close;
   SQLQuery.SQLConnection:=FSQL;
   SQLQuery.SQL.Clear;
   with SQL.Select(tablePlayerInfo) do
    begin
     AddField(fieldPI_SteamID);
     AddField(fieldPI_SteamName);
     AddField(fieldPI_CharName);
     AddField(fieldPI_IP);
     AddField(fieldPI_LastLoginGlobal);
     AddField(fieldPI_TotalPlayTime);
     AddField(fieldPI_FromCountry);
     AddField(fieldPI_FromCity);
     AddField(fieldPI_RegDate);
     AddField(fieldPI_Balance);
     AddField(fieldPI_SZombie);
     AddField(fieldPI_MZombie);
     AddField(fieldPI_Animal);
     AddField(fieldPI_Player);
     OrderBy(pOrderBy);
     SQLQuery.SQL.Text:=GetSQL;
     EndCreate;
    end;
   try
    SQLQuery.Open;
    Statistics.BeginUpdate;
    Dest.BeginUpdate;
    Dest.Clear;
    while not SQLQuery.Eof do
     begin
      PI.SteamID:=SQLQuery.Fields[0].AsString;
      PI.SteamName:=SQLQuery.Fields[1].AsString;
      PI.CharName:=SQLQuery.Fields[2].AsString;
      PI.IP:=SQLQuery.Fields[3].AsString;
      PI.LastLoginGlobal:=SQLQuery.Fields[4].AsDateTime;
      PI.TotalPlayTime:=SQLQuery.Fields[5].AsInteger;
      PI.FromCountry:=SQLQuery.Fields[6].AsString;
      PI.FromCity:=SQLQuery.Fields[7].AsString;
      PI.RegDate:=SQLQuery.Fields[8].AsDateTime;
      PI.Balance:=SQLQuery.Fields[9].AsFloat;
      PI.KillSZombie:=SQLQuery.Fields[10].AsInteger;
      PI.KillMZombie:=SQLQuery.Fields[11].AsInteger;
      PI.KillAnimal:=SQLQuery.Fields[12].AsInteger;
      PI.KillPlayer:=SQLQuery.Fields[13].AsInteger;
      Dest.Add(PI);
      Statistics.UpdateStat(PI);
      SQLQuery.Next;
     end;
    Result:=True;
    Statistics.AllPlayers:=Dest.Count;
   except
    on E:Exception do DoExcept(E, 'GetPlayers');
   end;
   Statistics.EndUpdate;
   Dest.EndUpdate;
   SQLQuery.Free;
  end;
end;

function TServerDB.InsertBan(SID, Reason:string; Duration:Cardinal):Boolean;
var SQLQuery:TSQLQuery;
begin
 Result:=False;
 if not FSQL.Connected then Exit;
 SQLQuery:=TSQLQuery.Create(nil);
 SQLQuery.SQLConnection:=FSQL;
 with SQL.InsertInto(tableBanned) do
  begin
   AddValue(fieldBN_SteamID, SID);
   AddValue(fieldBN_Info, Reason);
   AddValue(fieldBN_Time, Duration);
   SQLQuery.SQL.Text:=GetSQL;
   EndCreate;
  end;
 //SQLQuery.SQL.Text:='insert into banned (SteamID, Info, Time) VALUES ('+QuotedStr(SID)+', '+QuotedStr(Reason)+', '+QuotedStr(IntToStr(Duration))+');';
 try
  Result:=SQLQuery.ExecSQL > 0;
 except
  on E:Exception do DoExcept(E, 'InsertBan');
 end;
 SQLQuery.Free;
end;

function TServerDB.PlayerInfoCount:Integer;
var SQLQuery:TSQLQuery;
begin
 Result:=0;
 if not FSQL.Connected then Exit;
 SQLQuery:=TSQLQuery.Create(nil);
 SQLQuery.SQLConnection:=FSQL;
 with SQL.Select(tablePlayerInfoSrc) do
  begin
   AddFieldCount(fieldPI_SteamID);
   SQLQuery.SQL.Text:=GetSQL;
   EndCreate;
  end;
 //SQLQuery.SQL.Text:='select COUNT(SteamID) from playerinfo';
 try
  SQLQuery.Open;
  Result:=SQLQuery.Fields[0].AsInteger;
  SQLQuery.Free;
 except
  on E:Exception do DoExcept(E, 'PlayerInfoCount');
 end;
end;

function TServerDB.PayPlayer(SteamID:TSteamID; Amount:Extended):Boolean;
var Query:TSQLQuery;
begin
 Result:=False;
 if not FSQL.Connected then Exit;
 Query:=TSQLQuery.Create(nil);
 Query.SQLConnection:=FSQL;
 with SQL.Update(tableUconomy) do
  begin
   IncValue(fieldUC_Balance, Amount);
   WhereFieldEqual(fieldUC_SteamID, SteamID);
   Query.SQL.Text:=GetSQL;
   EndCreate;
  end;
 //Query.SQL.Text:='UPDATE uconomy SET balance=balance + :v1 WHERE steamId=:v2;';
 //Query.Params.ParamValues['v1']:=Amount;
 //Query.Params.ParamValues['v2']:=SteamID;
 try
  Result:=Query.ExecSQL > 0;
 except
  on E:Exception do DoExcept(E, 'PayPlayer');
 end;
 Query.Free;
end;

function TServerDB.UnlimitDonat(Data: TDonat):Boolean;
var Query:TSQLQuery;
begin
 Result:=False;
 if not FSQL.Connected then Exit;
 Query:=TSQLQuery.Create(nil);
 Query.SQLConnection:=FSQL;
 with SQL.Update(tableDonat) do
  begin
   AddValue(fieldDN_Unlimit, Data.Unlimit);
   WhereFieldEqual(fieldDN_ID, Data.ID);
   Query.SQL.Text:=GetSQL;
   EndCreate;
  end;
 //Query.SQL.Text:='update donation_list set unlimit = '+IntToStr(Ord(Data.Unlimit))+' where ID = '+QuotedStr(IntToStr(Data.ID));
 try
  Result:=Query.ExecSQL > 0;
 except
  on E:Exception do DoExcept(E, 'UnlimitDonat');
 end;
 Query.Free;
end;

function TServerDB.UpdateBansTable(Bans:TBans):Boolean;
var SQLQuery:TSQLQuery;
    rDesc:TTransactionDesc;
    i:Integer;
begin
 Result:=False;
 if not FSQL.Connected then Exit;
 SQLQuery:=TSQLQuery.Create(nil);
 SQLQuery.SQLConnection:=FSQL;
 with SQL.Delete(tableBanned) do
  begin
   SQLQuery.SQL.Text:=GetSQL;
   SQLQuery.ExecSQL;
   EndCreate;
  end;
 rDesc.IsolationLevel:=xilREADCOMMITTED;
 FSQL.StartTransaction(rDesc);
 for i:= 0 to Bans.Count-1 do
  begin
   with SQL.InsertInto(tableBanned) do
    begin
     AddValue(fieldBN_SteamID, Bans[i].PlayerSteamID);
     AddValue(fieldBN_JudgeID, Bans[i].JudgeSteamID);
     AddValue(fieldBN_Info, Bans[i].Reason);
     AddValue(fieldBN_Time, Bans[i].Duration);
     AddValue(fieldBN_Duration, Bans[i].Remaining);
     SQLQuery.SQL.Text:=GetSQL;
     EndCreate;
    end;
   try
    SQLQuery.ExecSQL;
   except
    on E:Exception do DoExcept(E, 'UpdateBansTable rec: '+IntToStr(i));
   end;
  end;
 Result:=True;
 FSQL.Commit(rDesc);
 SQLQuery.Free;
end;

function TServerDB.UpdateDonat(Data:TDonat):Boolean;
var Query:TSQLQuery;
begin
 Result:=False;
 if not FSQL.Connected then Exit;
 Query:=TSQLQuery.Create(nil);
 Query.SQLConnection:=FSQL;
 with SQL.Update(tableDonat) do
  begin
   AddValueAsParam(fieldDN_Active);
   AddValueAsParam(fieldDN_Days);
   AddValueAsParam(fieldDN_Comment);
   AddValueAsParam(fieldDN_DateBegin);
   WhereFieldEqual(fieldDN_ID, Data.ID);
   Query.SQL.Text:=GetSQL;
   EndCreate;
  end;
 //Query.SQL.Text:='update donation_list set active = :v1, Days = :v2, Comment = :v3, DateBegin = :V4 where ID = '+QuotedStr(IntToStr(Data.ID));
 Query.Params.ParamValues[fieldDN_Active]:=Data.Active;
 Query.Params.ParamValues[fieldDN_Days]:=Data.Days;
 Query.Params.ParamValues[fieldDN_Comment]:=Data.Comment;
 Query.Params.ParamValues[fieldDN_DateBegin]:=Data.DateBegin;
 try
  Result:=Query.ExecSQL > 0;
 except
  on E:Exception do DoExcept(E, 'UpdateDonat');
 end;
 Query.Free;
end;

function TServerDB.UpdatePlayerFrom(List:TUpdatedDataPlayerFromList): Boolean;
var SQLQuery:TSQLQuery;
    i:Integer;
begin
 Result:=False;
 if not Connected then Exit;
 SQLQuery:=TSQLQuery.Create(nil);
 SQLQuery.SQLConnection:=FSQL;
 for i:= 0 to List.Count-1 do
  begin
   with SQL.Update(tablePlayerInfoSrc) do
    begin
     AddValue(fieldPI_FromCountry, List[i].Country);
     AddValue(fieldPI_FromCity, List[i].City);
     WhereFieldEqual(fieldPI_SteamID, List[i].SteamID);
     SQLQuery.SQL.Text:=GetSQL;
     EndCreate;
    end;
   //SQLQuery.SQL.Text:='UPDATE playerinfo SET FromCountry = '+QuotedStr(List[i].Country)+', FromCity = '+QuotedStr(List[i].City)+' WHERE SteamID = '+QuotedStr(List[i].SteamID);
   try
    Result:=SQLQuery.ExecSQL > 0;
   except
    on E:Exception do DoExcept(E, 'UpdatePlayerFrom');
   end;
  end;
 SQLQuery.Free;
end;

{ TSiteDB }

function TSiteDB.GetLastChat(var Chat:TChatList; var LastID:Integer):Boolean;
var SQLQuery:TSQLQuery;
    CR:TChatRecord;
begin
 Result:=False;
 if not Connected then Exit;
 SQLQuery:=TSQLQuery.Create(nil);
 SQLQuery.SQLConnection:=FSQL;
 with SQL.Select(tableWPChat) do
  begin
   AddField('FROM_UNIXTIME(time) as time');
   AddField(fieldWPC_USER);
   AddField(fieldWPC_TEXT);
   AddField(fieldWPC_ID);
   WhereFieldEqual(fieldWPC_CHANNEL, 'game');
   WhereNotFieldEqual(fieldWPC_USERID, -1, wuAnd);
   WhereField(fieldWPC_ID, '>', LastID, wuAnd);
   //Where:=fieldWPC_CHANNEL+'='+QuotedStr('game')+' and '+fieldWPC_USERID+'<>-1 and id > '+QuotedStr(IntToStr(LastID));
   SQLQuery.SQL.Text:=GetSQL;
   EndCreate;
  end;

 try
  SQLQuery.Open;
  if SQLQuery.RecordCount > 0 then
   while not SQLQuery.Eof do
    begin
     //UTF8Decode(StringOf(SQLQuery.Fields[2].AsBytes))
     CR.Date:=SQLQuery.Fields[0].AsDateTime;
     CR.Player.GameName:=UTF8ToWideString(StringOf(SQLQuery.Fields[1].AsBytes));
     CR.Text:=UTF8ToWideString(StringOf(SQLQuery.Fields[2].AsBytes));
     LastID:=SQLQuery.Fields[3].AsInteger;
     Chat.Add(CR);
     SQLQuery.Next;
    end;
  Result:=Chat.Count > 0;
 except
  on E:Exception do DoExcept(E, 'GetLastChat');
 end;
 SQLQuery.Free;
end;

function TSiteDB.GetLastSiteChatID:Integer;
var SQLQuery:TSQLQuery;
begin
 Result:=-1;
 if not Connected then Exit;
 SQLQuery:=TSQLQuery.Create(nil);
 SQLQuery.SQLConnection:=FSQL;
 with SQL.Select(tableWPChat) do
  begin
   AddField(fieldWPC_ID);
   AddField(fieldWPC_USER);
   AddField(fieldWPC_TEXT);
   WhereNotFieldEqual(fieldWPC_USERID, -1);
   Limit:=1;
   OrderBy(fieldWPC_ID, True);
   SQLQuery.SQL.Text:=GetSQL;
   EndCreate;
  end;
 try
  SQLQuery.Open;
  if SQLQuery.RecordCount > 0 then
   begin
    Result:=SQLQuery.Fields[0].AsInteger;
   end;
 except
  on E:Exception do DoExcept(E, 'GetLastSiteChatID');
 end;
 SQLQuery.Free;
end;

function TSiteDB.SendChatToSite(ChatRec:TChatRecord):Boolean;
var SQLQuery:TSQLQuery;
begin
 Result:=False;
 if not Connected then Exit;
 SQLQuery:=TSQLQuery.Create(nil);
 SQLQuery.SQLConnection:=FSQL;
 with SQL.InsertInto(tableWPChat) do
  begin
   AddValueAsParam(fieldWPC_TIME);
   AddValueAsParam(fieldWPC_USER);
   AddValueAsParam(fieldWPC_USERID);
   AddValueAsParam(fieldWPC_CHANNEL);
   AddValueAsParam(fieldWPC_TEXT);
   AddValueAsParam(fieldWPC_IP);
   SQLQuery.SQL.Text:=GetSQL;
   EndCreate;
  end;
 try
  SQLQuery.Params.ParamValues[fieldWPC_TIME]:=IntToStr(DateTimeToUnix(ChatRec.Date, False));
  SQLQuery.Params.ParamValues[fieldWPC_USER]:=ChatRec.Player.GameName;
  SQLQuery.Params.ParamValues[fieldWPC_USERID]:='-1';
  SQLQuery.Params.ParamValues[fieldWPC_CHANNEL]:='game';
  SQLQuery.Params.ParamValues[fieldWPC_TEXT]:=ChatRec.Text;
  SQLQuery.Params.ParamValues[fieldWPC_IP]:='0.0.0.0';
  Result:=SQLQuery.ExecSQL > 0;
 except
  on E:Exception do DoExcept(E, 'SendChatToSite');
 end;
 SQLQuery.Free;
end;

end.
