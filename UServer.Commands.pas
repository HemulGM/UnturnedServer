unit UServer.Commands;

interface
 uses
  Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, UServer.Types;

 type
  TCommands = class
   private
    FAirdropMassCount:Byte;
    FGetPlayersID:TGetPlayersIDFunc;
    FLogHandler:TLogHandler;
    FSendCommandHandler:TSendCommandHandler;
    function GetSIDs:TStringList;
    procedure ExecuteCommand(Cmd:string);
    procedure Log(Text:string);
   public
    constructor Create;
    function GiveExpirienceAll(Amount:Cardinal):Word;
    function GiveItemAll(Item:string; Amount:Cardinal):Word;
    function GiveItemsAll(Items:TStringList; Amount:Cardinal):Word;
    function GiveMoneyAll(Amount:Cardinal):Word;
    function GiveVehicleAll(Vehicle:string):Word;
    function HealAll:Word;
    function KickAll(Reason:string):Word;
    function KillAll:Word;
    function TeleportAll(Target:TMapPlace):Word; overload;
    function TeleportAll(Target:TSteamID):Word; overload;
    procedure Admin(SteamID:TSteamID);
    procedure Airdrop;
    procedure AirdropMass;
    procedure Ban(SteamID:TSteamID; Reason:string; Duration:Cardinal);
    procedure Chat(Text:string; Color:TColor); overload;
    procedure GetAdmins;
    procedure GetBans;
    procedure GetPlayers;
    procedure Login(const Password:string);
    procedure Shutdown(Delay:Cardinal = 1);
    procedure GetPerms(SteamID:TSteamID);
    procedure Command(Data:string);
    procedure GetNowInfo;
    procedure Chat(Text:string; Color:TColor; SteamID:TSteamID); overload;
    procedure GiveExpirience(SteamID:TSteamID; Amount:Cardinal);
    procedure GiveItem(SteamID:TSteamID; Item:string; Amount:Cardinal);
    procedure GiveItems(SteamID:TSteamID; Items:TStringList; Amount:Cardinal);
    procedure GiveMoney(SteamID:TSteamID; Amount:Cardinal);
    procedure GiveVehicle(SteamID:TSteamID; Vehicle:string);
    procedure Heal(SteamID:TSteamID);
    procedure Kick(SteamID:TSteamID; Reason:string);
    procedure Kill(SteamID:TSteamID);
    procedure Mute(SteamID:TSteamID);
    procedure PermAdd(SteamID:TSteamID; Group:string);
    procedure PermRemove(SteamID:TSteamID; Group:string);
    procedure SetDay;
    procedure SetNight;
    procedure Slay(SteamID:TSteamID);
    procedure Spy(SteamID:TSteamID);
    procedure Storm;
    procedure Teleport(SteamID:TSteamID; Target:TMapPlace); overload;
    procedure Teleport(SteamID:TSteamID; Target:TSteamID); overload;
    procedure Unadmin(SteamID:TSteamID);
    procedure Unban(SteamID:TSteamID);
    property AirdropMassCount:Byte read FAirdropMassCount write FAirdropMassCount default 10;
    property GetPlayersID:TGetPlayersIDFunc read FGetPlayersID write FGetPlayersID;
    property LogHandler:TLogHandler read FLogHandler write FLogHandler;
    property SendCommandHandler:TSendCommandHandler read FSendCommandHandler write FSendCommandHandler;
  end;

implementation
 uses UServer.CommonFunc;

{ TCommands }

constructor TCommands.Create;
begin
 FAirdropMassCount:=10;
end;

procedure TCommands.GetAdmins;
begin
 ExecuteCommand('admins');
end;

procedure TCommands.GetBans;
begin
 ExecuteCommand('bans');
end;

procedure TCommands.GetNowInfo;
begin
 ExecuteCommand('GET NOW');
end;

procedure TCommands.GetPerms(SteamID: TSteamID);
begin
 ExecuteCommand('p "'+SteamID+'"');
end;

procedure TCommands.GetPlayers;
begin
 ExecuteCommand('players');
end;

function TCommands.GetSIDs:TStringList;
begin
 if not Assigned(FGetPlayersID) then Exit(TStringList.Create);
 FGetPlayersID(Result);
end;

function TCommands.GiveExpirienceAll(Amount: Cardinal): Word;
var Items:TStringList;
    i:Integer;
begin
 Result:=0;
 Items:=GetSIDs;
 if Items.Count <= 0 then Exit;
 for i:= 0 to Items.Count-1 do
  begin
   GiveExpirience(Items[i], Amount);
   Inc(Result);
  end;
