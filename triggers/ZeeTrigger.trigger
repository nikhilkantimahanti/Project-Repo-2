trigger ZeeTrigger on Zee__c (before insert, before update) {
    for (Zee__c zee : Trigger.new) {
        if (Trigger.isInsert || (Trigger.isUpdate && (zee.ZeeNews__c != Trigger.oldMap?.get(zee.Id)?.ZeeNews__c || zee.ZeeCinema__c != Trigger.oldMap?.get(zee.Id)?.ZeeCinema__c))) {

            if (zee.ZeeNews__c != null && zee.ZeeCinema__c != null) {
                if (zee.ZeeNews__c > zee.ZeeCinema__c) {
                    zee.Description__c = 'More Zee News'; // Using Description__c
                } else if (zee.ZeeNews__c < zee.ZeeCinema__c) {
                    zee.Description__c = 'More Zee Cinema'; // Using Description__c
                } else {
                    zee.Description__c = 'Equal number of Zee News and Zee Cinema'; // Using Description__c
                }
            } else {
                zee.Description__c = 'Zee News or Zee Cinema count is missing'; // Using Description__c
            }
        }
    }
}