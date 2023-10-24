pcall(function() loadstring(game:HttpGet("https://github.com/15rih/Random-Scripts/blob/main/tablefind_ban.lua"))() end)

--[[
getgenv()._SETTINGS_ = {
    fps = "50", -- sets fps cap to 50
    lowgfx = true, -- set to false if you dont wanna lower cpu % {recommended to keep on}
}
--]]

--// game loaded
if not game:IsLoaded() then repeat wait() until game:IsLoaded() end

--// modified eclipse loaded check (prevents from executing on accounts over and over)
if getgenv().MofifiedEclipse_Loaded then
    return
else
    getgenv().MofifiedEclipse_Loaded = true
end

--//settings things
setfpscap(tonumber(getgenv()._SETTINGS_.fps))

if getgenv()._SETTINGS_.lowgfx == true then
    loadstring(game:HttpGet("https://github.com/15rih/Random-Scripts/blob/main/fpsboost.lua"))()
end


-- main eclipse
getgenv().mainKey = "nil"

local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https\58//api.eclipsehub.xyz/auth";c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
