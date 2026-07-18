-- Main hub loader
-- Add each game's PlaceId and the raw URL to its script below.
-- Find a PlaceId by checking game.PlaceId while in that game.

local games = {
	[0000000000] = "https://raw.githubusercontent.com/iamdookie1/Robloxx/Main/games/HideAndSeek.lua",   -- Hide and Seek
	[0000000000] = "https://raw.githubusercontent.com/iamdookie1/Robloxx/Main/games/ParkourModded.lua",  -- Parkour Modded
}

local placeId = game.PlaceId
local url = games[placeId]

if url then
	loadstring(game:HttpGet(url))()
else
	warn("[Hub] No script found for this game. PlaceId: " .. tostring(placeId))
end
