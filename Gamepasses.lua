
--[[
AztupBrew(Fork of IronBrew2): obfuscation; Version 2.7.2
]]
return(function(IFM_h,IFM_a,IFM_a)local IFM_j=string.char;local IFM_e=string.sub;local IFM_n=table.concat;local IFM_l=math.ldexp;local IFM_m=getfenv or function()return _ENV end;local IFM_k=select;local IFM_a=unpack or table.unpack;local IFM_i=tonumber;local function IFM_o(IFM_h)local IFM_b,IFM_c,IFM_d="","",{}local IFM_f=256;local IFM_g={}for IFM_a=0,IFM_f-1 do IFM_g[IFM_a]=IFM_j(IFM_a)end;local IFM_a=1;local function IFM_k()local IFM_b=IFM_i(IFM_e(IFM_h,IFM_a,IFM_a),36)IFM_a=IFM_a+1;local IFM_c=IFM_i(IFM_e(IFM_h,IFM_a,IFM_a+IFM_b-1),36)IFM_a=IFM_a+IFM_b;return IFM_c end;IFM_b=IFM_j(IFM_k())IFM_d[1]=IFM_b;while IFM_a<#IFM_h do local IFM_a=IFM_k()if IFM_g[IFM_a]then IFM_c=IFM_g[IFM_a]else IFM_c=IFM_b..IFM_e(IFM_b,1,1)end;IFM_g[IFM_f]=IFM_b..IFM_e(IFM_c,1,1)IFM_d[#IFM_d+1],IFM_b,IFM_f=IFM_c,IFM_c,IFM_f+1 end;return table.concat(IFM_d)end;local IFM_i=IFM_o('27326P27526P26T27624624024C24426P26827624J24423L24D24824224023P24424524I23P24E23N24024627D26B27624Y24924027U24227O23N24U24Y24D24E23P24924824F24626P26X27Z28928B28D28F26U27625727B24C24824423M26P26V27624Z28A27S24C26P26S27624N24024D23O27D26F27623N24323T24023M23M24423P24824525N26626625L25C25H25K25H25G25I25C25F26P26Q27624L24E23L26P26O27625D29227625924423R24424D2A827523R2962982A427629X26Z27625C25G25E25E25I29U2AS25H27626P26K27626B28H2752A527525T2AX27526R26P2B62B729Z2BB2AX2782BE2762932BH27528W2A727628N28H27Y2762B42BA2B726P2B92BK29Y2BA2BT2752BG28N2AX2BJ2BV26W26P2BN27528N2AN2BR2B32762BY2BX2BV2BD2BV2BG2BV2C62B726Y2C92AX27126P27026P2CE2AK2B529Z2AX2CI2BC2BU2B72CM2B72CO2AX2CQ2CA26P2CT2742B72C1');local IFM_a=(bit or bit32);local IFM_d=IFM_a and IFM_a.bxor or function(IFM_a,IFM_c)local IFM_b,IFM_d,IFM_e=1,0,10 while IFM_a>0 and IFM_c>0 do local IFM_f,IFM_e=IFM_a%2,IFM_c%2 if IFM_f~=IFM_e then IFM_d=IFM_d+IFM_b end IFM_a,IFM_c,IFM_b=(IFM_a-IFM_f)/2,(IFM_c-IFM_e)/2,IFM_b*2 end if IFM_a<IFM_c then IFM_a=IFM_c end while IFM_a>0 do local IFM_c=IFM_a%2 if IFM_c>0 then IFM_d=IFM_d+IFM_b end IFM_a,IFM_b=(IFM_a-IFM_c)/2,IFM_b*2 end return IFM_d end local function IFM_c(IFM_b,IFM_a,IFM_c)if IFM_c then local IFM_a=(IFM_b/2^(IFM_a-1))%2^((IFM_c-1)-(IFM_a-1)+1);return IFM_a-IFM_a%1;else local IFM_a=2^(IFM_a-1);return(IFM_b%(IFM_a+IFM_a)>=IFM_a)and 1 or 0;end;end;local IFM_a=1;local function IFM_b()local IFM_f,IFM_e,IFM_c,IFM_b=IFM_h(IFM_i,IFM_a,IFM_a+3);IFM_f=IFM_d(IFM_f,241)IFM_e=IFM_d(IFM_e,241)IFM_c=IFM_d(IFM_c,241)IFM_b=IFM_d(IFM_b,241)IFM_a=IFM_a+4;return(IFM_b*16777216)+(IFM_c*65536)+(IFM_e*256)+IFM_f;end;local function IFM_g()local IFM_b=IFM_d(IFM_h(IFM_i,IFM_a,IFM_a),241);IFM_a=IFM_a+1;return IFM_b;end;local function IFM_f()local IFM_c,IFM_b=IFM_h(IFM_i,IFM_a,IFM_a+2);IFM_c=IFM_d(IFM_c,241)IFM_b=IFM_d(IFM_b,241)IFM_a=IFM_a+2;return(IFM_b*256)+IFM_c;end;local function IFM_o()local IFM_a=IFM_b();local IFM_b=IFM_b();local IFM_e=1;local IFM_d=(IFM_c(IFM_b,1,20)*(2^32))+IFM_a;local IFM_a=IFM_c(IFM_b,21,31);local IFM_b=((-1)^IFM_c(IFM_b,32));if(IFM_a==0)then if(IFM_d==0)then return IFM_b*0;else IFM_a=1;IFM_e=0;end;elseif(IFM_a==2047)then return(IFM_d==0)and(IFM_b*(1/0))or(IFM_b*(0/0));end;return IFM_l(IFM_b,IFM_a-1023)*(IFM_e+(IFM_d/(2^52)));end;local IFM_p=IFM_b;local function IFM_l(IFM_b)local IFM_c;if(not IFM_b)then IFM_b=IFM_p();if(IFM_b==0)then return'';end;end;IFM_c=IFM_e(IFM_i,IFM_a,IFM_a+IFM_b-1);IFM_a=IFM_a+IFM_b;local IFM_b={}for IFM_a=1,#IFM_c do IFM_b[IFM_a]=IFM_j(IFM_d(IFM_h(IFM_e(IFM_c,IFM_a,IFM_a)),241))end return IFM_n(IFM_b);end;local IFM_a=IFM_b;local function IFM_n(...)return{...},IFM_k('#',...)end local function IFM_h()local IFM_i={};local IFM_d={};local IFM_a={};local IFM_j={[#{"1 + 1 = 111";{563;417;913;350};}]=IFM_d,[#{{896;544;479;487};"1 + 1 = 111";"1 + 1 = 111";}]=nil,[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{21;390;458;665};}]=IFM_a,[#{{272;605;516;928};}]=IFM_i,};local IFM_a=IFM_b()local IFM_e={}for IFM_c=1,IFM_a do local IFM_b=IFM_g();local IFM_a;if(IFM_b==3)then IFM_a=(IFM_g()~=0);elseif(IFM_b==2)then IFM_a=IFM_o();elseif(IFM_b==0)then IFM_a=IFM_l();end;IFM_e[IFM_c]=IFM_a;end;for IFM_a=1,IFM_b()do IFM_d[IFM_a-1]=IFM_h();end;for IFM_h=1,IFM_b()do local IFM_a=IFM_g();if(IFM_c(IFM_a,1,1)==0)then local IFM_d=IFM_c(IFM_a,2,3);local IFM_g=IFM_c(IFM_a,4,6);local IFM_a={IFM_f(),IFM_f(),nil,nil};if(IFM_d==0)then IFM_a[3]=IFM_f();IFM_a[4]=IFM_f();elseif(IFM_d==1)then IFM_a[3]=IFM_b();elseif(IFM_d==2)then IFM_a[3]=IFM_b()-(2^16)elseif(IFM_d==3)then IFM_a[3]=IFM_b()-(2^16)IFM_a[4]=IFM_f();end;if(IFM_c(IFM_g,1,1)==1)then IFM_a[2]=IFM_e[IFM_a[2]]end if(IFM_c(IFM_g,2,2)==1)then IFM_a[3]=IFM_e[IFM_a[3]]end if(IFM_c(IFM_g,3,3)==1)then IFM_a[4]=IFM_e[IFM_a[4]]end IFM_i[IFM_h]=IFM_a;end end;IFM_j[3]=IFM_g();return IFM_j;end;local function IFM_j(IFM_a,IFM_b,IFM_f)IFM_a=(IFM_a==true and IFM_h())or IFM_a;return(function(...)local IFM_d=IFM_a[1];local IFM_e=IFM_a[3];local IFM_a=IFM_a[2];local IFM_a=IFM_n local IFM_b=1;local IFM_a=-1;local IFM_i={};local IFM_g={...};local IFM_h=IFM_k('#',...)-1;local IFM_a={};local IFM_c={};for IFM_a=0,IFM_h do if(IFM_a>=IFM_e)then IFM_i[IFM_a-IFM_e]=IFM_g[IFM_a+1];else IFM_c[IFM_a]=IFM_g[IFM_a+#{{362;832;767;824};}];end;end;local IFM_a=IFM_h-IFM_e+1 local IFM_a;local IFM_e;while true do IFM_a=IFM_d[IFM_b];IFM_e=IFM_a[1];if IFM_e<=4 then if IFM_e<=1 then if IFM_e>0 then IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];else IFM_c[IFM_a[2]]=IFM_f[IFM_a[3]];end;elseif IFM_e<=2 then IFM_c[IFM_a[2]]=IFM_f[IFM_a[3]];elseif IFM_e>3 then do return end;else IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]][IFM_a[3]]=IFM_a[4];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];do return end;end;elseif IFM_e<=7 then if IFM_e<=5 then IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];elseif IFM_e==6 then IFM_c[IFM_a[2]][IFM_a[3]]=IFM_a[4];else IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]][IFM_a[3]]=IFM_a[4];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_f[IFM_a[3]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]][IFM_a[3]]=IFM_a[4];end;elseif IFM_e<=8 then IFM_c[IFM_a[2]]=IFM_f[IFM_a[3]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]][IFM_a[3]]=IFM_a[4];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_f[IFM_a[3]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];IFM_b=IFM_b+1;IFM_a=IFM_d[IFM_b];IFM_c[IFM_a[2]]=IFM_c[IFM_a[3]][IFM_a[4]];elseif IFM_e==9 then IFM_c[IFM_a[2]][IFM_a[3]]=IFM_a[4];else do return end;end;IFM_b=IFM_b+1;end;end);end;return IFM_j(true,{},IFM_m())();end)(string.byte,table.insert,setmetatable);