end;

function TCommands.GiveItemAll(Item: string; Amount: Cardinal): Word;
var SIDs:TStringList;
    i:Integer;
begin
 Result:=0;
 SIDs:=GetSIDs;
 if SIDs.Count <= 0 then Exit;
 for i:= 0 to SIDs.Count-1 do
  begin
   GiveItem(SIDs[i], Item, Amount);
   Inc(Result);
  end;
end;

function TCommands.GiveItemsAll(Items: TStringList; Amount: Cardinal): Word;
var SIDs:TStringList;
    i:Integer;
begin
 Result:=0;
 SIDs:=GetSIDs;
 if SIDs.Count <= 0 then Exit;
 for i:= 0 to SIDs.Count-1 do
  begin
   GiveItems(SIDs[i], Items, Amount);
   Inc(Result);
  end;
end;

function TCommands.GiveMoneyAll(Amount: Cardinal): Word;
var Items:TStringList;
    i:Integer;
begin
 Result:=0;
 Items:=GetSIDs;
 if Items.Count <= 0 then Exit;
 for i:= 0 to Items.Count-1 do
  begin
   GiveMoney(Items[i], Amount);
   Inc(Result);
  end;
end;

function TCommands.GiveVehicleAll(Vehicle: string): Word;
var Items:TStringList;
    i:Integer;
begin
 Result:=0;
 Items:=GetSIDs;
 if Items.Count <= 0 then Exit;
 for i:= 0 to Items.Count-1 do
  begin
   GiveVehicle(Items[i], Vehicle);
   Inc(Result);
  end;
end;

function TCommands.HealAll:Word;
var Items:TStringList;
    i:Integer;
begin
 Result:=0;
 Items:=GetSIDs;
 if Items.Count <= 0 then Exit;
 for i:= 0 to Items.Count-1 do
  begin
   Heal(Items[i]);
   Inc(Result);
  end;
end;

function TCommands.KickAll(Reason:string):Word;
var Items:TStringList;
    i:Integer;
begin
 Result:=0;
 Items:=GetSIDs;
 if Items.Count <= 0 then Exit;
 for i:= 0 to Items.Count-1 do
  begin
   Kick(Items[i], Reason);
   Inc(Result);
  end;
end;

function TCommands.KillAll: Word;
var Items:TStringList;
    i:Integer;
begin
 Result:=0;
 Items:=GetSIDs;
 if Items.Count <= 0 then Exit;
 for i:= 0 to Items.Count-1 do
  begin
   Kill(Items[i]);
   Inc(Result);
  end;
end;

function TCommands.TeleportAll(Target: TSteamID): Word;
var Items:TStringList;
    i:Integer;
begin
 Result:=0;
 Items:=GetSIDs;
 if Items.Count <= 0 then Exit;
 for i:= 0 to Items.Count-1 do
  begin
   if Items[i] = Target then Continue;
   Teleport(Items[i], Target);
   Inc(Result);
  end;
end;

function TCommands.TeleportAll(Target: TMapPlace): Word;
var Items:TStringList;
    i:Integer;
begin
 Result:=0;
 Items:=GetSIDs;
 if Items.Count <= 0 then Exit;
 for i:= 0 to Items.Count-1 do
  begin
   Teleport(Items[i], Target);
   Inc(Result);
  end;
end;

procedure TCommands.Admin(SteamID:TSteamID);
begin
 ExecuteCommand('admin '+SteamID);
end;

procedure TCommands.Airdrop;
begin
 ExecuteCommand('airdrop');
 Log('Вызван Airdrop');
end;

procedure TCommands.AirdropMass;
var i:Integer;
begin
 for i:= 1 to FAirdropMassCount do ExecuteCommand('airdrop');
 Log('Вызван массовый Airdrop (x'+IntToStr(FAirdropMassCount)+')');
end;

procedure TCommands.Ban(SteamID:TSteamID; Reason:string; Duration:Cardinal);
begin
 {ban [SteamID | Player]/[Reason]/[Duration]}
 ExecuteCommand(Format('ban %s "%s" %d', [SteamID, Reason, Duration]));
 Log(Format('Отправлен в бан %s "%s" %d', [SteamID, Reason, Duration]));
end;

