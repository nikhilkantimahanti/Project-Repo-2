public class ApprovalProcessHandler {
    // Method to submit a record for approval
    public void submitForApproval(Id recordId) {
        Approval.ProcessSubmitRequest req = new Approval.ProcessSubmitRequest();
        req.setObjectId(recordId);
        Approval.ProcessResult result = Approval.process(req);
    }

    // Method to approve a record
    public void approveRecord(Id processInstanceId) {
        Approval.ProcessWorkitemRequest req = new Approval.ProcessWorkitemRequest();
        req.setAction('Approve');
        req.setWorkitemId(processInstanceId);
        Approval.ProcessResult result = Approval.process(req);
    }

    // Method to reject a record
    public void rejectRecord(Id processInstanceId) {
        Approval.ProcessWorkitemRequest req = new Approval.ProcessWorkitemRequest();
        req.setAction('Reject');
        req.setWorkitemId(processInstanceId);
        Approval.ProcessResult result = Approval.process(req);
    }
}