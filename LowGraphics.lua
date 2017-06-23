--Author: Nøøblet-Gorefiend (Steven Ventura)
--Date Created: 4/23/17
--purpose: lower graphics or raise graphics with slash command
--usage: type "lg high" to make high graphics, and "lg low" to make low graphics
LowGraphics = CreateFrame("Frame");

--LowGraphics:SetScript("OnEvent",function(self,event,...) self[event](self,event,...);end)
LowGraphics:SetScript("OnUpdate", function(self, elapsed) LowGraphicsOnUpdate(self, elapsed) end)
LowGraphics:RegisterEvent("VARIABLES_LOADED");

SLASH_LowGraphics1 = "/LowGraphics"; SLASH_LowGraphics2 = "/lg"; SLASH_LowGraphics3 = "/low";
SlashCmdList["LowGraphics"] = slashLowGraphics;

function slashLowGraphics(msg,editbox)
command, rest = msg:match("^(%S*)%s*(.-)$");
--http://wowwiki.wikia.com/wiki/Console_variables

if (command == "low") then
SetCVar("renderScale",0.1)

SetCVar("worldBaseMip",1);
SetCVar("graphicsQuality",1)
SetCVar("RAIDgraphicsQuality",1)
SetCVar("horizonStart",1)
SetCVar("particleDensity",1)
SetCVar("particleMTDensity",1)
SetCVar("waterDetail",1)
SetCVar("rippleDetail",1)
SetCVar("reflectionMode",1)
SetCVar("sunShafts",1)
SetCVar("refraction",1)
SetCVar("groundEffectDensity",1)
SetCVar("groundEffectDist",1)
--SetCVar("environmentDetail",1)
SetCVar("projectedTextures",1)
SetCVar("shadowMode",1)
SetCVar("shadowTextureSize",1)
SetCVar("shadowSoft",1)
SetCVar("SSAO",1)
SetCVar("DepthBasedOpacity",1)
SetCVar("textureFilteringMode",1)
SetCVar("terrainLodDist",1)
SetCVar("wmoLodDist",1)
SetCVar("terrainTextureLod",1)
SetCVar("terrainMipLevel",1)
SetCVar("worldBaseMip",1)
SetCVar("OutlineEngineMode",1)
SetCVar("lightMode",1)
SetCVar("lodObjectCullSize",1)
SetCVar("lodObjectCullDist",1)
SetCVar("lodObjectMinSize",1)
end
if (command == "high") then
SetCVar("renderScale",1)
SetCVar("worldBaseMip",0);

SetCVar("graphicsQuality",6)
SetCVar("RAIDgraphicsQuality",6)
SetCVar("farclip",6000.000000)
SetCVar("horizonStart",1700.000000)
SetCVar("particleDensity",80.000000)
SetCVar("particleMTDensity",100.000000)
SetCVar("waterDetail",2.000000)
SetCVar("rippleDetail",1.000000)
SetCVar("reflectionMode",0.000000)
SetCVar("sunShafts",2.000000)
SetCVar("refraction",2.000000)
SetCVar("groundEffectDensity",80.000000)
SetCVar("groundEffectDist",185.000000)
--SetCVar("environmentDetail",125.000000)
SetCVar("projectedTextures",1.000000)
SetCVar("shadowMode",3.000000)
SetCVar("shadowTextureSize",2048.000000)
SetCVar("shadowSoft",0.000000)
SetCVar("SSAO",2.000000)
SetCVar("DepthBasedOpacity",1.000000)
SetCVar("textureFilteringMode",5.000000)
SetCVar("terrainLodDist",500.000000)
SetCVar("wmoLodDist",450.000000)
SetCVar("terrainTextureLod",0.000000)
SetCVar("terrainMipLevel",0.000000)
SetCVar("worldBaseMip",0.000000)
SetCVar("OutlineEngineMode",2.000000)
SetCVar("lightMode",2.000000)
SetCVar("lodObjectCullSize",19.000000)
SetCVar("lodObjectCullDist",30.000000)
SetCVar("lodObjectMinSize",60.000000)


end


end--end function
--local function taken from http://stackoverflow.com/questions/1426954/split-string-in-lua by user973713 on 11/26/15
function LowGraphicsSplitString(inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={} ; local i=1
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                t[i] = str
                i = i + 1
        end
        return t
end
function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function pissOffShaun(elapsed)



end--end function pissOffShaun

movedPanda=false;
pandaDanceTimer = 0;
lagLess = 0;
LowGraphicsTimeDelayThing = 0.50;
function LowGraphicsOnUpdate(self, elapsed)
lagLess = lagLess + elapsed;
if (lagLess < LowGraphicsTimeDelayThing) then  return end
lagLess = 0;
pissOffShaun(elapsed);
if (GetUnitSpeed("player") == 0) then
pandaDanceTimer = pandaDanceTimer + LowGraphicsTimeDelayThing;
else
movedPanda=true;
end

if (pandaDanceTimer > 1 and movedPanda) then
movedPanda=false;
pandaDanceTimer=0;
DoEmote("dance");

end

end--end function LowGraphicsOnUpdate






--this is called after the variables are loaded
function LowGraphicsInit()

end--end function LowGraphicsInit