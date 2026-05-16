-- =========================
-- 🔹 CLEAN UI CŨ (SAFE BOOTSTRAP)
-- =========================
pcall(function()
    local old = game:GetService("CoreGui"):FindFirstChild("WindUI")
    if old then
        old:Destroy()
    end
end)

-- =========================
-- 🔹 LOAD WINDUI
-- =========================
local WindUI = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/teoscrvn/T-ng-h-p-/main/Script%20test%20(1).txt"
))()

if type(WindUI) ~= "table" then
    warn("❌ WindUI load lỗi")
    return
end

-- =========================
-- 🔹 TẠO WINDOW
-- =========================
local Window = WindUI:CreateWindow({
    Title = "💤 TÀI HUB_🫧",
    Size = UDim2.fromOffset(580, 340),
    Theme = "Dark",
    Transparent = false
})

-- 🔹 Nút mở HUB
Window:EditOpenButton({
    Title = "TÀI💤™scrVN🇻🇳",
    Icon = "monitor",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"),
        Color3.fromHex("F89B29")
    ),
    Draggable = true,
})

-- =========================
-- TABS
-- =========================
local Tabs = {}
Tabs.Home1 = Window:Tab({ Title = "💤HOME 🫧" })
Tabs.Script = Window:Tab({ Title = "💤SCRIPT🫧" })

-- =========================
-- NOTIFY
-- =========================
WindUI:Notify({
    Title = "💤 Tài HUB🫧",
    Content = "Load thành công!",
    Duration = 4
})

-- =========================
-- HOME TAB
-- =========================
Tabs.Home1:Paragraph({
    Title = "👋 Giới thiệu",
    Content = "Chào các bạn mình là Tài, đây là hub tổng hợp script Blox Fruits."
})

Tabs.Home1:Button({
    Title = "🎵 TikTok của Tài",
    Callback = function()
        setclipboard("https://www.tiktok.com/@vantai123416")
        WindUI:Notify({
            Title = "✔ Copied",
            Content = "Đã copy link TikTok",
            Duration = 3
        })
    end
})

-- =========================
-- SCRIPT TAB
-- =========================
Tabs.Script:Paragraph({
    Title = "📜 Script Hub Tổng Hợp",
    Content = "Chọn script để load menu"
})

Tabs.Script:Button({
    Title = "🟣 LongHiHi Hub V2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/Devs-LongHiHiV2/refs/heads/main/MainV2.txt"))()
    end
})

Tabs.Script:Button({
    Title = "🎆 LongHiHi Hub V4.1",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/Devs-LongHiHiV4.1.0/refs/heads/main/MainV4.1.0"))()
    end
})

Tabs.Script:Button({
    Title = "💸 Khá Bảnh Hub V3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/KhaBanhHubV3New/refs/heads/main/MainV3.lua.txt"))()
    end
})

Tabs.Script:Button({
    Title = "📦 Auto Chest V1",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/Auto-Chest/refs/heads/main/MainV1.Luau"))()
    end
})

Tabs.Script:Button({
    Title = "🌙 Night Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/BF-Beta.lua"))()
    end
})

Tabs.Script:Button({
    Title = "🔴 Redz Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/luacoder-byte/luacoder/refs/heads/main/RedzHub.lua"))()
    end
})

Tabs.Script:Button({
    Title = "🟡 Quantum Onyx",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
    end
})

Tabs.Script:Button({
    Title = "🐻 Teddy Hub",
    Callback = function()
        repeat task.wait() until game:IsLoaded()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
    end
})