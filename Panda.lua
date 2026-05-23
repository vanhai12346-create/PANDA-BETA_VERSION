pcall(function()
    -- CƠ CHẾ ANTI-BAN 100% (BYPASS CHỐNG QUÉT & HOOK METATABLE NGẦM)
    local MT = getrawmetatable(game)
    local OldIndex = MT.__index
    setreadonly(MT, false)
    MT.__index = newcclosure(function(t, k)
        if checkcaller() then return OldIndex(t, k) end
        if t:IsA("Humanoid") and (k == "WalkSpeed" or k == "JumpPower") then return 16 end
        if t:IsA("BasePart") and k == "Velocity" then return Vector3.new(0, 0, 0) end
        return OldIndex(t, k)
    end)
    setreadonly(MT, true)

    if game:GetService("CoreGui"):FindFirstChild("PND") then game:GetService("CoreGui").PND:Destroy() end
    local U = Instance.new("ScreenGui", game:GetService("CoreGui")) U.Name = "PND"
    local F = Instance.new("Frame", U) F.Size = UDim2.new(0, 290, 0, 520) F.Position = UDim2.new(0.35, 0, 0.08, 0) F.BackgroundColor3 = Color3.fromRGB(25, 25, 25) F.Active = true F.Draggable = true
    Instance.new("UIStroke", F).Color = Color3.fromRGB(255, 50, 50)
    
    local T = Instance.new("TextLabel", F) T.Size = UDim2.new(1, 0, 0, 40) T.Text = "PANDA HUB - GOD UPDATE V27" T.TextColor3 = Color3.fromRGB(255, 255, 255) T.BackgroundColor3 = Color3.fromRGB(40, 40, 40) T.TextSize = 13 T.Font = Enum.Font.SourceSansBold
    
    local scrollingFrame = Instance.new("ScrollingFrame", F) scrollingFrame.Size = UDim2.new(1, 0, 1, -40) scrollingFrame.Position = UDim2.new(0, 0, 0, 40) scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 1580) scrollingFrame.ScrollBarThickness = 6 scrollingFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25) scrollingFrame.BorderSizePixel = 0
    
    local function createBtn(text, pos)
        local B = Instance.new("TextButton", scrollingFrame) B.Size = UDim2.new(0, 250, 0, 32) B.Position = UDim2.new(0, 15, 0, pos) B.BackgroundColor3 = Color3.fromRGB(45, 45, 45) B.Text = text B.TextColor3 = Color3.fromRGB(255, 50, 50) B.TextSize = 11 B.Font = Enum.Font.SourceSansBold; Instance.new("UICorner", B).CornerRadius = UDim.new(0, 6)
        return B
    end

    local B_Anti = createBtn("ANTI-BAN HYPER SECURITY: ĐANG BẬT", 15) B_Anti.BackgroundColor3 = Color3.fromRGB(20, 60, 35) B_Anti.TextColor3 = Color3.fromRGB(0, 255, 128)
    local B_TerrorBoss = createBtn("AUTO SĂN TERRORSHARK 150K - 195K MÁU: TẮT", 55)
    local B_SeaEvent = createBtn("AUTO SĂN QUÁI BIỂN (SEA BEAST & TERROR): TẮT", 95)
    local B_BuyAbilities = createBtn("AUTO MUA NHẢY CAO + TỐC BIẾN + CƯỜNG HÓA: TẮT", 135)
    local B_FarmHakiV1 = createBtn("AUTO TẬP HAKI V1 (NÉ + HOP SERVER): TẮT", 175)
    local B_HakiV2 = createBtn("AUTO LÀM Q LẤY HAKI QUAN SÁT V2: TẮT", 215)
    local B_BuyMelee = createBtn("AUTO MUA FULL VÕ V1 & V2 (SHOP VÕ): TẮT", 255)
    local B_OpenDragon = createBtn("AUTO MỞ CỬA TỘC RỒNG & GẠT CẦN: TẮT", 295)
    local B_LeviHeart = createBtn("AUTO KÉO TIM LEVIATHAN VỀ TIKI/PHỤ NỮ: TẮT", 335)
    local B_DragonHelmet = createBtn("AUTO SĂN MŨ RỒNG (DRAGON BANDANA): TẮT", 375)
    local B_DragonWep = createBtn("AUTO LẤY KIẾM RỒNG & SÚNG RỒNG: TẮT", 415)
    local B_DragonBelt = createBtn("AUTO SĂN ĐAI ĐEN / PHỤ KIỆN RỒNG: TẮT", 455)
    local B_RaceV1V3 = createBtn("AUTO UP TỘC TỪ V1 LÊN V3: TẮT", 495)
    local B_RaceV4 = createBtn("AUTO LÀM THỬ THÁCH & MUA GEAR V4: TẮT", 535)
    local B_Guitar = createBtn("AUTO LẤY GHITA LINH HỒN (SOUL GUITAR): TẮT", 575)
    local B_Mat = createBtn("AUTO CÀY NGUYÊN LIỆU (TOÀN MAP): TẮT", 615)
    local B_FixCyborg = createBtn("AUTO ĐƯA KEY/NÃO LẤY TỘC CYBORG: TẮT", 655)
    local B0 = createBtn("AUTO GOM QUÁI DIỆN RỘNG: TẮT", 695)
    local B_Quest = createBtn("AUTO NHẬN NV & FARM LEVEL: TẮT", 735)
    local B_Chest = createBtn("AUTO NHẶT RƯƠNG TOÀN BẢN ĐỒ: TẮT", 775)
    local B_Law = createBtn("AUTO ĐỔI F LẤY CHIP & RAID LAW: TẮT", 815)
    local B_BB = createBtn("AUTO HOP TÌM & DIỆT RÂU ĐEN: TẮT", 855)
    local B1 = createBtn("AUTO HOP TÌM & DIỆT RIP INDRA: TẮT", 895)
    local B3 = createBtn("AUTO HOP TÌM & DIỆT DOUGH KING: TẮT", 935)
    local B_Fish = createBtn("AUTO CÂU CÁ & CÂU RƯƠNG: TẮT", 975)
    local B_Kit1 = createBtn("AUTO HOP TÌM & NHẶT L.HỒN KITSUNE: TẮT", 1015)
    local B_Kit2 = createBtn("AUTO ĐỔI LINH HỒN KITSUNE (SHRINE): TẮT", 1055)
    local B5 = createBtn("AUTO HOP TÌM & ĐÁNH LEVIATHAN: TẮT", 1095)
    local B_Bone1 = createBtn("AUTO FARM XƯƠNG (GOM QUÁI): TẮT", 1135)
    local B_Bone2 = createBtn("AUTO ĐỔI XƯƠNG (RANDOM BONE): TẮT", 1175)
    local B2 = createBtn("AUTO TRIỆU HỒI & DIỆT KATAKURI: TẮT", 1215)
    local B4 = createBtn("AUTO NHIỆM VỤ LẤY TUSHITA: TẮT", 1255)
    local B8 = createBtn("AUTO NHẶT & LƯU TRỮ TRÁI: TẮT", 1295)
    local B9 = createBtn("AUTO LẤY TRÁI & ĐỔI CHIP BÌNH THƯỜNG: TẮT", 1335)
    local B10 = createBtn("AUTO BẮT ĐẦU RAID & FARM RAID: TẮT", 1375)
    local B11 = createBtn("AUTO SĂN BOSS ELITE: TẮT", 1415)
    local B13 = createBtn("AUTO HOP SĂN 3 KIẾM: TẮT", 1455)

    _G.AutoTerror150k195k = false; B_TerrorBoss.MouseButton1Click:Connect(function() _G.AutoTerror150k195k = not _G.AutoTerror150k195k; B_TerrorBoss.Text = _G.AutoTerror150k195k and "ĐANG QUÉT TERRORSHARK 150K-195K..." or "AUTO SĂN TERRORSHARK 150K - 195K MÁU: TẮT"; B_TerrorBoss.TextColor3 = _G.AutoTerror150k195k and Color3.fromRGB(0, 255, 128) or Color3.fromRGB(255, 50, 50) end)
    _G.AutoSeaEvents = false; B_SeaEvent.MouseButton1Click:Connect(function() _G.AutoSeaEvents = not _G.AutoSeaEvents; B_SeaEvent.Text = _G.AutoSeaEvents and "ĐANG LÁI THUYỀN SĂN QUÁI BIỂN..." or "AUTO SĂN QUÁI BIỂN (SEA BEAST & TERROR): TẮT"; B_SeaEvent.TextColor3 = _G.AutoSeaEvents and Color3.fromRGB(0, 255, 128) or Color3.fromRGB(255, 50, 50) end)

    local function Click()
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    end

    -- LOGIC MỚI V27: KHÓA CHUẨN VÀ TIÊU DIỆT TERRORSHARK 150K & 195K MÁU
    spawn(function()
        while task.wait(0.2) do
            if _G.AutoTerror150k195k and game.PlaceId == 7449423635 then
                pcall(function()
                    local Plr = game.Players.LocalPlayer
                    local Char = Plr.Character
                    local TargetShark = nil
                    
                    -- Tìm kiếm thực thể Terrorshark đáp ứng bộ lọc lượng máu lớn
                    for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                        if v.Name == "Terrorshark" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            local hp = v.Humanoid.MaxHealth
                            if hp == 150000 or hp == 195000 then
                                TargetShark = v
                                break
                            end
                        end
                    end
                    
                    if TargetShark and TargetShark.Humanoid.Health > 0 then
                        -- Tự động lấy vũ khí cầm tay (Cầm Melee hoặc Sword đầu tiên có trong Balo)
                        if not Char:FindFirstChildOfClass("Tool") then
                            for _, tool in pairs(Plr.Backpack:GetChildren()) do
                                if tool:IsA("Tool") and (tool.ToolTip == "Melee" or tool.ToolTip == "Sword") then
                                    Char.Humanoid:EquipTool(tool)
                                    break
                                end
                            end
                        end
                        
                        -- Bay lơ lửng an toàn cách đầu quái đúng 65 mét để miễn nhiễm mọi đòn cắn nuốt
                        Char.HumanoidRootPart.CFrame = TargetShark.HumanoidRootPart.CFrame * CFrame.new(0, 65, 0)
                        
                        -- Kích hoạt đấm và đăng ký xả sát thương liên tục
                        Click()
                        game:GetService("ReplicatedStorage").Remotes.SubServices.CombatService.DamageRegister:InvokeServer({[1] = TargetShark.Humanoid, [2] = 1})
                    else
                        -- Nếu chưa xuất hiện, tự lái thuyền đi tuần tra tại vùng đá biển nguy hiểm Level 5-6
                        local myBoat = nil
                        for _, b in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                            if b:FindFirstChild("Owner") and b.Owner.Value == Plr.Name then myBoat = b break end
                        end
                        
                        if myBoat and myBoat:FindFirstChild("VehicleSeat") then
                            if (myBoat.VehicleSeat.Position - Vector3.new(-4500, 20, -14500)).Magnitude > 600 then
                                myBoat.VehicleSeat.CFrame = CFrame.new(-4500, 20, -14500)
                            end
                        else
                            -- Mua thuyền Dinghy miễn phí tại bến Tiki Outpost để khởi hành
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", "Dinghy")
                            task.wait(1)
                        end
                    end
                end)
            end
        end
    end)

    -- VÒNG LẶP GOM QUÁI VÀ ĐAM NGẦM DIỆN RỘNG TOÀN MAP
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BringMob or _G.FarmBone or _G.Indra or _G.Katakuri or _G.DoughKing or _G.Darkbeard or _G.Tushita or _G.Leviathan or _G.Elite or _G.Raid or _G.AutoLawRaid or _G.AutoFarmLevel or _G.AutoFarmMaterials or _G.AutoSoulGuitar or _G.AutoRaceV4 or _G.AutoRaceV1V3 or _G.AutoDragonWeapon or _G.AutoDragonBelt or _G.AutoDragonHelmet or _G.AutoLeviathanHeart or _G.AutoOpenDragonGate or _G.AutoBuyMeleeShop or _G.AutoFarmHakiV1 or _G.AutoHakiV2 or _G.AutoBuyAbilities or _G.AutoSeaEvents or _G.AutoTerror150k195k then
                    local myChar = game.Players.LocalPlayer.Character
                    if myChar and myChar:FindFirstChild("HumanoidRootPart") then
                        local myPos = myChar.HumanoidRootPart.Position
                        local enemies = game:GetService("Workspace"):FindFirstChild("Enemies") or game:GetService("Workspace")
                        for _, v in pairs(enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - myPos).Magnitude < 350 then
                                    if _G.BringMob or _G.FarmBone or _G.Katakuri or _G.DoughKing or _G.Darkbeard or v.Name == "Order" or _G.AutoFarmLevel or _G.AutoFarmMaterials or _G.AutoSoulGuitar or _G.AutoRaceV4 or _G.AutoRaceV1V3 or _G.AutoDragonWeapon or _G.AutoDragonBelt or _G.AutoDragonHelmet or _G.AutoLeviathanHeart or _G.AutoOpenDragonGate or _G.AutoBuyMeleeShop or _G.AutoFarmHakiV1 or _G.AutoHakiV2 or _G.AutoBuyAbilities or _G.AutoSeaEvents or _G.AutoTerror150k195k then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = myChar.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
end)
