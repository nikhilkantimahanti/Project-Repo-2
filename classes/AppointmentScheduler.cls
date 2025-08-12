public class AppointmentScheduler {
    // Method to create a new Appointment
    public Event createAppointment(String subject, DateTime startTime, DateTime endTime) {
        Event appointment = new Event(Subject = subject, StartDateTime = startTime, EndDateTime = endTime);
        insert appointment;
        return appointment;
    }

    // Method to update an Appointment's time
    public void updateAppointmentTime(Id eventId, DateTime newStartTime, DateTime newEndTime) {
        Event appointment = [SELECT Id, StartDateTime, EndDateTime FROM Event WHERE Id = :eventId];
        appointment.StartDateTime = newStartTime;
        appointment.EndDateTime = newEndTime;
        update appointment;
    }

    // Method to delete an Appointment
    public void deleteAppointment(Id eventId) {
        Event appointment = [SELECT Id FROM Event WHERE Id = :eventId];
        delete appointment;
    }
}