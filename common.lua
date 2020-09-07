function triggerName(event)
    return string.format('rcore_shop:%s',event)
end

function dprint(str)
    if Config.Debug then
       print('[rcore_notification] '..str)
    end
end