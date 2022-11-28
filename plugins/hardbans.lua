--[[---------------------------------------------------------------------------
    ** License: https://creativecommons.org/licenses/by-nc-nd/4.0/

    ** Copryright 2022 Riggs Mackay
    ** This work is licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 4.0 Unported License.
---------------------------------------------------------------------------]]--

local PLUGIN = PLUGIN

PLUGIN.name = "Player Hard Bans"
PLUGIN.description = "Hard Bans players from the server."
PLUGIN.author = "Riggs Mackay"

PLUGIN.hardbans = {
    -- Known Retards
    "STEAM_0:0:152575886",      -- mattnmad (faggot)
    "STEAM_0:0:234298798",      -- bob dobbs
    "STEAM_0:0:142230693",      -- Heartaches (Exidius)
    "STEAM_0:1:582087204",      -- ThroughKissesAndHeartaches (Exidius)
    "STEAM_0:0:200886160",      -- Hardway
    "STEAM_0:1:108198228",      -- Candyexin (transgender faggot)
    "STEAM_0:1:100301670",      -- Phosgene (Hacking faggot)
    "STEAM_0:0:732728856",      -- callum1h3 (backdooring faggot)
    "STEAM_0:0:537995060",      -- Simulation (backdooring faggot)
    "STEAM_0:0:206764368",      -- Blizzard Boi (Server Killer)
    "STEAM_0:0:157932073",      -- NukeGoBoom (Power Mod)
    "STEAM_0:0:438593944",      -- Blight (Nazi wannabe Fuck)
    "STEAM_0:0:110606813",    -- Greg Smith (literally no explanation for this kid)
    "STEAM_0:0:77728738",       -- Max Vice (Community Banned)
    "STEAM_0:0:88226242",     --SPURION (alt)
    "STEAM_0:0:503985107",    --SPURION (Schizo)

    -- Sneedwaffen
    "STEAM_0:0:156780497",      -- Puggo (KEEP HARDBANNED, KNOWN CHEATER & DOXXER)
    "STEAM_0:0:457706317",      -- Dimon (Sneedwaffen Leader)
    "STEAM_0:1:599395506",      -- Dimon (Alt)
    "STEAM_0:1:100458617",      -- The_Guardian
    "STEAM_0:0:141559090",      -- Bread
    "STEAM_0:1:37576216",       -- Jera
    "STEAM_0:0:535100462",      -- valyy (Pedo Nazi)
    "STEAM_0:1:104758607",      -- valyy (Alt)
    "STEAM_0:0:57815069",       -- Satou
    "STEAM_0:0:81926067",       -- Abiy Ahmad Ali 5
    "STEAM_0:0:420930237",      -- Flames
    "STEAM_0:1:197868698",      -- Degenerate
    "STEAM_0:0:222696076",      -- Blitzo
    "STEAM_0:1:196566827",      -- Criminal
    "STEAM_0:1:526501347",      -- Purplexde
    "STEAM_0:0:143804480",      -- highyeenah (Idk actual name, just some furry cunt)
    "STEAM_0:1:427293255",      -- Banshee
    "STEAM_0:0:119456821",      -- Bennyfridge
    "STEAM_0:0:213189960",      -- Central Intelligence Agency (Idk actual name) (lite network 2020 backdoorer)
    "STEAM_0:1:124421662",      -- Coach (Probably an alt)
    "STEAM_0:0:21778026",       -- Dr Coomer
    "STEAM_0:1:177728214",      -- ENIGMA (Probably a cocksucker)
    "STEAM_0:1:103669717",      -- Oil
    "STEAM_0:0:63306763",       -- Oil (Alt)
    "STEAM_0:0:104209528",      -- PostTac
    "STEAM_0:0:232361329",      -- Xhorinhas
    "STEAM_0:0:100835231",      -- ping man (Idk name, some cocksucker from Estonia)
    "STEAM_0:0:176358061",      -- Gritz
    "STEAM_0:0:84061843",       -- Josh
    "STEAM_0:0:447565677",      -- Yes (Clientside Lua Grabber)
    "STEAM_0:1:62272239",       -- Didde (Idk)
    "STEAM_0:1:224501183",      -- ¿¿¿ (Actual pedophile who doesn't have a name)
    "STEAM_0:0:548044167",      -- Ivan04
    "STEAM_0:0:569498588",      -- Emperor Trollface
    "STEAM_0:1:623044600",      -- Blackface Steve
    "STEAM_0:1:629121405",      -- Gangweed
    "STEAM_0:1:166201392",      -- CZ
    "STEAM_0:1:185133649",      -- Shadow
    "STEAM_0:1:98525620",       -- v44su
    "STEAM_0:0:87998391",       -- DLEtna258
    "STEAM_0:1:197341404",      -- Alfreeed
    "STEAM_0:1:240356511",      -- Qas / Qaz
    "STEAM_0:0:23501876",       -- Harland (Pedophile)
    "STEAM_0:1:220466457",      -- Diablo
    "STEAM_0:0:108381801",      -- Hannibal
    "STEAM_0:0:46973366",       -- Vivini (Pedophile)
    "STEAM_0:1:75893677",       -- BoxsAndSocks
    "STEAM_0:1:168580379",      -- Kirtsteep (ERP Bait)
    "STEAM_0:1:35521054",       -- Winter
    "STEAM_0:0:447065614",      -- Galaxy Man
    "STEAM_0:1:55189590",       -- Benkku
    "STEAM_0:0:224154486",      -- bornaorange
    "STEAM_0:1:168213231",      -- bathdoge
    "STEAM_0:1:63837056",       -- Quantum
    "STEAM_0:1:55664955",       -- WinComp
    "STEAM_0:1:69735327",       -- Whiplash
    "STEAM_0:1:197470921",      -- Soritus
    "STEAM_0:0:198636477",      -- Klaus Schneider

    -- Unknown (I don't know who these are, probably minges)

}

if ( SERVER ) then
    function PLUGIN:PlayerInitialSpawn(ply)
        for k, v in pairs(PLUGIN.hardbans) do
            if ( ply:SteamID() == v ) then
                local targetCountry = system.GetCountry() or "unknown country"
                ply:Kick("You have been hard banned from the server") (".\nYou are unable to appeal your ban in any form.")
                print(ply:SteamName().." ("..tostring(v)..") tried to join ("..targetCountry.."), but is hard banned. IP: "..ply:IPAddress().." | ID: "..ply:SteamID())

                for _, i in pairs(player.GetAll()) do
                    if ( i:IsAdmin() ) then
                        i:ChatNotify(ply:SteamName().." tried to join the Server but is hardbanned. Check RCON Console for details.")
                    end
                end
            end
        end
    end
end
