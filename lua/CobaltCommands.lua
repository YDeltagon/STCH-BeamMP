--Created by Preston Elam (CobaltTetra) 2020
--THIS SCRIPT IS PROTECTED UNDER AN GPLv3 LICENSE
--ADDITIONALLY, YOU MAY EDIT THIS SCRIPT, BUT BY USING IT YOU AGREE TO NOT REMOVE THE CREDIT ON THE FIRST LINE IF IT IS RESDITRIBUTED, YOUR OWN CREDIT MAY BE ADDED ON LINE2.

local M = {}


----------------------------------------------------------EVENTS-----------------------------------------------------------

--runs when the script is called.
function onInit()
    
end



----------------------------------------------------------MUTATORS---------------------------------------------------------



---------------------------------------------------------ACCESSORS---------------------------------------------------------



---------------------------------------------------------FUNCTIONS---------------------------------------------------------

local function kick(args)
	print("attempting to kick " .. args[1])
	DropPlayer(tonumber(args[2]), "You've been kicked from the server")
end

local function ban(args)
	print("banned" .. args[1] .. "for this session")
	M.kick(args)
	CE.ban( GetPlayerDiscordID(args[1]), 1)end

local function list(args)
	players = ""

	for k,v in pairs(GetPlayers()) do
		players = players .. tostring(k) .. ": " .. tostring(v) .. "\n"
	end

	return players
end



------------------------------------------------------PUBLICINTERFACE------------------------------------------------------

M.onInit = onInit

----UPDATERS-----

----MUTATORS-----

----ACCESSORS----

----FUNCTIONS----
M.kick = kick
M.ban = ban
M.list = list

M.onInit()

return M