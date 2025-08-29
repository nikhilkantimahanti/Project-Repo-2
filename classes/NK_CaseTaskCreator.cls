public class NK_CaseTaskCreator {
    /**
     * For each closed Case, creates a follow-up Task assigned to the Case Owner.
     * @param caseList List of Cases to process.
     * @return List<Task> Created tasks.
     */
    public static List<Task> createFollowUpTasks(List<Case> caseList) {
        if (caseList == null || caseList.isEmpty()) {
            return new List<Task>();
        }

        List<Task> tasksToInsert = new List<Task>();

        for (Case c : caseList) {
            if (c.Status != null && c.Status.toLowerCase() == 'closed') {
                Task t = new Task(
                    WhatId = c.Id,
                    OwnerId = c.OwnerId,
                    Subject = 'Follow-up after Case Closure',
                    ActivityDate = Date.today().addDays(7),
                    Status = 'Not Started',
                    Priority = 'Normal'
                );
                tasksToInsert.add(t);
            }
        }

        if (!tasksToInsert.isEmpty()) {
            insert tasksToInsert;
        }

        return tasksToInsert;
    }
}