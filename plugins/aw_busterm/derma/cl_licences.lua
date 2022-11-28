local PLUGIN = PLUGIN
local PANEL = {}
local function Query(prices,k)
Derma_Query(
    "Do you want to buy licence on "..k.." for "..prices[k].." tokens?", 
    "Buy licence", 
    "Buy", 
    function()
        netstream.Start("aw_LicenceBuy",k)
    end,
    "Cancel")
end
local function HasLicence(k)
    return LocalPlayer():GetCharacter():GetData("terminal_licence",""):lower():match(k:lower())
end
function PANEL:Init()
	self:SetSize(460, 360)
	self:SetTitle("Buy Licences")
	self:Center()
	self:MakePopup()

	self.scroll = self:Add("DScrollPanel")
	self.scroll:Dock(FILL)

	self.list = self.scroll:Add("DListLayout")
	self.list:Dock(FILL)
    local prices = {}
    for k in pairs(PLUGIN.ItemCategories) do
        if !PLUGIN.LicencesWhichPlayersCantBuy[k] then
            prices[k] = PLUGIN.LicencesPrices[k] or ix.config.Get("DefaultLicencePrice",100)
            local licence = self.list:Add("DPanel")
            licence:SetTall(36)
            licence:Dock(TOP)
            licence:DockMargin(4, 4, 4, 0)

            licence.name = licence:Add("DLabel")
            licence.name:SetPos(10, 0)
            licence.name:SetSize(200, 36)
            licence.name:SetFont("ixSmallFont")
            licence.name:SetText(k.." licence")
            licence.name:SetContentAlignment(4)
            licence.name:SetTextColor(color_white)

            licence.Buy = licence:Add("DButton")
            licence.Buy:Dock(RIGHT)
            licence.Buy:SetText(!HasLicence(k) and "Buy" or "Alredy")
            licence.Buy:SetWide(48)
            licence.Buy:DockMargin(3, 3, 3, 3)
            licence.Buy:SetTextColor(color_white)
            licence.Buy.DoClick = function(this)
                if !HasLicence(k) then
                    Query(prices,k)
                end
            end
        end
	end
end

vgui.Register("aw_DermaLicence", PANEL, "DFrame")
