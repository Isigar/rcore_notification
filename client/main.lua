rcore = exports.rcore
rcore:getEsxInstance(function(obj)
    ESX = obj
end)

function addNotification(title,message,style)
    style = style or "success"

    SendNUIMessage({
        type = "msg",
        title = title,
        message = message,
        style = style
    })
end

exports('addNotification',addNotification)

RegisterNetEvent(triggerName('addNotification'))
AddEventHandler(triggerName('addNotification'),function(title,message,style)
    addNotification(title,message,style)
end)

function SendAlert(style,message)
    if style == "error" then
        style = "danger"
    end
    addNotification(nil,message,style)
end

exports('SendAlert',SendAlert)