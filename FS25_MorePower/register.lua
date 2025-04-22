--
-- register
--
-- More Power for LS 25
--
-- # Author: LS-Farmers
-- # GitHub: https://github.com/oschuhm/FS25_MorePower
-- # date:   22.04.2025
--

if g_specializationManager:getSpecializationByName('morePower') == nil then
    g_specializationManager:addSpecialization('morePower', 'morePower', Utils.getFilename('morePower.lua', g_currentModDirectory), nil)
end

for vehicleTypeName, vehicleType in pairs(g_vehicleTypeManager.types) do 
    if vehicleType ~= nil and SpecializationUtil.hasSpecialization(Drivable, vehicleType.specializations) and SpecializationUtil.hasSpecialization(Motorized, vehicleType.specializations) and not SpecializationUtil.hasSpecialization(Locomotive, vehicleType.specializations) then
        g_vehicleTypeManager:addSpecialization(vehicleTypeName, 'morePower')
		print ("  added morePower to " .. vehicleTypeName)
	else
		--print ("  skipped morePower for " .. vehicleTypeName)
    end
end