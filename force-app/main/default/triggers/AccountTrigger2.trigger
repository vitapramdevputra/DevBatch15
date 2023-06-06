trigger AccountTrigger2 on Account (before delete, after delete) {

    if (Trigger.isBefore) {
        system.debug('before delete trigger.new : ' + trigger.new);
    }
    if (Trigger.isAfter) {
        system.debug('after delete trigger.new : ' + trigger.new);
    }
    
}