procedure ConvertForServerControlPlugin(var Text:string);
var i:Integer;
begin
 //Строчные
 Text:=Text.Replace('а', '/00');
 Text:=Text.Replace('б', '/01');
 Text:=Text.Replace('в', '/02');
 Text:=Text.Replace('г', '/03');
 Text:=Text.Replace('д', '/04');
 Text:=Text.Replace('е', '/05');
 Text:=Text.Replace('ё', '/06');
 Text:=Text.Replace('ж', '/07');
 Text:=Text.Replace('з', '/08');
 Text:=Text.Replace('и', '/09');
 Text:=Text.Replace('й', '/10');
 Text:=Text.Replace('к', '/11');
 Text:=Text.Replace('л', '/12');
 Text:=Text.Replace('м', '/13');
 Text:=Text.Replace('н', '/14');
 Text:=Text.Replace('о', '/15');
 Text:=Text.Replace('п', '/16');
 Text:=Text.Replace('р', '/17');
 Text:=Text.Replace('с', '/18');
 Text:=Text.Replace('т', '/19');
 Text:=Text.Replace('у', '/20');
 Text:=Text.Replace('ф', '/21');
 Text:=Text.Replace('х', '/22');
 Text:=Text.Replace('ц', '/23');
 Text:=Text.Replace('ч', '/24');
 Text:=Text.Replace('ш', '/25');
 Text:=Text.Replace('щ', '/26');
 Text:=Text.Replace('ъ', '/27');
 Text:=Text.Replace('ы', '/28');
 Text:=Text.Replace('ь', '/29');
 Text:=Text.Replace('э', '/30');
 Text:=Text.Replace('ю', '/31');
 Text:=Text.Replace('я', '/32');
 //Прописные
 Text:=Text.Replace('А', '/33');
 Text:=Text.Replace('Б', '/34');
 Text:=Text.Replace('В', '/35');
 Text:=Text.Replace('Г', '/36');
 Text:=Text.Replace('Д', '/37');
 Text:=Text.Replace('Е', '/38');
 Text:=Text.Replace('Ё', '/39');
 Text:=Text.Replace('Ж', '/40');
 Text:=Text.Replace('З', '/41');
 Text:=Text.Replace('И', '/42');
 Text:=Text.Replace('Й', '/43');
 Text:=Text.Replace('К', '/44');
 Text:=Text.Replace('Л', '/45');
 Text:=Text.Replace('М', '/46');
 Text:=Text.Replace('Н', '/47');
 Text:=Text.Replace('О', '/48');
 Text:=Text.Replace('П', '/49');
 Text:=Text.Replace('Р', '/50');
 Text:=Text.Replace('С', '/51');
 Text:=Text.Replace('Т', '/52');
 Text:=Text.Replace('У', '/53');
 Text:=Text.Replace('Ф', '/54');
 Text:=Text.Replace('Х', '/55');
 Text:=Text.Replace('Ц', '/56');
 Text:=Text.Replace('Ч', '/57');
 Text:=Text.Replace('Ш', '/58');
 Text:=Text.Replace('Щ', '/59');
 Text:=Text.Replace('Ъ', '/60');
 Text:=Text.Replace('Ы', '/61');
 Text:=Text.Replace('Ь', '/62');
 Text:=Text.Replace('Э', '/63');
 Text:=Text.Replace('Ю', '/64');
 Text:=Text.Replace('Я', '/65');
 //Спец.
 Text:=Text.Replace('"', '/66');
end;

procedure TCommands.Chat(Text: string; Color: TColor; SteamID:TSteamID);
var R, G, B:Byte;
    RGB:Integer;
begin
 ConvertForServerControlPlugin(Text);
 RGB:=ColorToRGB(Color);
 R:=GetRValue(RGB);
 G:=GetGValue(RGB);
 B:=GetBValue(RGB);
 ExecuteCommand(Format('cchat "%s" "%s" %d %d %d', [SteamID, Text, R, G, B]));
end;

procedure TCommands.Command(Data: string);
begin
 ExecuteCommand(Data);
 Log(Format('Выполнена команда %s', [Data]));
end;

procedure TCommands.Chat(Text: string; Color: TColor);
var R, G, B:Byte;
    RGB:Integer;
begin
 ConvertForServerControlPlugin(Text);
 RGB:=ColorToRGB(Color);
 R:=GetRValue(RGB);
 G:=GetGValue(RGB);
 B:=GetBValue(RGB);
 ExecuteCommand(Format('cchat "%s" %d %d %d', [Text, R, G, B]));
end;

procedure TCommands.ExecuteCommand(Cmd: string);
begin
 if not Assigned(FSendCommandHandler) then Exit;
 FSendCommandHandler(Cmd);
end;

