local Games = {
    [1512676568] = "河北唐县",
    [7018190066] = "死铁轨",
    [1526814825] = "战争大亨",
    [1268927906] = "力量传奇",
    [1119466531] = "极速传奇",
    [210851291] = "造船寻宝",
    [2471084] = "伐木大亨",
    [2820580801] = "俄亥俄州",
    [66654135] = "破坏者谜团2",
    [4777817887] = "刀刃球",
    [7008097940] = "墨水游戏",
    [5750914919] = "Fisch",
    [7326934954] = "森林中的99夜",
    [1335695570] = "忍者传奇",
    [6331902150] = "被遗弃",
    [994732206] = "BloxFruit",
    [4367208330] = "压力",
    [1840897362] = "火箭发射模拟器",
    [7265785337] = "穷小子打工记"


local cloneref = cloneref or function(a) return a end
local CoreGui = cloneref(game:GetService("CoreGui"))

if not ({...})[1] then
    local name = Games[game.GameId]
    if name then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Arter12/tianscript/refs/heads/main/Games/"..(name)..".lua"))()
    else
        local message = Instance.new("Message", CoreGui)
        message.Text = "此游戏不受支持"
        task.wait(2)
        message:destroy()
    end
end

return Games
