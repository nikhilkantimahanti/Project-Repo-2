public class CaseLifecycleSimulator {

    public static List<Case> createCases(Integer count) {
        List<Case> caseList = new List<Case>();
        for (Integer i = 0; i < count; i++) {
            caseList.add(new Case(
                Subject = 'Issue ' + i,
                Status = 'New',
                Priority = 'Medium',
                Origin = 'Web',
                Description = 'Auto-generated case for testing'
            ));
        }
        insert caseList;
        return caseList;
    }

    public static void assignCasesToQueue(List<Case> cases, Id queueId) {
        for (Case c : cases) {
            c.OwnerId = queueId;
        }
        update cases;
    }

    public static void escalateCases(List<Case> cases) {
        for (Case c : cases) {
            c.Status = 'Escalated';
            c.Priority = 'High';
        }
        update cases;
    }

    public static void closeCases(List<Case> cases) {
        for (Case c : cases) {
            c.Status = 'Closed';
        }
        update cases;
    }

    public static void deleteTestCases() {
        List<Case> testCases = [SELECT Id FROM Case WHERE Subject LIKE 'Issue %'];
        delete testCases;
    }

    public static List<Case> getOpenCases() {
        return [SELECT Id, Subject, Status, Priority FROM Case WHERE Status != 'Closed'];
    }
}