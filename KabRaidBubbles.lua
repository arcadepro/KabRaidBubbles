local f = CreateFrame("Frame")

local function checkStatus()
	local inInstance, instanceType = IsInInstance()
	local inCombat = InCombatLockdown()

	if not inCombat then

		if instanceType == "none" then

			SetCVar("chatBubbles", 0)

		else

			SetCVar("chatBubbles", 1)

		end
	end
end

f:SetScript("OnEvent", checkStatus)
f:RegisterEvent("PLAYER_ENTERING_WORLD")
--f:RegisterEvent("PLAYER_REGEN_DISABLED")