procedure TCommands.GiveExpirience(SteamID: TSteamID; Amount: Cardinal);
begin
 ExecuteCommand(Format('experience %s %d', [SteamID, Amount]));
 Log(Format('Выдача опыта %s +%d', [SteamID, Amount]));
end;

procedure TCommands.GiveItem(SteamID: TSteamID; Item: string; Amount: Cardinal);
begin
 ExecuteCommand(Format('give %s %s %d', [SteamID, Item, Amount]));
 Log(Format('Выдача предмета %s %s по %d', [SteamID, Item, Amount]));
end;

procedure TCommands.GiveItems(SteamID: TSteamID; Items: TStringList; Amount: Cardinal);
var i:Integer;
begin
 for i:= 0 to Items.Count-1 do ExecuteCommand(Format('give %s %s %d', [SteamID, Items[i], Amount]));
 Log(Format('Выдача предметов %s %s по %d', [SteamID, Items.Text, Amount]));
end;

procedure TCommands.GiveMoney(SteamID: TSteamID; Amount: Cardinal);
begin
 ExecuteCommand(Format('pay %s %d', [SteamID, Amount]));
 Log(Format('Выдача денег (EP) %s +%d', [SteamID, Amount]));
end;

procedure TCommands.GiveVehicle(SteamID: TSteamID; Vehicle: string);
begin
 ExecuteCommand(Format('vehicle %s %s', [SteamID, Vehicle]));
 Log(Format('Выдача транспорта %s %s', [SteamID, Vehicle]));
end;

procedure TCommands.Heal(SteamID:TSteamID);
begin
 ExecuteCommand('heal '+SteamID);
 Log('Полное лечение '+SteamID);
end;

procedure TCommands.Kick(SteamID:TSteamID; Reason:string);
begin
 ExecuteCommand('kick '+SteamID+' "'+Reason+'"');
 Log('Выгнан с сервера '+SteamID);
end;

procedure TCommands.Kill(SteamID:TSteamID);
begin
 ExecuteCommand('kill '+SteamID);
 Log('Убит '+SteamID);
end;

procedure TCommands.Log(Text: string);
begin
 if Assigned(FLogHandler) then FLogHandler(Text);
end;

procedure TCommands.Login(const Password: string);
begin
 ExecuteCommand('login '+Password);
end;

procedure TCommands.Mute(SteamID: TSteamID);
begin
 ExecuteCommand('mute '+SteamID);
 Log('Игроку '+SteamID+' запрещён чат');
end;

procedure TCommands.PermAdd(SteamID:TSteamID; Group:string);
begin
 ExecuteCommand('p add '+SteamID+' '+Group);
 Log(SteamID+' добавлен в группу '+Group);
end;

procedure TCommands.PermRemove(SteamID:TSteamID; Group:string);
begin
 ExecuteCommand('p remove '+SteamID+' '+Group);
 Log(SteamID+' удалён из группы '+Group);
end;

procedure TCommands.SetDay;
begin
 ExecuteCommand('day');
 Log('Установлен день');
end;

procedure TCommands.SetNight;
begin
 ExecuteCommand('night');
 Log('Установлена ночь');
end;

procedure TCommands.Shutdown(Delay: Cardinal);
begin

end;

procedure TCommands.Slay(SteamID: TSteamID);
begin
 ExecuteCommand('slay '+SteamID);
 Log('Игрок '+SteamID+' убит, кикнут и отправлен в бан на год');
end;

procedure TCommands.Spy(SteamID: TSteamID);
begin
 ExecuteCommand('spy '+SteamID);
 Log('Слежение за игрой '+SteamID);
end;

procedure TCommands.Storm;
begin
 ExecuteCommand('weather storm');
 Log('Установлена/убрана пасмурная погода');
end;

procedure TCommands.Teleport(SteamID, Target:TSteamID);
begin
 ExecuteCommand('teleport '+SteamID+' "'+Target+'"');
 Log(SteamID+' телепортирован к '+Target);
end;

procedure TCommands.Teleport(SteamID: TSteamID; Target: TMapPlace);
begin
 ExecuteCommand('teleport '+SteamID+' "'+Target.Name+'"');
 Log(SteamID+' телепортирован в '+Target.Desc);
end;

procedure TCommands.Unadmin(SteamID: TSteamID);
begin
 ExecuteCommand('unadmin '+SteamID);
 Log('Удалён админ '+SteamID);
end;

procedure TCommands.Unban(SteamID: TSteamID);
begin
 ExecuteCommand('unban '+SteamID);
 Log('Разбанен '+SteamID);
end;

end.
