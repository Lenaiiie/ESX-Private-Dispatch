ESX = exports['es_extended']:getSharedObject()



RegisterNetEvent('cookie_privatedispatch:superchat', function(job, message)
    local playerData = ESX.GetPlayerFromId(source)


    for _, authorizedJob in ipairs(job.authorizedJobs) do
        if playerData.job.name == authorizedJob then
            local name = job.name;
            local prefixColor = job.prefixColor;
            local chatColor = job.chatColor;


            local finalmessage = prefixColor .. name .. " (^*" .. playerData.name .. "): " .. chatColor .. message
            TriggerClientEvent('cookie_privatedispatch:sendDispatchMessage', -1, job, finalmessage)
            break
        end
    end
end)
