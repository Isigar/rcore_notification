function addNotificationForAll(title,message,style)
    TriggerClientEvent(triggerName('addNotification'),-1,title,message,style)
end

exports('addNotificationForAll',addNotificationForAll)

function addNotification(source,title,message,style)
    TriggerClientEvent(triggerName('addNotification'),source,title,message,style)
end

exports('addNotification',addNotification)

RegisterNetEvent(triggerName('addNotification'))
AddEventHandler(triggerName('addNotification'),function(source,title,message,style)
    addNotification(source,title,message,style)
end)

RegisterNetEvent(triggerName('addNotificationForAll'))
AddEventHandler(triggerName('addNotificationForAll'),function(title,message,style)
    addNotificationForAll(title,message,style)
end)