local PLUGIN = PLUGIN
function PLUGIN:Interact(client,ent)
    client.aw_terminal = ent
    netstream.Start(client,"aw_ShowTerminalMenu")
end
netstream.Hook("aw_LicenceBuy",function(client,data)
    PLUGIN:BuyLicence(client,data)
end)
function PLUGIN:BuyLicence(client,data)
    local char = client:GetCharacter()
    if !char then return end
    local ent = client.aw_terminal
    if IsValid(ent) then
        if client:GetPos():Distance(ent:GetPos()) > 200 then return end
        if self.ItemCategories[data] and !self.LicencesWhichPlayersCantBuy[data] then
            local price = self.LicencesPrices[data] or ix.config.Get("DefaultLicencePrice",100)
            if char:HasMoney(price) then
                char:TakeMoney(price)
                char:SetData("terminal_licence",data)
                char:Save()
                client:Notify("You have successfully purchased a license.")
                ent:EmitSound("buttons/button1.wav")
                return
            end
            client:Notify("You need "..price-char:GetMoney().." more tokens to buy it!")
        end
    end
end