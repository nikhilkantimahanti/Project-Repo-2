public class NK_LeadCompanyNormalizer {
    /**
     * Ensures all Leads have a Company name.
     * If blank/null, sets Company to 'Unknown Company'.
     * @param leads List of Lead records to normalize.
     * @return List<Lead> Updated leads.
     */
    public static List<Lead> normalizeCompanies(List<Lead> leads) {
        if (leads == null || leads.isEmpty()) {
            return new List<Lead>();
        }

        List<Lead> leadsToUpdate = new List<Lead>();

        for (Lead l : leads) {
            if (l.Company == null || l.Company.trim() == '') {
                l.Company = 'Unknown Company';
                leadsToUpdate.add(l);
            }
        }

        if (!leadsToUpdate.isEmpty()) {
            update leadsToUpdate;
        }

        return leadsToUpdate;
    }
}