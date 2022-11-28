PLUGIN.name = "Passive Dispatch"
PLUGIN.description = "Automatic dispatch"
PLUGIN.author = "Stalker"

ix.util.Include("sv_hooks.lua")

do
	local CLASS = {}
	CLASS.color = Color(150, 100, 100)
	CLASS.format = "Dispatch broadcasts \"%s\""

	function CLASS:OnChatAdd(speaker, text)
		chat.AddText(self.color, string.format(self.format, text))
	end

	ix.chat.Register("dispatchs", CLASS) 
end   