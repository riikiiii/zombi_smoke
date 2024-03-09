['weed2'] = {
    label = 'Marijuana',
    weight = 2.5,
    stack = true,
    close = true,
    buttons = {
        {
            label = 'Rolla joint',
            action = function()
                TriggerEvent('creazionejointillegale')
            end
        }
    }
},

['weedlegale'] = {
    label = 'Erba legale',
    weight = 1,
    stack = true,
    close = true,
    buttons = {
        {
            label = 'Rolla joint',
            action = function()
                TriggerEvent('creazionejointlegale')
            end
        }
    }
},

['joint'] = {
    label = 'Joint',
    weight = 1,
    stack = false,
    close = true,
    client = {
        event = 'fumandocannoneitem',
    },
},

['joint_legale'] = {
    label = 'Joint legale',
    weight = 1,
    stack = false,
    close = true,
    client = {
        event = 'fumandocannoneitemlegale',
    },
},

['cartine_filtri'] = {
    label = 'Smoking kit',
    weight = 1,
    stack = true,
    close = true,
},

['accendino'] = {
    label = 'Accendino',
    weight = 1,
    stack = false,
    close = true,
},

['coke2'] = {
    label = 'Cocaina',
    weight = 2.5,
    stack = true,
    close = true,
    client = {
        event = 'pippaitem'
    },
},