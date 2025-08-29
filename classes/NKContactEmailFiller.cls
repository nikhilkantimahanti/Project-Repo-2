public class NKContactEmailFiller {
    /**
     * Populates missing emails on Contacts using FirstName.LastName format.
     * Example: John Doe -> john.doe@default.com
     * If names are missing, falls back to 'unknown@default.com'.
     * @param contacts List of Contact records.
     * @return List<Contact> Updated contacts.
     */
    public static List<Contact> fillMissingEmails(List<Contact> contacts) {
        if (contacts == null || contacts.isEmpty()) {
            return new List<Contact>();
        }

        List<Contact> toUpdate = new List<Contact>();

        for (Contact c : contacts) {
            if (c.Email == null || c.Email.trim() == '') {
                String first = (c.FirstName == null ? 'unknown' : c.FirstName.toLowerCase());
                String last  = (c.LastName == null ? 'unknown' : c.LastName.toLowerCase());
                String email = first + '.' + last + '@default.com';
                c.Email = email.replace(' ', '');
                toUpdate.add(c);
            }
        }

        if (!toUpdate.isEmpty()) {
            update toUpdate;
        }

        return toUpdate;
    }
}