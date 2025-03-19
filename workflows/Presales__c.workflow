<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notify_ARM_Support_for_Presales_Issues</fullName>
        <ccEmails>support@autorabit.com</ccEmails>
        <description>Notify ARM Support for Presales Issues</description>
        <protected>false</protected>
        <recipients>
            <field>Solutions_Architect__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Presales/Presales_Support_Ticket</template>
    </alerts>
    <alerts>
        <fullName>Notify_IT_Help_Desk_for_Presales_Issues</fullName>
        <ccEmails>ithelpdesk@autorabit.com</ccEmails>
        <description>Notify IT Help Desk for Presales Issues</description>
        <protected>false</protected>
        <recipients>
            <field>Solutions_Architect__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Presales/Presales_IT_Help_Desk_Ticket</template>
    </alerts>
    <alerts>
        <fullName>Notify_PMT_for_Presales_Feature_Requests</fullName>
        <ccEmails>support@autorabit.com</ccEmails>
        <description>Notify PMT for Presales Feature Requests</description>
        <protected>false</protected>
        <recipients>
            <field>Solutions_Architect__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Presales/Presales_JIRA_Enhancement_Request</template>
    </alerts>
    <alerts>
        <fullName>Notify_Presales_Engineer_when_Status_need_to_be_updated</fullName>
        <description>Notify Presales Engineer when Status need to be updated</description>
        <protected>false</protected>
        <recipients>
            <field>Secondary_Solutions_Architect__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Solutions_Architect__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Presales/Update_Presales_Tracker_Status_to_Complete</template>
    </alerts>
    <alerts>
        <fullName>Notify_Vault_Support_for_Presales_Issues</fullName>
        <ccEmails>support@autorabit.com</ccEmails>
        <description>Notify Vault Support for Presales Issues</description>
        <protected>false</protected>
        <recipients>
            <field>Solutions_Architect__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Presales/Presales_Support_Ticket</template>
    </alerts>
    <rules>
        <fullName>Notify Presales Engineer when Status needs to be completed</fullName>
        <actions>
            <name>Notify_Presales_Engineer_when_Status_need_to_be_updated</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notify Presales Engineer when Status needs to be updated to Complete.</description>
        <formula>AND(

(  TODAY() - End_Date__c ) &gt; 1,
 NOT( TEXT( Status__c  ) = &apos;Completed&apos; )
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>Presales__c.End_Date__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>