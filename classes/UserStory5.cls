public class UserStory5 {
    public static void createFollowUpTasks() {
        List<Case> highPriorityCases = [SELECT Id, Subject FROM Case WHERE Priority = 'High' AND Status != 'Closed'];
        List<Task> tasks = new List<Task>();
        
        for (Case c : highPriorityCases) {
            tasks.add(new Task(
                WhatId = c.Id,
                Subject = 'Follow up on high priority case',
                Status = 'Not Started',
                Priority = 'High'
            ));
        }

        if (!tasks.isEmpty()) {
            insert tasks;
        }
    }
}