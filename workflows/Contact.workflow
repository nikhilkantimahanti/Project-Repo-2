<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Contact_Lost_Date</fullName>
        <field>Lost_Date__c</field>
        <formula>Today()</formula>
        <name>Contact Lost Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lost_Contact_Status</fullName>
        <field>Lost_Contact_Status__c</field>
        <formula>TEXT( Contact_Status__c )</formula>
        <name>Lost Contact Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Reason_for_Lost</fullName>
        <field>Reason_for_Lost__c</field>
        <formula>TEXT(  Lost_Reason__c )</formula>
        <name>Reason for Lost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Do_Not_Call_to_True_on_Contact</fullName>
        <description>Update Do Not Contact to True for a contact record when the Contact Status is &apos;DNC&apos;</description>
        <field>DoNotCall</field>
        <literalValue>1</literalValue>
        <name>Update Do Not Call to True on Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Lost Contact Details</fullName>
        <actions>
            <name>Contact_Lost_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Lost_Contact_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Reason_for_Lost</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Stamp the Contact Status, Contact Lost Date, and Lost Reason when the Contact is marked as &apos;Lost&apos; not for &apos;Bad Email&apos;, &apos;Bad Phone&apos;, Bad Email &amp; Bad Phone&apos;, and &apos;Changed Organization&apos; Lost Reasons.</description>
        <formula>AND ( ISCHANGED( Contact_Stage__c ), ISPICKVAL(  Contact_Stage__c  , &quot;Lost&quot;), NOT(TEXT( PRIORVALUE(  Contact_Stage__c  )) = &quot;Lost&quot;), AND (  NOT(TEXT(Lost_Reason__c) = &quot;Bad Email&quot;),  NOT(TEXT(Lost_Reason__c) = &quot;Bad Phone&quot;),  NOT(TEXT(Lost_Reason__c) = &quot;Bad Email &amp; Bad Phone&quot;),  NOT(TEXT(Lost_Reason__c) = &quot;Changed Organization&quot;), NOT(TEXT(Lost_Reason__c ) = &quot;Competitor&quot;), NOT(TEXT(Lost_Reason__c ) = &quot;Looking for Job/Student&quot;) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Do Not Call to True on Contact</fullName>
        <actions>
            <name>Update_Do_Not_Call_to_True_on_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update Do Not Call cehck box for a contact record when the Contact Status is &apos;DNC&apos;</description>
        <formula>AND ( DoNotCall = False, ISPICKVAL(Contact_Status__c, &apos;DNC&apos;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>