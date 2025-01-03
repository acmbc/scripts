_G.CustomTheme = {
    Tab_Color = Color3.fromRGB(255, 255, 255),
    Tab_Text_Color = Color3.fromRGB(0, 0, 0),
    Description_Color = Color3.fromRGB(255, 255, 255),
    Description_Text_Color = Color3.fromRGB(0, 0, 0),
    Container_Color = Color3.fromRGB(255, 255, 255),
    Container_Text_Color = Color3.fromRGB(0, 0, 0),
    Button_Text_Color = Color3.fromRGB(0, 0, 0),
    Toggle_Box_Color = Color3.fromRGB(243, 243, 243),
    Toggle_Inner_Color = Color3.fromRGB(94, 255, 180),
    Toggle_Text_Color = Color3.fromRGB(0, 0, 0),
    Toggle_Border_Color = Color3.fromRGB(225, 225, 225),
    Slider_Bar_Color = Color3.fromRGB(243, 243, 243),
    Slider_Inner_Color = Color3.fromRGB(94, 255, 180),
    Slider_Text_Color = Color3.fromRGB(0, 0, 0),
    Slider_Border_Color = Color3.fromRGB(255, 255, 255),
    Dropdown_Text_Color = Color3.fromRGB(0, 0, 0),
    Dropdown_Option_BorderSize = 1,
    Dropdown_Option_BorderColor = Color3.fromRGB(235, 235, 235),
    Dropdown_Option_Color = Color3.fromRGB(255, 255, 255),
    Dropdown_Option_Text_Color = Color3.fromRGB(0, 0, 0)
}
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local TitleTab = Library:CreateTab("Made By bert")
local qTab = Library:CreateTab("Bucket (you click this)") 
local pTab = Library:CreateTab("p") 


qTab:CreateToggle("Auto Refill Bucket", function(arg)
if arg then
	_G.Bucket = true -- put false to stop
while _G.Bucket == true and task.wait() do
    local args = {

    [1] = workspace:WaitForChild("Map"):WaitForChild("Items"):WaitForChild("Bucket"),
    [2] = "Fill",
    [3] = 100
}

game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemService"):WaitForChild("RE"):WaitForChild("bucket"):FireServer(unpack(args))
wait()

end
	else
	_G.Bucket = false
	end
end)




pTab:CreateToggle("Auto Mine WIP", function(arg)
if arg then
	_G.Mine = true -- put false to stop
while _G.Mine == true and task.wait() do
local x = 1
local y = 1
local args = {
    [1] = Vector2.new(x, y)
}
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemService"):WaitForChild("RE"):WaitForChild("damage_item"):FireServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemService"):WaitForChild("RE"):WaitForChild("damage_item"):FireServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemService"):WaitForChild("RE"):WaitForChild("damage_item"):FireServer(unpack(args))
x = math.random(1, 100)
y = math.random(1, 100)

wait()

end
	else
	_G.Mine = false
	end
end)
