unit VK.Classes;

interface
 uses System.Classes, IdGlobal, IdHTTP, IdSSLOpenSSL;

 type
  TVKGroup = class
  private
   FHTTP:TIdHTTP;
   FGroupID:string;
   FLogin:string;
   FPassword:string;
   FToken:string;
   FLastPostId:string;
   FTokenAllow:Boolean;
   function GetToken(var AToken: string):Boolean;
  public
   property TokenAllow:Boolean read FTokenAllow;
   property LastPostId:string read FLastPostId;
   function Post(Text:string; Attach:string = ''):Boolean;
   function DeletePost(PostId:string):Boolean;
   function GetLastPostId(var PostId:string):Boolean;
   function Open(const Login, Password, GID:string):Boolean;
   constructor Create;
 end;

implementation

{ TVKGroup }

constructor TVKGroup.Create;
begin
 FTokenAllow:=False;
 FLastPostId:='';
 FHTTP:=TIdHTTP.Create(nil);
 FHTTP.IOHandler:=TIdSSLIOHandlerSocketOpenSSL.Create(nil);
 FHTTP.IOHandler.MaxLineAction:=maException;
 FHTTP.IOHandler.Port:=0;
 TIdSSLIOHandlerSocketOpenSSL(FHTTP.IOHandler).DefaultPort:=0;
 FHTTP.AllowCookies:=True;
 FHTTP.HandleRedirects:=True;
 FHTTP.HTTPOptions:=[hoForceEncodeParams];
end;

function Pars(st, st_begin, st_end:string):string;
begin
 if Pos(st_begin, st) <> 0 then Delete(st, 1, Pos(st_begin, st) + Length(st_begin)-1) else Exit('');
 if Pos(st_end, st) <> 0 then Delete(st, Pos(st_end, st), Length(st)) else Exit('');
 Result:=st;
end;

function TVKGroup.DeletePost(PostId: string): Boolean;
var Response:string;
begin
 Result:=False;
 try
  Response:=FHTTP.Get('https://api.vk.com/method/wall.delete?owner_id=-'+FGroupId+'&post_id='+PostId+'&access_token='+FToken);
 except
  Exit;
 end;
 Result:=True;
end;

function TVKGroup.GetLastPostId(var PostId: string): Boolean;
var Response:string;
begin
 Result:=False;
 try
  Response:=FHTTP.Get('https://api.vk.com/method/wall.get?owner_id=-'+FGroupId+'&access_token='+FToken+'&offset=1');
 except
  Exit;
 end;
 PostId:=Pars(Response, '"id":', ',"');
 Result:=PostId <> '';
end;

function TVKGroup.GetToken(var AToken:string):Boolean;
var Response, temp:string;
begin
 Result:=False;
 try                                                   //2274003 - hHbZxrka2uZ6jB1inYsH
  Response:=FHTTP.Get('https://oauth.vk.com/token?grant_type=password&client_id=2274003&scope=wall&client_secret=hHbZxrka2uZ6jB1inYsH&username='+FLogin+'&password='+FPassword);
 except
  Exit;
 end;
 if Pos('token', Response) = 0 then Exit;
 temp:=Copy(Response, Pos('access_token":"', Response), Pos('","expires_in', Response)-3);
 Delete(temp, 1, 15);
 AToken:=temp;
 Result:=True;
end;

function TVKGroup.Open(const Login, Password, GID: string): Boolean;
begin
 Result:=False;
 FLogin:=Login;
 FPassword:=Password;
 FGroupID:=GID;
 try
  FTokenAllow:=GetToken(FToken);
 except
  Exit;
 end;
 Result:=FTokenAllow;
end;

function TVKGroup.Post(Text, Attach: string): Boolean;
var Response:string;
    Info:TStringList;
begin
 Result:=False;
 try
  Info:=TStringList.Create;
  try
   Info.Add('owner_id=-'+FGroupId);
   Info.Add('from_group=1');
   Info.Add('access_token='+FToken);
   Info.Add('message='+Text);
   Info.Add('attachments='+Attach);
   Response:=FHTTP.Post('https://api.vk.com/method/wall.post', Info);
  finally
   Info.Free;
  end;
 except
  Exit;
 end;

 if Pos('post_id', Response) > 0 then //Response '{"response":{"post_id":466}}'
  begin
   Delete(Response, Length(Response)-1, 2);
   FLastPostId:=Copy(Response, Pos('post_id":', Response)+9, 10);
   Result:=True;
  end
 else
  begin
   FLastPostId:='';
   Result:=False;
  end;
end;

end.
