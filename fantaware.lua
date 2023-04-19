
local uiLoader = loadstring(game:HttpGet('https://raw.githubusercontent.com/v9h/fantaware-demo/main/ui-lib.lua'))
-- snag ui lib,obviously stole this
local ui = uiLoader({
    rounding = false,
    theme = 'orange',
    smoothDragging = false
})

ui.autoDisableToggles = true 
local window = ui.newWindow({
    text = 'FantaWare [DEMO]',
    resize = true, 
    size = Vector2.new(550, 376), 
    position = nil
})

local menu2 = window:addMenu({
    text = "Boombox"
})
    local section2 = menu2:addSection({
        text = 'Antilog',
        side = 'auto',
        showMinButton = true, 
    })
    local textbx = section2:addTextbox({
        text = 'ID here (press enter)'
    }):bindToEvent('onFocusLost', function(text) 
  local assetid = text;
local cth = function(x)return string.format("%%%02X", string.byte(x))end
     function urlencode(url)
      if url == nil then
        return
      end 
      url = url:gsub("\n", "\r\n")
      url = url:gsub(".", cth)
      url = url:gsub(" ", "+")
      return url
    end
local c = game.Players.LocalPlayer.Character

local b = game.Players.LocalPlayer.Backpack
--please stop copying this vv
local b1 = [[0&assetName= <? FantaWare ?> 

<? https://discord.gg/eKqxfHRUGp ?>

<?setsecurehash==448cf04ab79794714dcc17b31de6c7a04919bce5b273d12ef03f17c5a14eeec397cfe2134116ed4ec644d3aeff7f793b6ac757d462c8f9a9d6cc8916f3b6f564>&Id+%.=6032818347&+Id+%.=14885969541&Id%.=60328183475&Id+.=636534654723&+Id+%.=6958772756113
950F1D439801CB56997730AA0023FE00E77EEE4CC5"><Properties><string name:"Name">%38%33%00%38%37%32%38%34%37%36%39%32%32%00%36%37%39%35%33%38%36%39%33%36%00%34%36%32%32%32%36%37%32%31%31%00%31%39%38%35%32%33%39%33%35%35%00%34%32%31%37%39%32%32%34%39%31%00%30%37%35%37%33%30%36%31%34%30%00%30%39%38%34%37%36%34%30%39%32%00%31%39%39%33%37%32%32%31%33%33%00%35%34%31%36%39%32%36%35%30%34%00%38%33%34%30%36%36%39%37%30%34%00%31%37%32%32%32%37%38%36%37%30%00%38%39%32%39%36%38%33%31%35%35%00%37%39%30%32%39%38%30%36%33%32%00%39%34%38%34%37%35%32%32%34%31%00%37%34%37%31%37%37%34%35%32%30%00%34%39%36%36%33%35%35%33%33%32%00%30%39%36%30%37%32%36%35%33%33%00%38%39%30%37%32%39%35%37%35%36%00%36%32%37%33%33%31%33%35%37%32%00%36%31%34%36%37%37%32%31%33%36%00%39%38%39%33%36%32%33%30%35%39%00%34%34%37%33%33%38%33%38%38%32%00%31%33%33%39%32%39%33%39%32%30%00%31%37%38%37%32%38%34%33%35%31%00%32%34%33%36%38%37%36%34%36%37%00%36%34%36%31%36%36%39%39%30%37<xmladdback=false>%00%37%31%35%31%32%32%32%34%35%31%00%34%34%39%30%31%38%35%32%35%33%00%32%33%33%32%35%36%35%38%35%30%00%36%31%37%35%32%35%33%35%38%34%00%39%39%32%37%38%39%31%34%36%37%00%38%37%32%32%38%38%32%30%37%34%00%36%33%37%34%33%39%34%35%37%39%00%34%35%30%31%36%34%30%36%36%32%00%34%34%35%31%34%36%36%30%37%31%00%37%30%38%35%34%36%31%32%33%36%00%32%31%34%39%31%38%30%36%33%30%00%31%37%31%31%38%30%39%33%38%31%00%35%34%36%31%34%33%39%36%38%34%00%36%35%38%39%32%37%39%31%33%36%00%35%36%39%39%33%36%32%38%39%39%00%38%37%38%34%34%33%38%33%38%34%00%34%31%34%34%34%39%37%34%33%38%00%39%30%37%31%35%38%32%33%36%34%00%38%35%36%37%38%38%33%39%35%37%00%37%35%35%33%33%32%30%34%33%33%00%39%33%32%38%30%35%37%39%31%30%00%31%35%30%34%35%38%38%31%33%32%00%33%38%36%33%37%36%32%32%36%35%00%39%33%32%31%37%37%32%30%35%33%00%31%35%39%32%31%31%32%31%37%37%00%35%35%37%39%32%34%31%33%32%35%00%36%32%35%39%36%32%39%36%31%37%00%32%32%36%38%30%31%37%35%33%36%00%34%36%34%30%33%39%38%30%35%32%00%36%34%31%36%38%38%31%33%36%37%00%30%38%36%34%38%34%38%36%31%30%00%38%34%37%37%39%34%39%39%31%38%00%37%38%36%39%34%39%38%32%35%32%00%34%32%32%30%36%30%34%35%38%33%00%39%35%35%38%35%36%31%31%33%32%00%35%39%32%30%30%33%39%30%39%31%00%31%31%31%30%36%35%34%30%35%37%00%33%37%34%36%33%34%35%38%39%37%00%33%35%35%36%37%35%32%33%33%37%00%33%39%38%31%32%38%38%39%36%34%00%37%31%32%35%37%32%35%35%39%30%00%37%32%39%39%33%39%32%30%36%39%00%34%37%34%35%30%38%32%32%33%34%00%32%30%38%36%34%39%35%33%36%31%00%30%35%30%35%38%31%39%38%37%36%00%30%33%32%32%36%31%39%39%30%30%00%37%31%35%38%34%37%34%38%35%32%00%34%34%32%36%36%30%39%36%34%35%00%33%35%36%34%30%39%36%34%34%37%00%39%31%31%34%38%30%36%32%33%31%00%32%39%33%34%30%30%30%35%37%36%00%31%34%30%38%31%33%33%30%39%31%00%36%32%33%39%34%38%33%30%33%38%00%31%37%33%39%30%39%34%33%38%34%00%36%36%33%36%36%38%36%36%37%36%00%34%32%36%38%36%31%34%31%39%30%00%<setxml-asset:false>39%35%32%38%36%39%33%38%36%39%00%39%30%31%32%36%36%34%34%32%33%00%30%38%39%30%36%31%30%35%33%36%00%32%34%35%32%34%30%39%30%39%38%00%31%38%32%31%31%30%30%34%31%34%00%30%39%32%36%38%30%33%35%34%35%00%39%30%38%31%32%36%30%39%36%35%00%38%38%39%35%30%36%30%30%36%30%00%30%33%31%34%32%36%36%33%38%32%00%38%34%32%38%34%39%33%33%33%39
</string><BinaryString name:"Tags"></BinaryString><string name:"Value"></string></Properties>
<Item class:"Sound" referent:"RBX424B5BFFD902A205FE47B1C1EC72FFB4F838E6B5D0931C"><Properties>
<Content name:"SoundId"><url>http://www.roblox.com/asset/?id:0xC2AF</url></Content><string name:"Name">36%31%34%32%33%34%37%39%37%00%33%32%36%30%39%30%33%33%39%38%00%30%33%39%33%35%34%30%30%33%37%00%38%33%35%33%39%33%31%36%39%38%00%38%32%30%31%35%30%39%30%30%34%00%37%30%32%39%33%33%37%32%36%38%00%37%30%35%38%31%36%36%37%32%32%00%34%32%32%38%33%31%36%38%38%32%00%32%31%39%32%35%36%36%35%37%30%00%32%37%30%34%34%37%34%32%30%32%00%30%34%39%30%31%36%38%31%31%36%00%37%39%36%37%32%39%33%33%32%39%00%34%31%33%39%35%30%38%32%38%32%00%39%38%32%39%32%37%35%36%30%39%00%33%33%39%30%36%39%36%36%32%38<penis-setting=large>%00%33%32%37%36%39%33%34%37%31%33%00%39%35%35%32%36%35%34%34%30%33%00%39%35%31%39%32%39%32%37%32%36%00%33%35%32%33%30%35%38%37%37%39%00%36%34%32%35%38%34%35%33%39%31%00%31%32%39%38%32%37%36%36%32%32%00%35%31%30%38%33%39%30%35%32%37%00%38%36%31%30%35%31%39%36%34%38%00%38%31%37%32%38%33%36%36
</string><BinaryString name:"Tags"></BinaryString></Properties></Item></Item></Item></roblox>                                   
rbxassetid://=a6ac204407a2cb2e8e6673f678911d0cf3a7d2e63f4dacde53e4532f58cdd097g%34%39%36%37%32%32%00%31%32%30%33%30%38%39%36%32%34%00%32%33%38%30%34%33%33%35%31%39%00%36%32%32%36%39%39%39%30%38%37%00%38%31%31%36%34%39%38%37%39%38%00%32%30%30%33%37%38%39%34%30%39%00%34%30%36%35%32%31%34%33%33%32%00%31%36%31%36%31%33%39%38%32%31%00%37%35%34%37%33%33%33%39%33%35%00%31%39%35%39%31%38%36%32%36%30%00%39%35%35%31%30%39%35%38%31%33%00%36%33%30%35%33%33%30%39%35%32%00%32%36%34%35%34%38%37%39%34%37%00%31%30%34%32%37%32%39%33%35%35%00%30%30%32%34%39%34%36%39%35%38%00%32%36%37%36%33%33%39%39%34%30%00%30%34%36%33%33%35%33%31%33%31%00%39%32%30%32%37%31%30%38%33%32%00%35%36%30%33%36%39%38%33%37%36%00%36%37%35%39%35%37%34%37%34%30%00%36%31%35%33%32%37%37%37%39%38%00%35%30%32%31%33%34%37%39%39%31%00%33%35%35%35%36%32%39%38%35%31%00%37%38%30%35%38%36%31%34%33%31%00%37%32%31%39%38%35%37%34%36%36%00%32%37%31%36%38%32%32%39%30%35%00%38%37%38%37%37%39%39%33%38%37%00%30%39%32%37%34%35%37%30%35%31%00%37%38%30%31%36%30%31%38%33%38%00%36%36%36%37%30%32%32%30%39%35%00%39%37%38%39%37%34%35%33%39%38%00%36%33%32%32%31%39%35%37%37%36%00%37%35%39%35%38%34%34%33%38%37%00%36%35%32%37%33%34%36%33%37%33%00%37%30%38%31%30%31%31%36%39%37%00%39%31%33%37%35%32%36%39%36%31%00%33%32%37%39%36%33%31%34%36%39%00%35%32%37%35%33%38%31%39%34%37%00%30%30%34%34%37%34%38%38%38%37%00%34%35%38%35%35%38%37%35%38%33%00%33%30%32%33%34%39%34%37%38%39%00%34%39%38%38%37%38%34%39%39%38%00%34%35%34%38%32%30%36%38%36%31%00%36%39%37%35%32%38%34%37%36%38%00%37%39%34%37%31%38%38%33%38%30%00%38%37%33%33%33%35%39%35%36%31%00%31%34%34%31%32%36%39%32%37%37%00%32%32%31%39%38%39%39%32%34%33%00%39%31%32%33%34%32%35%35%37%39%00%30%37%38%30%38%31%36%32%37%37%00%39%37%36%32%32%39%34%35%32%30%00%33%39%33%37%36%31%30%35%31%33%00%33%34%39%36%34%34%30%38%31%38%00%32%31%32%36%32%38%39%39%30%35%00%32%38%30%38%36%36%30%34%38%30%00%31%34%36%34%36%31%38%34%36%30%00%31%36%31%33%31%39%35%32%38%36%00%38%38%34%36%33%37%38%35%30%32%00%<antilogmode=expensive>33%33%37%32%37%35%30%35%34%33%00%31%31%33%30%33%36%35%39%36%31%00%34%36%33%35%34%30%37%35%30%36%00%39%30%30%31%36%33%39%31%38% name:"Tags"></BinaryString><string name:"Value"></string></Properties><Item class:"Sound" referent:"RBXE79B6324940C4ACA83CE8EAE08DDE034"><Properties><Content name:"SoundId"><url>http://www.roblox.com/asset/?id:</url></Content><string name:"Name"></string><BinaryString name:"Tags"></BinaryString></Properties></Item></Item></Item></roblox>                                                                                   41%25%46%42%60%F3%AE%BD%8A%F3%8E%8D%B398398bf21142f0e52137b0853f31ebb4e45e0976b8e80ebb9d6579669b42583ade02da3858d712902673f8e9e30583freturn(function(Ee,tY,PY,yY,aY,UY,Xe,GY,RY,CY,lY,TY,uY,oe,jY,iY,YY,vY,Ke,Te,OY,IY,hY,WY,BY,wY,fY,gY,HY,xY,te,pY,VY,DY,cY,ZY,be,mY,LY,zY,Ne,Me,de,FY,qY,oY,nY,xe,Oe,rY,eY,JY,ge,we,MY,De,sY,me,SY,kY,AY,QY,...)local X,d,K,t=tY,mY,TY,OY;local m,T=oY[MY],oY[wY];local o,M=oY[DY],(xY);local E=gY;local x,g=UY,AY;local O=oY[zY];local b,N=RY,(YY);local U,A=jY,(sY);local z=(HY or vY);local w,D=oY[FY],BY[WY];local R=IY;local j,s,H,v,F=PY,PY,PY,PY,PY;for tT=0,5 do do if tT<=2 then if tT<=0 then j=(pY and pY()or CY);else if tT~=1 then s={};else end;end;else if not(tT<=3)then do if tT~=4 then else end;end;else H=1;end;end;end;end;local KY,W=0,PY;do while(lY)do if KY~=0 then VY=M(m(VY,5),SY,function(YN)do if T(YN,2)~=72 then local Rz=O(N(YN,16));if not(W)then return Rz;else local z_=PY;local t_=2;repeat if not(t_<=0)then if t_~=1 then z_=o(Rz,W);t_=0;else return z_;end;else W=PY;t_=1;end;until(yY);end;else local X8=(1);repeat if X8==0 then return QY;else W=N(m(YN,1,1));X8=0;end;until(yY);end;end;end);break;else KY=1;end;end;end;local I=function()local Xg=T(VY,H,H);H=H+1;do return Xg;end;end;local P,p,C,V,l=PY,PY,PY,PY,(PY);for cX=0,4 do if not(cX<=1)then if not(cX<=2)then if cX~=3 then l=C-1;else do V=2^52;end;end;else C=iY;end;else do if cX~=0 then do p=2147483648;end;else P=function()local Nw,uw,gw,sw=T(VY,H,H+3);H=H+4;do return sw*16777216+gw*65536+uw*256+Nw;end;end;end;end;end;end;KY=2;local S,Q=PY,PY;do repeat if not(KY<=0)then if KY~=1 then S={[0]=1};do KY=0;end;else Q=function(C4,q4,U4)local c4=(PY);local R4=1;while(lY)do if not(R4<=0)then if R4~=1 then do return c4;end;else do c4=(q4/S[U4])%S[C4];end;do R4=0;end;end;else do c4=c4-c4%1;end;R4=2;end;end;end;KY=3;end;else do local XB=2;for nA=1,31 do local yA=1;while yA<2 do if yA~=0 then do(S)[nA]=XB;end;do yA=0;end;else XB=XB*2;yA=2;end;end;end;end;do KY=1;end;end;until KY==3;end;KY=0;local y,i,G=PY,PY,(PY);while(lY)do if KY<=0 then do y=function()local n7,Y7,Z7=1,PY,(PY);while(lY)do if not(n7<=0)then if n7~=1 then if Z7>=p then do Z7=Z7-C;end;end;n7=0;else Y7,Z7=P(),P();n7=2;end;else do return Z7*C+Y7;end;end;end;end;end;KY=1;else if KY~=1 then G={[0]={[0]=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15},{[0]=1,0,3,2,5,4,7,6,9,8,11,10,13,12,15,14},{[0]=2,3,0,1,6,7,4,5,10,11,8,9,14,15,12,13},{[0]=3,2,1,0,7,6,5,4,11,10,9,8,15,14,13,12},{[0]=4,5,6,7,0,1,2,3,12,13,14,15,8,9,10,11},{[0]=5,4,7,6,1,0,3,2,13,12,15,14,9,8,11,10},{[0]=6,7,4,5,2,3,0,1,14,15,12,13,10,11,8,9},{[0]=7,6,5,4,3,2,1,0,15,14,13,12,11,10,9,8},{[0]=8,9,10,11,12,13,14,15,0,1,2,3,4,5,6,7},{[0]=9,8,11,10,13,12,15,14,1,0,3,2,5,4,7,6},{[0]=10,11,8,9,14,15,12,13,2,3,0,1,6,7,4,5},{[0]=11,10,9,8,15,14,13,12,3,2,1,0,7,6,5,4},{[0]=12,13,14,15,8,9,10,11,4,5,6,7,0,1,2,3},{[0]=13,12,15,14,9,8,11,10,5,4,7,6,1,0,3,2},{[0]=14,15,12,13,10,11,8,9,6,7,4,5,2,3,0,1}               
 %44%25%46%38%58%32%E4%8F%B7%3D%36%37%32%32%35%32%30%32%34%34?%70%6B%63%73%42%69%6E%61%72%79=%30%00?%69%64=00000000005641392637?
&+securehash=03bf34ee2c4cbce8e95747c48bfcba15c69d1e85059078cc3c978c45e46a76fed821e6698174e5f49ba2f2ed1fd896cfba9b611de980d983ca97e9bc9f1e9dcf                          
&+secureassetid=1d40106ea3419cd41baca5be4aa5b957b9ae63b4f50ac27d713107cb2d88ed4645611312eae4cbfc34e5ed4c4df274785faeda14657d9501e9d6d7efdda3d67f
userassetid%9M%25%43%31%25%46%32%25%42%32%25%46%42%25%44%39%25%46%38%25%45%30%25%46%45%25%42%37%25%46%44%EF%9B%B7%%32%34%33%37%35%00%36%32%39%30%34%36%34%34%35%37%00%35%33%34%36%30%39%34%34%37%39%00%34%38%30%37%38%35%36%32%37%33%00%32%39%38%30%30%36%35%33%35%38%00%35%36%33%36%32%39%30%35%37%37%00%34%30%36%34%39%30%36%36%36%35%00%34%33%36%31%34%37%32%35%35%32%00%35%36%37%31%37%31%30%31%32%39%00%34%30%35%33%37%33%38%33%30%31%00%32%37%39%39%38%31%36%35%33%38%00%30%36%39%31%38%34%34%31%35%36%00%31%30%32%35%38%36%38%31%37%35%00%34%37%31%39%32%31%30%36%30%31%00%30%34%37%30%38%30%31%39%31%39%00%37%37%39%32%30%38%35%30%35%39%00%31%31%31%30%34%31%37%39%36%32%00%30%35%39%35%32%37%32%37%37%31%00%34%37%34%32%35%35%35%30%35%33%00%38%32%38%39%31%32%35%34%31%31%00%34%35%34%35%39%32%39%30%39%32%00%36%35%31%31%30%36%37%35%30%32%00%38%39%37%38%39%36%30%32%37%34%00%36%37%30%30%33%32%39%33%35%32%00%38%30%30%32%36%38%35%37%39%30%00%31%37%32%30%34%34%32%36%31%34%00%30%38%34%32%30%35%32%30%33%34%00%34%37%33%39%30%39%30%38%31%37%00%30%38%35%34%37%33%38%33%32%37%00%31%38%34%30%33%32%38%35%39%38%00%37%38%30%32%37%31%34%36%30%34%00%35%33%37%31%30%
%33%36%36%35%33%00%35%34%38%33%37%34%35%33%35%30%00%37%37%31%33%39%32%37%35%36%30%00%31%36%34%31%31%37%38%38%39%35%00%30%34%32%38%38%33%34%35%35%32%00%32%37%32%37%32%39%39%33%33%36%00%<assetcall;mode=xml>32%37%30%30%36%30%37%34%31%38%00%32%33%39%31%31%39%39%32%39%39%00%39%32%38%31%37%32%32%30%38%39%00%31%30%30%33%37%34%32%39%31%34%00%35%39%37%35%38%34%36%37%38%35%00%34%38%35%32%30%37%32%36%38%32%00%31%37%30%31%39%39%38%31%32%37%00%35%31%30%37%31%34%30%35%35%39%00%39%32%31%39%38%31%37%39%32%33%00%37%33%30%39%32%31%37%34%36%36%00%31%36%34%38%38%35%30%35%36%34%00%34%31%34%38%36%32%30%34%36%32%00%34%38%35%37%32%39%35%33%30%32%00%39%34%38%33%37%31%34%33%39%35%00%39%30%32%37%34%30%30%31%32%30%00%38%37%38%31%37%34%38%36%31%39%00%34%39%32%37%36%32%33%39%33%34%00%35%39%38%31%38%33%34%33%33%33%00%35%36%38%38%32%31%33%34%30%37%00%32%34%33%34%31%35%32%34%36%31%00%37%33%37%32%30%31%32%38%32%34%00%30%33%39%32%32%34%35%39%37%33%00%34%38%30%30%36%39%34%36%34%37%00%32%38%36%32%38%34%32%33%34%31%00%37%31%34%32%32%39%37%34%30%37%00%32%35%39%32%34%38%36%31%38%30%00%34%34%34%33%35%36%30%30%39%36%00%33%38%35%32%37%30%36%35%33%39%00%35%34%38%31%38%32%34%34%37%34%00%34%30%38%33%37%39%36%37%38%34%00%36%34%32%35%38%32%31%33%35%32%00%35%34%36%39%30%35%31%34%30%35%00%31%33%39%35%30%31%31%34%34%30%00%39%35%32%37%30%30%34%31%30%39%00%36%38%39%30%39%31%33%38%33%32%00%37%31%31%38%33%30%33%31%31%38%00%31%39%31%39%39%30%37%34%30%38%00%30%35%33%36%31%39%31%34%36%33%00%35%33%36%36%34%36%32%30%36%32%00%37%38%35%38%39%32%33%36%33%32%00%33%39%35%32%30%35%30%33%30%31%00%38%39%33%31%33%33%37%34%34%30%00%31%37%31%33%34%36%34%31%32%38%00%30%36%31%38%35%30%36%36%35%30%00%39%35%36%35%35%38%30%30%36%31%00%35%31%38%39%35%39%32%34%37%36%00%34%31%30%37%31%34%36%35%36%34%00%35%35%31%39%37%33%38%39%36%33%00%32%32%38%37%36%36%35%38%32%32%00%37%34%37%31%34%33%35%32%38%37%00%39%30%33%35%31%31%38%33%37%39%00%31%37%32%30%34%30%36%35%39%34%00%38%33%34%30%30%30%39%32%39%31%00%31%34%39%30%34%35%35%34%33%32%00%36%38%35%31%31%38%31%36%34%32%00%34%36%30%39%32%35%36%37%34%31%00%32%37%38%37%34%31%37%33%39%32%00%33%39%39%34%34%38%30%39%37%35%00%32%35%39%37%39%36%34%37%31%35%00%39%30%31%36%39%32%30%35%32%37%00%33%30%34%39%36%36%30%31%39%34%00%37%35%32%32%32%30%35%34%38%31%00%37%36%31%33%31%31%34%33%37%33%00%35%30%30%33%38%37%32%38%37%35%00%35%33%38%30%37%35%31%34%30%31%00%30%37%36%35%31%37%39%31%31%34%00%37%35%39%33%39%34%32%35%39%38%00%35%34%39%39%32%30%37%37%36%36%00%30%33%35%39%36%32%39%34%38%31%00%37%34%38%38%34%36%37%36%35%35%00%35%34%31%32%38%36%37%32%36%32%00%31%38%31%34%32%32%37%31%38%30<phpasset=?php></p>%00%35%32%32%38%38%36%32%37%36%39%00%32%31%38%34%38%30%35%38%37%30%00%34%39%37%36%31%31%32%36%34%32%00%34%33%30%31%37%36%39%39%36%39%00%35%32%39%36%39%30%31%34%39%31%00%<xmlasset=true>36%38%32%38%34%38%36%33%31%39%00%38%35%39%30%34%38%37%32%33%32%00%34%36%37%34%30%37%31%37%30%35%00%31%34%37%34%35%33%39%39%35%37%00%39%34%35%34%34%39%36%30%33%31%00%39%39%37%35%34%39%32%36%31%33%00%37%31%39%38%37%37%32%31%35%30%00%34%30%30%36%34%38%32%39%32%31%00%31%37%36%39%34%35%32%34%35%34%00%58%E4%A2%BB%7B%F1%A1%BC%B6%42%3D%37%34%33%30%37%32%34%34%30%30?pkcsOrigin=0&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
&+Id%.=3481283917&clientinsert=1%00id=0&Id+%.=1023183424&%I+d.=4391382913&Id+%.=6032818347&Id%+.=]]

    
local b2 = [[%%26%69%64=%30%30%37%30%36%31%31%30%37%39%36%34%0%30%&%id=?&%I+d.=4391382913&
&&Id+%.=6032818347Sound&+Id%.=3481283917&clientinsert=1&%I+d.=4391382913placeid=6666666666666666666&Id+%.=6032818347&
clientinsert=1%00id=0&%id=?&%00shared=https://soundcloud.com/djpwndu/think-about-the-end
&%I+d.=4391382913&%secureclientinsert=63c0aeea824795e964fbc01177f617747ac2258e1b3f1b944955e8019bbb11eecbcbf53cfd0b0ac195a1eaab51823ea1234be6569cb35dc4b24d9034e95bacdc
73%39%36%39%31%35%%69%64=%30%30%36%37%30%39%39%30%35%30%39%31%%26%69%64=%30%30%36%37%39%37%35%30%36%37%38%33%%26%69%64=%30%30%36%37%30%31%31%37%32%33%32%37%%26%69%64=%30%30%36%37%34%30%38%35%33%37%38%34%%26%69%64=%30%30%36%37%30%36%34%30%31%33%38%31%%26%69%64=%30%30%36%37%30%35%34%34%30%36%37%34%%26%69%64=%30%30%36%37%30%36%34%31%37%39%30%33%%26%69%64=%30%30%36%37%37%36%36%34%31%37%34%38%%26%69%64=%30%30%36%37%39%32%30%36%38%37%36%31%%26%69%64=%30%30%36%37%36%32%39%31%39%31%39%34%%26%69%64=%30%30%36%37%31%34%34%37%37%39%36%38%%26%69%64=%30%30%36%37%38%34%31%32%38%30%36%30%%26%69%64=%30%30%36%37%31%33%38%38%35%30%30%37%%26%69%64=%30%30%36%37%34%32%35%35%31%35%32%32%%26%69%64=%30%30%36%37%32%37%32%39%36%30%35%37%%26%69%64=%30%30%36%37%31%37%36%37%35%32%32%31%%26%69%64=%30%30%36%37%31%32%39%36%38%32%30%31%%26%69%64=%30%30%36%37%39%32%34%35%35%38%39%37%%26%69%64=%30%30%36%37%32%34%39%39%39%32%30%30%%26%69%64=%30%30%36%37%34%34%36%32%35%36%30%39%%26%69%64=%30%30%36%37%32%32%34%34%39%36%32%37%%26%69%64=%30%30%36%37%34%31%34%30%31%31%35%32%%26%69%64=%30%30%36%37%31%32%36%38%36%34%35%34%%26%69%64=%30%30%36%37%34%34%30%39%32%39%31%38%%26%69%64=%30%30%36%37%38%37%33%37%39%30%33%34%%26%69%64=%30%30%36%37%30%39%32%32%35%33%31%30%%26%69%64=%30%30%36%37%33%33%32%38%39%38%37%30%%26%69%64=%30%30%36%37%38%32%35%37%31%38%33%33%%26%69%64=%30%30%36%37%33%39%39%39%35%33%39%32%%26%69%64=%30%30%36%37%38%39%30%33%39%30%35%36%%26%69%64=%30%30%36%37%38%35%32%38%37%38%38%31%%26%69%64=%30%30%36%37%38%36%38%33%31%32%34%31%%26%69%64=%30%30%36%37%31%38%34%36%32%38%37%33%%26%69%64=%30%30%36%37%37%30%34%33%38%37%31%34%%26%69%64=%30%30%36%37%35%31%39%30%34%34%36%35%%26%69%64=%30%30%36%37%35%38%38%35%36%39%36%36%%26%69%64=%30%30%36%37%36%34%37%36%30%30%34%36%%26%69%64=%30%30%36%37%37%36%38%34%38%37%38%32%%26%69%64=%30%30%36%37%34%33%37%39%39%31%31%34%%26%69%64=%30%30%36%37%37%32%34%30%32%31%33%30%%26%69%64=%30%30%36%37%37%35%33%31%30%34%39%39%%26%69%64=%30%30%36%37%36%38%30%35%30%33%39%37%%26%69%64=%30%30%36%37%36%38%36%35%33%39%34%30%%26%69%64=%30%30%36%37%38%33%34%38%35%33%35%30%%26%69%64=%30%30%36%37%38%36%34%37%38%39%38%33%%26%69%64=%30%30%36%37%34%35%38%36%37%32%38%39%%26%69%64=%30%30%36%37%38%37%35%31%34%35%37%31%%26%69%64=%30%30%36%37%38%32%36%38%36%31%31%37%%26%69%64=%30%30%36%37%30%39%36%35%35%32%34%38%%26%69%64=%30%30%36%37%38%37%34%33%37%31%33%38%%26%69%64=%30%30%36%37%34%35%34%33%31%35%35%38%%26%69%64=%30%30%36%37%36%30%31%38%38%30%32%36%%26%69%64=%30%30%36%37%37%36%38%30%38%39%36%37%%26%69%64=%30%30%36%37%33%35%38%33%32%32%39%37%%26%69%64=%30%30%36%37%33%30%32%39%37%39%36%37%%26%69%64=%30%30%36%37%30%37%36%39%38%34%38%36%%26%69%64=%30%30%36%37%33%36%33%34%38%31%39%39%%26%69%64=%30%30%36%37%31%38%30%32%34%35%38%30%%26%69%64=%30%30%36%37%38%37%38%33%37%30%34%35%%26%69%64=%30%30%36%37%30%32%36%35%38%38%38%37%%26%69%64=%30%30%36%37%33%33%35%32%37%38%38%38%%26%69%64=%30%30%36%37%38%37%37%33%34%39%33%34%%26%69%64=%30%30%36%37%38%35%31%33%30%37%32%30%%26%69%64=%30%30%36%37%33%32%31%32%32%32%33%37%%26%69%64=%30%30%36%37%32%34%34%33%38%35%30%34%%26%69%64=%30%30%36%37%35%35%31%34%30%33%39%39%00%33%35%33%32%34%39%36%37%32%32%00%31%32%30%33%30%38%39%36%32%34%00%32%33%38%30%34%33%33%35%31%39%00%36%32%32%36%39%39%39%30%38%37%00%38%
placeid=2374573245&Id+%.=870515158061%39%33%00%32%38%36%36%36%39%35%37%37%33%00%32%33%33%30%34%35%36%32%37%32%00%31%34%34%35%32%36%32%32%37%33%00%33%30%38%33%35%37%35%32%34%36%00%35%30%33%31%35%36%36%32%37%32%00%39%34%35%38%38%34%31%32%35%37%00%30%33%38%31%34%34%34%37%31%36%00%31%32%31%35%31%34%37%39%31%32%00%36%38%36%39%32%34%38%38%38%30%00%38%34%36%39%32%38%31%30%30%38%00%35%33%38%37%32%39%33%37%38%33%00%30%30%33%36%36%30%36%36%34%34%00%39%35%39%36%33%38%30%30%34%31%00%38%34%32%31%31%31%35%34%33%38%00%35%32%36%34%38%36%33%30%37%36%00%35%33%30%32%37%31%35%32%35%30%00%38%31%36%34%34%32%30%30%37%37%00%33%37%33%35%35%38%30%30%30%33%00%32%35%35%30%34%31%30%32%33%38%00%35%39%37%30%30%30%37%39%33%32%00%33%36%39%34%39%30%34%36%36%38%00%32%32%36%30%36%30%34%34%36%34%00%30%38%36%35%35%31%32%38%37%35%00%32%36%31%34%39%37%36%34%39%32%00%30%37%39%33%36%37%31%37%38%34%00%36%37%31%39%36%31%36%39%31%32%00%38%30%39%38%34%36%35%33%36%34%00%38%33%37%33%39%34%37%32%36%38%00%31%36%34%36%33%33%34%32%33%31%00%39%31%33%35%31%31%37%38%31%36%00%34%36%38%36%32%39%36%35%30%38%00%33%38%33%34%39%30%31%32%34%34%00%36%36%32%35%35%32%31%32%38%37%00%33%33%37%32%36%35%37%39%32%32%00%33%36%30%32%31%36%30%30%31%33%00%32%39%36%33%38%31%31%34%30%39%00%35%34%32%34%34%33%35%37%37%38%00%39%32%34%31%32%35%38%37%30%38%00%37%31%36%33%39%39%32%38%34%39%00%30%
&clientinsert=1%00id=0
&%id=?]]

local final = b1 .. assetid .. b2

function equip()
    for x, v in pairs(b:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = c
        end
    end
end

function play()
    for _, v in pairs(c:GetChildren()) do
        if string.find(string.lower(v.Name), "boom") then
            v.Remote:FireServer('PlaySong', final)
        end
    end
end

equip()
play()
    end)
          section2:addTextbox({
            text = 'Timeposition (Press enter)'
        }):bindToEvent('onFocusLost', function(txt) 
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
        v.Handle.Sound.TimePosition = txt
    end
end
wait(.1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
        v.Handle.Sound.TimePosition = txt
    end
end
        end)
    section2:addButton({
            text = 'Sync', 
            style = 'large'
        }):bindToEvent('onClick', function()
     wait(0.1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
        v.Handle.Sound.TimePosition = 0
    end
end
wait(0.1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
        v.Handle.Sound.TimePosition = 0
    end
end
            
        end)
local menu3 = window:addMenu({
    text = "Misc"
})
local section3 = menu3:addSection({
        text = 'Misc',
        side = 'auto',
        showMinButton = true,
    })
section3:addButton({
            text = 'Dev Crash', 
            style = 'large'
        }):bindToEvent('onClick', function()
        while wait(1) do
  for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if string.find(string.lower(v.Name),'boomb') then
        lol = string.rep("⛓️", 12000)
            v.Remote:FireServer("PlaySong", lol)
        end
        end
        end
        end)
section3:addButton({
            text = 'Antikill', 
            style = 'large'
        }):bindToEvent('onClick', function()
game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled("Seated", false)
game.Players.LocalPlayer.Character.Humanoid.Sit = true
        end)
            section3:addButton({
            text = 'No Collisions', 
            style = 'large' 
        }):bindToEvent('onClick', function()
repeat task.wait() until game:IsLoaded()
--SYNAPSE HOOKS? I WILL SAY THE NWORD!
local PhysicsService = game:GetService("PhysicsService")
local Workspace = game:GetService("Workspace")

local function doMath(index)
    return -(2^(index-1))
end


local function FindCollisionGroup(CollisionGroup)
    for i,v in pairs(gethiddenproperty(Workspace, "CollisionGroups"):split("\\")) do
        local split = v:split("^")
        if split[1] == CollisionGroup then
            return v
        end
    end
    return false
end

local function EditCollisionGroup(Name,arg1,arg2,arg3)
    local str = ""
    local args = {arg1,arg2,arg3}
    
    for i,v in pairs(gethiddenproperty(Workspace, "CollisionGroups"):split("\\")) do
        local split = v:split("^")
        if split[1] == Name  then
            for i,v in pairs(args) do
                if not v then
                    args[i] = split[i]
                end
            end
            str = str..string.format("%s%s^%s^%s",((i == 1 and "" ) or "\\") ,args[1], args[2], args[3])
        else    
            str = str..string.format("%s%s^%s^%s",((i == 1 and "" ) or "\\") ,split[1], split[2], split[3])
        end
    end

    sethiddenproperty(Workspace, "CollisionGroups", str)
end


local function CreateCollisionGroup(Name)
    assert(FindCollisionGroup(Name) == false, "Could not create collision group, one with that name already exists.")
    sethiddenproperty(Workspace, "CollisionGroups", string.format("%s\\%s^%s^%s", gethiddenproperty(Workspace, "CollisionGroups"),Name,tonumber(#PhysicsService:GetCollisionGroups()), "-1" ))
    return true 
end

local function CollisionGroupSetCollidable(Name1,Name2,Boolean)
    assert(typeof(Name1) == "string", string.format("Bad argument #1 to '?' (string expected, got %s)", typeof(Name1)))
    assert(typeof(Name2) == "string", string.format("Bad argument #2 to '?' (string expected, got %s)", typeof(Name1)))
    assert(typeof(Boolean) == "boolean", string.format("Bad argument #3 to '?' (boolean expected, got %s)", typeof(Name1)))
    assert(FindCollisionGroup(Name1) ~= false, "Both collision groups must be valid.")
    assert(FindCollisionGroup(Name2) ~= false, "Both collision groups must be valid.")
    local CollisionGroup1 = FindCollisionGroup(Name1)
    local CollisionGroup2 = FindCollisionGroup(Name2)
    local split1 = CollisionGroup1:split("^")
    local split2 = CollisionGroup2:split("^")
    if Boolean == false then
        if PhysicsService:CollisionGroupsAreCollidable(Name1, Name2) == true then
            if Name1 == Name2 then
                EditCollisionGroup(split1[1], false, false , (tonumber(split1[3])) + doMath(tonumber(split1[2]+1)))
            elseif Name1 ~= Name2 then
                EditCollisionGroup(split1[1], false, false , (tonumber(split1[3])) + doMath(tonumber(split2[2]+1)))
                EditCollisionGroup(split2[1], false, false , (tonumber(split2[3])) + doMath(tonumber(split1[2]+1)))
            end
        end
    elseif Boolean == true then
        if PhysicsService:CollisionGroupsAreCollidable(Name1, Name2) == false then
            if Name1 == Name2 then
                EditCollisionGroup(split1[1], false, false , (tonumber(split1[3])) - doMath(tonumber(split1[2]+1)))
            elseif Name1 ~= Name2 then
                EditCollisionGroup(split1[1], false, false , (tonumber(split1[3])) - doMath(tonumber(split2[2]+1)))
                EditCollisionGroup(split2[1], false, false , (tonumber(split2[3])) - doMath(tonumber(split1[2]+1)))
            end
        end
    end
end



local function RemoveCollisionGroup(CollisionGroup)
    string.gsub(gethiddenproperty(Workspace, "CollisionGroups"),"([%w%p]*)("..CollisionGroup.."%^%d+%^%-%d+)([%w%p]*)",function(arg1,arg2,arg3)

        local new = ""
        for index, value in pairs(string.split(arg3,"\\")) do
            new = new.."\\"..string.gsub(value,"(%w+%^)(%d+)(%^%-%d+)",function(arg1,arg2,arg3)  return arg1..math.floor(tonumber(arg2)-1)..arg3 end)

        end
        if new:sub(1,1) == "\\" then  new = new:sub(2,new:len()) end
        local toReturn = arg1..new
        if toReturn:sub(toReturn:len(),toReturn:len()) == "\\" then toReturn = toReturn:sub(1,toReturn:len()-1) end

        sethiddenproperty(Workspace, "CollisionGroups", toReturn)
    end)
end

local function RenameCollisionGroup(CollisionGroup,newName)
    assert(typeof(CollisionGroup) == "string", string.format("Bad argument #1 to '?' (string expected, got %s)", typeof(CollisionGroup)))
    assert(typeof(newName) == "string", string.format("Bad argument #1 to '?' (string expected, got %s)", typeof(newName)))
    assert(FindCollisionGroup(CollisionGroup) ~= false, "Cannot find the collision group")
    assert(FindCollisionGroup(newName) == false, "This collision group already exists!")
    string.gsub(gethiddenproperty(Workspace, "CollisionGroups"),"([%w%p]*)("..CollisionGroup.."%^%d+%^%-%d+)([%w%p]*)",function(arg1,arg2,arg3)
        local split = FindCollisionGroup(CollisionGroup):split("^")
        local str = newName.."^"..split[2].."^"..split[3]
        sethiddenproperty(Workspace, "CollisionGroups", arg1..str..arg3)
    end)
end

xpcall(function()
    local old
    old = hookmetamethod(game, "__namecall" ,newcclosure(function(self,...)
        if not checkcaller() then return old(self,...) end
        local args = {...}

        if self == PhysicsService then
            if getnamecallmethod() == "RenameCollisionGroup" then
                return  RenameCollisionGroup(args[1],args[2])
            elseif getnamecallmethod() == "RemoveCollisionGroup"  then
                return  RemoveCollisionGroup(args[1])
            elseif getnamecallmethod() == "CreateCollisionGroup" then
                return  CreateCollisionGroup(args[1])
            elseif getnamecallmethod() == "CollisionGroupSetCollidable" then
                return CollisionGroupSetCollidable(args[1],args[2],args[3])
            end
        end 

        return old(self,...)
    end))
end, function()
    local mt = getrawmetatable(game)
    local old = mt.__namecall
    
    setreadonly(mt,false)
    
    mt.__namecall = newcclosure(function(self, ...)
        if not checkcaller() then return old(self,...) end
        local args = {...}

        if self == PhysicsService then
            if getnamecallmethod() == "RenameCollisionGroup" then
                return  RenameCollisionGroup(args[1],args[2])
            elseif getnamecallmethod() == "RemoveCollisionGroup"  then
                return  RemoveCollisionGroup(args[1])
            elseif getnamecallmethod() == "CreateCollisionGroup" then
                return  CreateCollisionGroup(args[1])
            elseif getnamecallmethod() == "CollisionGroupSetCollidable" then
                return CollisionGroupSetCollidable(args[1],args[2],args[3])
            end
        end 

        return old(self,...)
    end)

    setreadonly(mt,true)
end)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PhysicsService = game:GetService("PhysicsService")
PhysicsService:CreateCollisionGroup("Players")
PhysicsService:CollisionGroupSetCollidable("Players", "Players", false)

local NoCollider = {}
local function NoCollide(Player)
    if Player.Character then
        local Char = Player.Character
        for _,Thing in pairs(Char:GetDescendants()) do
            if Thing:IsA("BasePart") then
                PhysicsService:SetPartCollisionGroup(Thing, "Players")
            end
        end
        local Con1
        local Con2
        Con1 = Char.DescendantAdded:Connect(function(Thing)
            if Thing:IsA("BasePart") then
                PhysicsService:SetPartCollisionGroup(Thing, "Players")
            end
        end)
        Con2 = Player.CharacterRemoving:Connect(function()
            Con1:Disconnect()
            Con2:Disconnect()
        end)
    end
    NoCollider[Player.Name] = Player.CharacterAdded:Connect(function(Char)
        local Con1
        local Con2
        Con1 = Char.DescendantAdded:Connect(function(Thing)
            if Thing:IsA("BasePart") then
                PhysicsService:SetPartCollisionGroup(Thing, "Players")
            end
        end)
        Con2 = Player.CharacterRemoving:Connect(function()
            Con1:Disconnect()
            Con2:Disconnect()
        end)
    end)
end
Players.PlayerAdded:Connect(NoCollide)
for _,Player in pairs(Players:GetPlayers()) do
    NoCollide(Player)
end

Players.PlayerRemoving:Connect(function(Player)
    NoCollider[Player.Name]:Disconnect()
end)
        end)
         section3:addButton({
            text = 'Respawn', 
            style = 'large' -- style of the button, can be 'large' or 'small'
        }):bindToEvent('onClick', function() -- Call a function when clicked
local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character = nil
game.Players.LocalPlayer.Character = workspace[game.Players.LocalPlayer.Name]
wait(4.8)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos

game.Players.LocalPlayer.CharacterAdded:Wait():WaitForChild('HumanoidRootPart')['CFrame'] = pos
        end)

            local section4 = menu2:addSection({
        text = 'Grips',
        side = 'auto',
        showMinButton = true, 
    })
             section4:addButton({
            text = 'Ak-47', 
            style = 'large' -- style of the button, can be 'large' or 'small'
        }):bindToEvent('onClick', function() -- Call a function when clicked
local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
 local Tools = plr.Backpack:GetChildren()

 Tools[1].Grip = CFrame.new(0.7, -0.5, -0.2) * CFrame.Angles(50, math.rad(-180), 3.13)
 Tools[1].Parent = plr.Character

 Tools[2].Grip = CFrame.new(0.5, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
 Tools[2].Parent = plr.Character

 Tools[3].Grip = CFrame.new(-1.5, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0.03)
 Tools[3].Parent = plr.Character

 Tools[4].Grip = CFrame.new(-2.5, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
 Tools[4].Parent = plr.Character

 Tools[5].Grip = CFrame.new(-4.6, -0.4, -0.2) * CFrame.Angles(1.6, math.rad(-98), 1.6)
 Tools[5].Parent = plr.Character

 Tools[6].Grip = CFrame.new(-7, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
 Tools[6].Parent = plr.Character

 Tools[7].Grip = CFrame.new(-9.6, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
 Tools[7].Parent = plr.Character

 Tools[8].Grip = CFrame.new(-12.2, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
 Tools[8].Parent = plr.Character

 Tools[9].Grip = CFrame.new(-1.2, -3.1, -0.2) * CFrame.Angles(1.6, math.rad(-15), 1.6)
 Tools[9].Parent = plr.Character

 Tools[10].Grip = CFrame.new(-3.3, -2.7, -0.2) * CFrame.Angles(1.6, math.rad(-25), 1.6)
 Tools[10].Parent = plr.Character

 Tools[11].Grip = CFrame.new(-0.1, 1.8, -0.1) * CFrame.Angles(1.6, math.rad(65), 1.6)
 Tools[11].Parent = plr.Character

 Tools[12].Grip = CFrame.new(1.3, 2.05, -0.1) * CFrame.Angles(1.6, math.rad(90), 1.6)
 Tools[12].Parent = plr.Character

 Tools[13].Grip = CFrame.new(3.15, 2.05, -0.1) * CFrame.Angles(1.6, math.rad(90), 1.6)
 Tools[13].Parent = plr.Character

 Tools[14].Grip = CFrame.new(5.3, 2.05, -0.1) * CFrame.Angles(1.6, math.rad(90), 1.6)
 Tools[14].Parent = plr.Character

 Tools[15].Grip = CFrame.new(6.5, 4.1, -0.1) * CFrame.Angles(1.6, math.rad(110), 1.6)
 Tools[15].Parent = plr.Character

 Tools[16].Grip = CFrame.new(-14.3, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
 Tools[16].Parent = plr.Character

 Tools[17].Grip = CFrame.new(3.1, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
 Tools[17].Parent = plr.Character

 Tools[18].Grip = CFrame.new(5.2, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
 Tools[18].Parent = plr.Character

 Tools[19].Grip = CFrame.new(0.25, 6.8, -0.05) * CFrame.Angles(1.6, math.rad(-0), 1.6)
 Tools[19].Parent = plr.Character

 Tools[20].Grip = CFrame.new(3.8, -4.4, -0.27) * CFrame.Angles(1.6, math.rad(-137), 1.6)
 Tools[20].Parent = plr.Character
        end)
                     section4:addButton({
            text = 'Pickaxe', 
            style = 'large' -- style of the button, can be 'large' or 'small'
        }):bindToEvent('onClick', function() -- Call a function when clicked
local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
 local Tools = plr.Backpack:GetChildren()

 Tools[1].Grip = CFrame.new(-0.4, 0.6, 0) * CFrame.Angles(1.6, math.rad(-180), 1.58)
 Tools[1].Parent = plr.Character

 Tools[2].Grip = CFrame.new(-2.7, 0.6, 0) * CFrame.Angles(1.6, math.rad(-180), 1.58)
 Tools[2].Parent = plr.Character

 Tools[3].Grip = CFrame.new(-4.5, 0.6, 0) * CFrame.Angles(1.6, math.rad(-180), 1.58)
 Tools[3].Parent = plr.Character

 Tools[4].Grip = CFrame.new(-6.3, 0.6, 0) * CFrame.Angles(1.6, math.rad(-180), 1.58)
 Tools[4].Parent = plr.Character

 Tools[5].Grip = CFrame.new(-0.3, 6.85, -0.4) * CFrame.Angles(38.5, math.rad(-270), 2.3)
 Tools[5].Parent = plr.Character

 Tools[6].Grip = CFrame.new(1.8, 6.85, -0.4) * CFrame.Angles(38.5, math.rad(-270), 2.3)
 Tools[6].Parent = plr.Character

 Tools[7].Grip = CFrame.new(3.3, 5.4, 0.32) * CFrame.Angles(1.6, math.rad(-320), 1.6)
 Tools[7].Parent = plr.Character

 Tools[8].Grip = CFrame.new(-2.42, 6.6, 0.32) * CFrame.Angles(1.6, math.rad(-220), 1.6)
 Tools[8].Parent = plr.Character
        end)
                     section4:addButton({
            text = 'Sword', 
            style = 'large' 
        }):bindToEvent('onClick', function() 
local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
 local Tools = plr.Backpack:GetChildren()

 Tools[1].Grip = CFrame.new(0, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
 Tools[1].Parent = plr.Character

 Tools[2].Grip = CFrame.new(0.15, 1.7, -0.02) * CFrame.Angles(1.58, math.rad(90), 1.58)
 Tools[2].Parent = plr.Character

 Tools[3].Grip = CFrame.new(3, -0.9, -0.05) * CFrame.Angles(1.58, math.rad(-45), 1.58)
 Tools[3].Parent = plr.Character

 Tools[4].Grip = CFrame.new(-3.1, -0.67, -0.049) * CFrame.Angles(1.58, math.rad(-135), 1.58)
 Tools[4].Parent = plr.Character

 Tools[5].Grip = CFrame.new(2.2, -0.3, -0.03) * CFrame.Angles(1.58, math.rad(-360), 1.58)
 Tools[5].Parent = plr.Character

 Tools[6].Grip = CFrame.new(4.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
 Tools[6].Parent = plr.Character

 Tools[7].Grip = CFrame.new(6.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
 Tools[7].Parent = plr.Character

 Tools[8].Grip = CFrame.new(8.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
 Tools[8].Parent = plr.Character

 Tools[9].Grip = CFrame.new(10.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
 Tools[9].Parent = plr.Character

 Tools[10].Grip = CFrame.new(12.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
 Tools[10].Parent = plr.Character
end)
                             section4:addButton({
            text = 'Lowhold/Suitcase', 
            style = 'large' 
        }):bindToEvent('onClick', function()
game.Players.LocalPlayer.Backpack.BoomBox.GripForward =  Vector3.new(-0, -1, 0)
game.Players.LocalPlayer.Backpack.BoomBox.GripPos =  Vector3.new(-0.064, 0.835, -0)
game.Players.LocalPlayer.Backpack.BoomBox.GripRight =  Vector3.new(-0, -0, -1)
game.Players.LocalPlayer.Backpack.BoomBox.GripUp =  Vector3.new(-1, 0, 0)
wait(0.2)
game.Players.LocalPlayer:findFirstChildOfClass('Backpack')['BoomBox'].Parent = game.Players.LocalPlayer.Character
wait(0.2)
h = game.Players.LocalPlayer.Character.Humanoid
tracks = h:GetPlayingAnimationTracks()
for _,x in pairs(tracks)
do x:Stop()
end
        end)
