ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('creazionejointillegale', function()
    cartinedatossicol = exports.ox_inventory:Search('count', ConfigSmoke.rollingpaper)
    appizzol = exports.ox_inventory:Search('count', ConfigSmoke.lighter)

    if appizzol >= 1 then
        if cartinedatossicol >= 1 then
            if lib.progressBar({
                duration = 5000,
                label = 'Rollando joint...',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    car = true,
                },
                anim = {
                    dict = 'amb@prop_human_parking_meter@male@base',
                    clip = 'base',
                },
            }) then 
                ESX.ShowNotification('Hai rollato un joint')
                TriggerServerEvent('creajoint') --creazione joint
            else 
                ESX.ShowNotification('Azione annullata')
            end
        else 
            ESX.ShowNotification('Non hai cartine e filtri')
        end
    else
        ESX.ShowNotification('Non hai un accendino')
    end
end)

RegisterNetEvent('creazionejointlegale', function()
    cartinedatossicol = exports.ox_inventory:Search('count', ConfigSmoke.rollingpaper)
    appizzol = exports.ox_inventory:Search('count', ConfigSmoke.lighter)

    if appizzol >= 1 then
        if cartinedatossicol >= 1 then
            if lib.progressBar({
                duration = 5000,
                label = 'Rollando joint...',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    car = true,
                },
                anim = {
                    dict = 'amb@prop_human_parking_meter@male@base',
                    clip = 'base',
                },
            }) then 
                ESX.ShowNotification('Hai rollato un joint')
                TriggerServerEvent('creajointlegale') --creazione joint legale
            else 
                ESX.ShowNotification('Azione annullata')
            end
        else 
            ESX.ShowNotification('Non hai cartine e filtri')
        end
    else
        ESX.ShowNotification('Non hai un accendino')
    end
end)

RegisterNetEvent('fumandocannoneitem', function()
    if lib.progressBar({
        duration = 10000,
        label = 'Fumando joint...',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
        anim = {
            dict = 'amb@world_human_aa_smoke@male@idle_a',
            clip = 'idle_b',
        },
        prop = { 
            model = `prop_sh_joint_01`, 
            pos = vector3(0.0, 0.0, 0.0),
            rot = vector3(0.0, 0.0, 0.0) 
        },
    }) then
        ESX.ShowNotification('Hai fumato un joint')
        TriggerServerEvent('fumajoint') --rimuovi joint
        local playerPed = GetPlayerPed(-1)
        local playerPed = PlayerPedId()
        Citizen.Wait(1000)
        ClearPedTasksImmediately(playerPed)
        SetTimecycleModifier("spectator6")
        SetPedMotionBlur(playerPed, true)
        SetPedMovementClipset(playerPed, "MOVE_M@DRUNK@VERYDRUNK", true)
        SetPedIsDrunk(playerPed, true)
        AnimpostfxPlay("ChopVision", 10000001, true)
        ShakeGameplayCam("DRUNK_SHAKE", 1.0)
        SetEntityHealth(GetPlayerPed(-1), 200)
        --SetPedArmour(PlayerPedId(), 50)
        Citizen.Wait(100000) --tempo
        SetPedMoveRateOverride(PlayerId(),1.0)
        SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
        SetPedIsDrunk(GetPlayerPed(-1), false)		
        SetPedMotionBlur(playerPed, false)
        ResetPedMovementClipset(GetPlayerPed(-1))
        AnimpostfxStopAll()
        ShakeGameplayCam("DRUNK_SHAKE", 0.0)
        SetTimecycleModifierStrength(0.0)
        TriggerEvent('esx_status:remove', 'stress', 30000) -- rimuovi stress
    else 
        ESX.ShowNotification('Azione annullata')
    end
end)

RegisterNetEvent('fumandocannoneitemlegale', function()
    if lib.progressBar({
        duration = 10000,
        label = 'Fumando joint...',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
        anim = {
            dict = 'amb@world_human_aa_smoke@male@idle_a',
            clip = 'idle_b',
        },
        prop = { 
            model = `prop_sh_joint_01`, 
            pos = vector3(0.0, 0.0, 0.0),
            rot = vector3(0.0, 0.0, 0.0) 
        },
    }) then
        ESX.ShowNotification('Hai fumato un joint legale')
        TriggerServerEvent('fumajointlegale') --rimuovi joint legale
        TriggerEvent('esx_status:remove', 'stress', 30000) -- rimuovi stress
    else 
        ESX.ShowNotification('Azione annullata')
    end
end)

RegisterNetEvent('smontapacchettomarlboro', function()
    if lib.progressBar({
        duration = 5000,
        label = 'Smontando pacchetto...',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
        anim = {
            dict = 'amb@prop_human_parking_meter@male@base',
            clip = 'base',
        },
    }) then
        ESX.ShowNotification('Hai smontato il pacchetto')
        TriggerServerEvent('sigaretteitem') --rimuovi pacchetto sigaretta
    else 
        ESX.ShowNotification('Azione annullata')
    end
end)

RegisterNetEvent('fumamarlboroitem', function()
    if lib.progressBar({
        duration = 10000,
        label = 'Fumando sigaretta...',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
        anim = {
            dict = 'amb@world_human_aa_smoke@male@idle_a',
            clip = 'idle_b',
        },
        prop = { 
            model = `prop_cs_ciggy_01`, 
            pos = vector3(0.0, 0.0, 0.0),
            rot = vector3(0.0, 0.0, 0.0) 
        },
    }) then
        ESX.ShowNotification('Hai fumato una sigaretta')
        TriggerServerEvent('rimuovisigaretta') --rimuovi sigaretta
        TriggerEvent('esx_status:remove', 'stress', 30000) -- rimuovi stress
    else 
        ESX.ShowNotification('Azione annullata')
    end
end)

RegisterNetEvent('pippaitem', function()
    if lib.progressBar({
        duration = 10000,
        label = 'Pippando cocaina...',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
        anim = {
            dict = 'amb@prop_human_parking_meter@male@base',
            clip = 'base',
        },
    }) then
        ESX.ShowNotification('Hai pippato della cocaina')
        TriggerServerEvent('pippacoca') --rimuovi coca
        local playerPed = GetPlayerPed(-1)
        local playerPed = PlayerPedId()
        Citizen.Wait(1000)
        ClearPedTasksImmediately(playerPed)
        SetTimecycleModifier("spectator5")
        SetPedMotionBlur(playerPed, true)
        SetPedMovementClipset(playerPed, "MOVE_M@QUICK", true)
        SetPedIsDrunk(playerPed, true)
        SetPedMoveRateOverride(PlayerId(),10.0)
        SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
        AnimpostfxPlay("DrugsMichaelAliensFight", 10000001, true)
        ShakeGameplayCam("DRUNK_SHAKE", 3.0)
        Citizen.Wait(100000) -- tempo
        SetPedMoveRateOverride(PlayerId(),1.0)
        SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
        SetPedIsDrunk(GetPlayerPed(-1), false)		
        SetPedMotionBlur(playerPed, false)
        ResetPedMovementClipset(GetPlayerPed(-1))
        AnimpostfxStopAll()
        ShakeGameplayCam("DRUNK_SHAKE", 0.0)
        SetTimecycleModifierStrength(0.0)
    else 
        ESX.ShowNotification('Azione annullata')
    end
end)