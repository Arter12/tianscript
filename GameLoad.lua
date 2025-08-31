local Games = {
    [7265785337] = "穷小子打工记",
    [1512676568] = "河北唐县",
    [7018190066] = "死铁轨",
    [1526814825] = "战争大亨",
    [1268927906] = "力量传奇",
    [7326934954] = "森林中的99夜",
    [2820580801] = "俄亥俄州",
    [1782832995] = "通用时间",
    [7008097940] = "墨水游戏",
    [1494262959] = "犯罪",
    [5750914919] = "Fisch",
    [245662005] = "越狱"
}

local cloneref = cloneref or function(a) return a end
local CoreGui = cloneref(game:GetService("CoreGui"))

if not ({...})[1] then
    local name = Games[game.GameId]
    if name then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lyyanai/tianscript/refs/heads/main/Games/"..(name)..".lua"))()
    else
        local message = Instance.new("Message", CoreGui)
        message.Text = "此游戏不受支持"
        task.wait(2)
        message:destroy()
    end
end

return Games
