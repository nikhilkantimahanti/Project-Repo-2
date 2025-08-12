public class LeadIssuer {

    public static void greetUser(String userName) {
        System.debug('Hello, ' + userName + '! Welcome to the LeadIssuer class.');
    }

    public static Integer calculateSquare(Integer inputNumber) { // Renamed the parameter here
        return inputNumber * inputNumber;
    }

    public static List<String> getProductList() {
        List<String> products = new List<String>{'Lead Generation', 'Lead Qualification', 'Lead Nurturing', 'Lead Conversion'};
        return products;
    }

    public static void processLeads(List<Lead> leads) {
        for (Lead ld : leads) {
            if (ld.LeadSource == 'Web') {
                ld.Description = 'This lead came from the website.';
            } else {
                ld.Description = 'This lead came from another source.';
            }
        }
        update leads;
    }

    public static String getTodaysDate(){
        return Date.today().format();
    }
}