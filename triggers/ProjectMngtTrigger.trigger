trigger ProjectMngtTrigger on Project_Mngt__c (before insert, before update) {
for (Project_Mngt__c project : Trigger.new) {
        // Assign a default manager if not provided
        if (Trigger.isInsert && Project_Mngt__c.Manager__c == null) {
            Id defaultManager = ProjectMngtHelper.getDefaultManager();
            if (defaultManager != null) {
                project.Manager__c = defaultManager;
            }
        }
 
        // Ensure End Date is after Start Date
        if (project.End_Date__c != null && project.Start_Date__c != null && project.End_Date__c < project.Start_Date__c) {
            project.addError('End Date cannot be before Start Date.');
        }
    }
}