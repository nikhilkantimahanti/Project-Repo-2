public class ContactComm {
    // A list to store contacts
    private List<Contact> starfleetCrew;

    // Constructor to initialize the list
    public ContactComm () {
        starfleetCrew = new List<Contact>();
    }

    // Method to add a contact to the crew
    public void recruitCrewMember(Contact newCrewMember) {
        starfleetCrew.add(newCrewMember);
    }

    // Method to get all crew members
    public List<Contact> getAllCrewMembers() {
        return starfleetCrew;
    }

    // Method to remove a crew member by Id
    public void dischargeCrewMember(Id crewMemberId) {
        for (Integer i = 0; i < starfleetCrew.size(); i++) {
            if (starfleetCrew[i].Id == crewMemberId) {
                starfleetCrew.remove(i);
                break;
            }
        }
    }
}