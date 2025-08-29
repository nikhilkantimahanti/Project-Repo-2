@IsTest
private class NK_LeadCompanyNormalizer_Test {

    @IsTest
    static void testNormalizeCompanies() {
        // Create Leads - some with Company, some without
        List<Lead> leads = new List<Lead>{
            new Lead(FirstName = 'Alice', LastName = 'NoCompany', Status = 'Open - Not Contacted'),
            new Lead(FirstName = 'Bob', LastName = 'WithCompany', Company = 'Tech Corp', Status = 'Open - Not Contacted'),
            new Lead(FirstName = 'Charlie', LastName = 'BlankCompany', Company = '', Status = 'Open - Not Contacted')
        };
        insert leads;

        // Run method
        Test.startTest();
        List<Lead> updatedLeads = NK_LeadCompanyNormalizer.normalizeCompanies(leads);
        Test.stopTest();

        // Assertions
        System.assertEquals(2, updatedLeads.size(), 'Two leads should have been updated');
        System.assertEquals('Unknown Company', updatedLeads[0].Company, 'Company should be filled');
        System.assertEquals('Unknown Company', updatedLeads[1].Company, 'Company should be filled');
    }

    @IsTest
    static void testEmptyAndNullInput() {
        Test.startTest();
        List<Lead> result1 = NK_LeadCompanyNormalizer.normalizeCompanies(new List<Lead>());
        System.assertEquals(0, result1.size(), 'Empty list should return empty');

        List<Lead> result2 = NK_LeadCompanyNormalizer.normalizeCompanies(null);
        System.assertEquals(0, result2.size(), 'Null input should return empty');
        Test.stopTest();
    }
}