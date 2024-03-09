fx_version 'cerulean'
game 'gta5'
lua54 'yes'

client_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
    'client/*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
    'server/*.lua',
}

shared_scripts {
    'shared/*.lua',
}
