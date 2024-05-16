
ESX = exports['es_extended']:getSharedObject()

for _, job in ipairs(Config.dispatchJobs) do
    for _, command in ipairs(job.commands) do
        RegisterCommand(command, function(source, args, rawCommand)
            local message = rawCommand:sub(#command + 2)
            local playerData = ESX.GetPlayerData()

            for _, authorizedJob in ipairs(job.authorizedJobs) do
                if playerData.job.name == authorizedJob then
                    TriggerServerEvent('cookie_privatedispatch:superchat', job, message)
                    break
                end
            end
        end, false)
    end
end

RegisterNetEvent('cookie_privatedispatch:sendDispatchMessage', function(job, message)
    local playerData = ESX.GetPlayerData()

    for _, authorizedJob in ipairs(job.authorizedJobs) do
        if playerData.job.name == authorizedJob then
            TriggerEvent('chat:addMessage', message)
            break
        end
    end
end)
