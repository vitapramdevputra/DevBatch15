public class ContactTriggerHandler {
    //which all context variable we need here?
        //new, old or oldMap
    public static void validateContactUpdate1(
        List<contact> cTriggerNew, 
        List<contact> cTriggerOld,
        Map<id, contact> cTriggerNewMap, 
        Map<id, contact> cTriggerOldMap){

            for(Contact newContact: cTriggerNew){
                //check if existing leadsource was partner referral.
                    //newContact.LeadSource can be partner referral. NO error there.
                        //BUT
                    //old contact's leadsource is Partner referral then throw error.
                    Contact oldContact = cTriggerOldMap.get(newContact.Id);
                    if(oldContact.LeadSource == 'Partner Referral'){
                        //addError works with Trigger.new or Trigger.newMap record. 
                            //We cannot use addError with Trigger.old or Trigger.oldMap
                        newContact.addError('Cannot update contact with lead source as Partner Referral');
                    }
            }

    }

    public static void validateContactUpdate2(
        List<contact> cTriggerNew, 
        List<contact> cTriggerOld,
        Map<id, contact> cTriggerNewMap, 
        Map<id, contact> cTriggerOldMap){

            //do not allow user to update leadsource

            //for each for trigger.new
                //check if leadsource is changed?
                    //old contact lead source != new contact lead source
                        //addError
            for (Contact newContact : cTriggerNew) {
                if (newContact.LeadSource != cTriggerOldMap.get(newContact.id).leadsource) {
                    //how to access label value in apex??
                        //system.label.labelName
                    newContact.LeadSource.addError(System.label.ContactValidation2);
                }
            }
        }

}