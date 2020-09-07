# rcore_notifications
Simple html notification based on boostrap and bootstrap-notify

##How to use
### Client side
With exports
```lua
rcoreNotif = exports.rcore_notification
rcoreNotif.addNotification('Title','Message','style')
```
With event
```lua
local title,message,style = "title","message","success"
TriggerEvent('rcore_notification:addNotification',title,message,style)
```

### Server side
With exports
```lua
rcoreNotif = exports.rcore_notification
rcoreNotif.addNotification(source,'Title','Message','style')

rcoreNotif.addNotificationForAll('Title','Message','style')
```

With event
```lua
local source = 0
local title,message,style = "title","message","style"
TriggerEvent('rcore_notificaton:addNotification',source,title,message,style)

TriggerEvent('rcore_notificaton:addNotificationForAll',title,message,style)
```

### Sources:

boostrap: https://getbootstrap.com/

animations.css:https://daneden.github.io/animate.css/

boostrap_notify: http://bootstrap-notify.remabledesigns.com/
