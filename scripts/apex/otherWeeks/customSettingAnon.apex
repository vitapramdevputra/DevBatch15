Map<string, countryCode__c> allCountryCode = CountryCode__c.getAll();
system.debug(allCountryCode);

//if we JUST want to get record for ANY ONE Country we can use getInstance method

CountryCode__c usaCC = CountryCode__c.getInstance('United States');
system.debug('Code of United States is ==> ' + usaCC.code__c);

//We can create TriggerSwitch
    //name
    //checkbox -> enabled(name of custom field)

    //records looks like below
        //NAME          ENABLED
        //Account       -> True
        //Contact       -> True
        //Opportunity   -> False

// TriggerSwitch__c accEnabled = TriggerSwitch__c.getInstance('Account');
// system.debug('Account trigger enabled  ==> ' + usaCC.enabled__c);