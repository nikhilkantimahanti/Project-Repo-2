<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Partner_Account_Manages_about_New_Partner_Lead</fullName>
        <ccEmails>partner@autorabit.com</ccEmails>
        <description>Email Partner Account Manages about New Partner Lead</description>
        <protected>false</protected>
        <recipients>
            <recipient>adrian.s@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>vivekkumar@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_Template_about_Partner_Lead</template>
    </alerts>
    <fieldUpdates>
        <fullName>Lead_Lost_Date</fullName>
        <field>Lost_Date__c</field>
        <formula>Today()</formula>
        <name>Lead Lost Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lost_Lead_Status</fullName>
        <field>Lost_Lead_Status__c</field>
        <formula>TEXT(Status)</formula>
        <name>Lost Lead Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Prior_Lead_Status</fullName>
        <description>Get the previous Lead Status when the Lead Status changes.</description>
        <field>Prior_Lead_Status__c</field>
        <formula>TEXT(PRIORVALUE( Status ))</formula>
        <name>Prior Lead Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Reason_for_Lost</fullName>
        <field>Reason_for_Lost__c</field>
        <formula>TEXT(Lost_Reason__c)</formula>
        <name>Reason for Lost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Inbound_as_Lead_Type</fullName>
        <description>Set &quot;Inbound&quot; as Lead Type when Lead is created by Pardot Integration User.</description>
        <field>Lead_Type__c</field>
        <literalValue>Inbound</literalValue>
        <name>Set Inbound as Lead Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Do_Not_Call_to_True_on_Lead</fullName>
        <description>Update Do Not Call check box to True for a lead record when Contact Status is &apos;DNC&apos;</description>
        <field>DoNotCall</field>
        <literalValue>1</literalValue>
        <name>Update Do Not Call to True on Lead</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Other_Integration_to_BLANK</fullName>
        <description>Update the &apos;Other Integration&apos; field to BLANK value if Integration is not &apos;Other&apos;.</description>
        <field>Other_Integration__c</field>
        <name>Update Lead Other Integration to BLANK</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Zoom_Info_Lead_Source_Update</fullName>
        <description>Update &apos;To Be Determined&apos; Lead Source to &apos;Market Analysts&apos; when the Lead Source Type is &apos;Zoom Info&apos;</description>
        <field>LeadSource</field>
        <literalValue>Market Analysts</literalValue>
        <name>Zoom Info Lead Source Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Email Partner Account Managers</fullName>
        <actions>
            <name>Email_Partner_Account_Manages_about_New_Partner_Lead</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Email Partner Account Managers when a lead is added as &apos;Partner/Partner Prospect&apos; account types,</description>
        <formula>AND(    ISCHANGED( Partner_Enterprise__c ), NOT( PRIORVALUE( Partner_Enterprise__c) = &apos;Partner&apos;), NOT( PRIORVALUE( Partner_Enterprise__c) = &apos;Partner Prospect&apos;), OR (  ISPICKVAL(Partner_Enterprise__c , &quot;Partner&quot;) ,  ISPICKVAL(Partner_Enterprise__c , &quot;Partner Prospect&quot;) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead Integration value Not  %22Other%27</fullName>
        <actions>
            <name>Update_Lead_Other_Integration_to_BLANK</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Integration__c</field>
            <operation>notEqual</operation>
            <value>Other</value>
        </criteriaItems>
        <description>If Integration value chosen is not &apos;Other&apos;.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lost Lead Details</fullName>
        <actions>
            <name>Lead_Lost_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Lost_Lead_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Reason_for_Lost</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Stamp the Lead Status, Lead Lost Date, and Lost Reason when the Lead is marked as &apos;Lost&apos; not for the &apos;Bad Email&apos;, &apos;Bad Phone&apos;, Bad Email &amp; Bad Phone&apos;, and &apos;Changed Organization&apos; Lost Reasons.</description>
        <formula>AND (  ISCHANGED(Lead_Stage__c), ISPICKVAL( Lead_Stage__c , &quot;Lost&quot;), NOT(TEXT( PRIORVALUE( Lead_Stage__c ))  =  &quot;Lost&quot;), AND( NOT(TEXT(Lost_Reason__c ) = &quot;Bad Email&quot;), NOT(TEXT(Lost_Reason__c ) = &quot;Bad Phone&quot;), NOT(TEXT(Lost_Reason__c ) = &quot;Bad Email &amp; Bad Phone&quot;), NOT(TEXT(Lost_Reason__c ) = &quot;Changed Organization&quot;), NOT(TEXT(Lost_Reason__c ) = &quot;Competitor&quot;), NOT(TEXT(Lost_Reason__c ) = &quot;Looking for Job/Student&quot;) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Prior Lead Status</fullName>
        <actions>
            <name>Prior_Lead_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Stamp the prior Lead Status when the Lead Status changes.</description>
        <formula>ISCHANGED( Status )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Set Inbound Lead Type</fullName>
        <actions>
            <name>Set_Inbound_as_Lead_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Lead_Type__c</field>
            <operation>notEqual</operation>
            <value>Inbound</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.CreatedById</field>
            <operation>equals</operation>
            <value>B2BMA Integration</value>
        </criteriaItems>
        <description>Set &quot;Inbound&quot; as Lead Type when Lead is created by Pardot Integration User.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Do Not Call to True on Lead</fullName>
        <actions>
            <name>Update_Do_Not_Call_to_True_on_Lead</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Update Do Not Call check box to True for a lead record when Lead Status is &apos;DNC&apos;.</description>
        <formula>AND ( DoNotCall = False,   ISPICKVAL(Status,&apos;DNC&apos;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Lead Source to Market Analysts</fullName>
        <actions>
            <name>Zoom_Info_Lead_Source_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.LeadSource</field>
            <operation>equals</operation>
            <value>To Be Determined</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Lead_Source_Type__c</field>
            <operation>equals</operation>
            <value>Zoom Info</value>
        </criteriaItems>
        <description>Update Lead Source to &apos;Market Analysts&apos; when the Lead Source Type is &apos;Zoom Info&apos; and Lead Source is &apos;To Be Determined&apos;.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>