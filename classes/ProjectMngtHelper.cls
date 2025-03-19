public class ProjectMngtHelper {
    // Method to generate a unique project code
    public static String generateProjectCode() {
        return 'PRJ-' + String.valueOf(System.currentTimeMillis()).right(6);
    }
 
    // Method to assign a default project manager if none is assigned
    public static Id getDefaultManager() {
        List<User> managers = [SELECT Id FROM User WHERE IsActive = true ORDER BY CreatedDate ASC LIMIT 1];
        return (managers.isEmpty()) ? null : managers[0].Id;
    }
}