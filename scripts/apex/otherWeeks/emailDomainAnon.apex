Map<string, emailDomain__mdt> allEmailDomains = emailDomain__mdt.getAll();
system.debug(allEmailDomains);
system.debug('-------');
for (String key : allEmailDomains.keySet()) {
    system.debug(key + ' DOMAIN is --> ' + allEmailDomains.get(key).domain__c);
}