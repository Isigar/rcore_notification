fx_version 'bodacious' 
games { 'gta5' }

ui_page "client/html/index.html"

files {
    "client/html/index.html",
    "client/html/css/style.css",
    "client/html/css/animation.css",
    "client/html/js/bootstrap-notify.min.js",
    "client/html/js/script.js",
}

server_scripts {
    'server/main.lua'
}

client_scripts {
    'client/main.lua',
}

shared_scripts {
    'config.lua',
    'common.lua'
}

dependencies {
    'rcore'
}















