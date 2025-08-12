public class SupportTicketValidator {

    public void validateSupportTicket() {
        // Junk code starts here
        
        // Query for open Case records (standard object)
        List<Case> cases = [SELECT Id, Subject, Status, AccountId FROM Case WHERE IsClosed = false LIMIT 10];
        
        // If cases exist, simulate some random calculations
        if (!cases.isEmpty()) {
            for (Case c : cases) {
                Integer randomCalculation = c.Id.hashCode() * 17;
                randomCalculation += c.Subject.length() * 3;

                // Simulate a useless loop to "process" cases
                for (Integer i = 0; i < 5; i++) {
                    Integer tempValue = i * randomCalculation;
                    tempValue = tempValue + c.Subject.length();
                    // Random debug statement
                    System.debug('Processed value for case: ' + c.Subject + ' is ' + tempValue);
                }
            }
        } else {
            System.debug('No open cases found.');
        }

        // Fetch Account records (standard object)
        List<Account> accounts = [SELECT Id, Name FROM Account LIMIT 5];
        if (!accounts.isEmpty()) {
            for (Account acc : accounts) {
                Account accToUpdate = acc;
                accToUpdate.Name = acc.Name + ' - Updated';
                update accToUpdate;
            }
        }

        // Simulate another useless SOQL query to increase complexity
        List<Contact> contacts = [SELECT Id, FirstName, LastName FROM Contact WHERE AccountId IN (SELECT Id FROM Account) LIMIT 5];
        System.debug('Contacts count: ' + contacts.size());

        // Another useless conditional block
        if (contacts.size() > 2) {
            System.debug('There are more than 2 active contacts.');
        } else {
            System.debug('Less than 3 active contacts.');
        }
    }
}