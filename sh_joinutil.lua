local WhitelistSystemEnabled = false -- true or false
local DiscordServer = "" -- Add your discord server for contact or smth

local HardBans = {
    "STEAM_0:1:1395956",
    "STEAM_0:0:585787645"
}

local Whitelisted = {
    ""
}

local bannedUsers = {}
for k, v in pairs(HardBans) do
    bannedUsers[v] = true
end

local whitelistedUsers = {}
for k, v in pairs(Whitelisted) do
    whitelistedUsers[v] = true
end

if ( SERVER ) then
    hook.Add("PlayerAuthed", "HEL:POOOOOOOOOOOO", function(ply, steamid)
        if ( bannedUsers[steamid] ) then
            ply:Kick("You have been permanently banned from Arrowhead and you are unable to appeal your ban.")
        end

        if not ( steamid == util.SteamIDFrom64(ply:OwnerSteamID64()) ) then
            ply:Kick("We do not allow Family Shared Accounts, please purchase the game fully.")
        end
    end)

    hook.Add("CheckPassword", "whitelistCheck", function(s64, ipAddress, svPassword, clPassword, name)
        local sid = util.SteamIDFrom64(s64)

        if ( WhitelistSystemEnabled == true ) then
            if ( whitelistedUsers[sid] ) then
                if ( DiscordServer != "" ) then
                    game.KickID(sid, "You are not whitelisted to play on this server. Visit "..DiscordServer)
                else
                    game.KickID(sid, "You are not whitelisted to play on this server.")
                end
            end
        end
    end)
end