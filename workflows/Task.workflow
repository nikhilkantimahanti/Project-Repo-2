<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Notification_for_Sharing_Meeting_Notes</fullName>
        <ccEmails>salesmeetingreports@autorabit.com</ccEmails>
        <description>Email Notification for Sharing Meeting Notes</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Meeting_Notes_Template</template>
    </alerts>
    <alerts>
        <fullName>Notify_AE_to_Create_an_Opportunity_after_Discovery_Call_Demo_Completion</fullName>
        <description>Notify AE to Create an Opportunity after Discovery Call/Demo Completion</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/DC_or_Demo_Complete_Create_Opportunity_Email_Notification</template>
    </alerts>
    <alerts>
        <fullName>Notify_SDR_Team_when_the_task_sent_back_to_marketing</fullName>
        <description>Notify SDR Team when the task sent back to marketing</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Notify_SDR_when_task_is_sent_back_to_marketing_team</template>
    </alerts>
    <alerts>
        <fullName>Notify_SDR_and_AE_when_the_scheduled_DC_task_is_due_to_complete</fullName>
        <description>Notify SDR and AE when the scheduled DC task is due to complete</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Discovery_Call_Task_Due_Email_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>Uncheck_Share_Meeting_Notes</fullName>
        <field>Share_Meeting_Notes__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Share Meeting Notes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Task_Type_to_LinkedIn_InMail_Sent</fullName>
        <description>Update Task Type to &quot;LinkedIn InMail Sent&quot; when the Task Type is BLANK withSubject &quot;InMail Sent by Sale Navigator&quot;.</description>
        <field>Type</field>
        <literalValue>LinkedIn InMail Sent</literalValue>
        <name>Update Task Type to LinkedIn InMail Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Email Alert to Share Meeting Notes</fullName>
        <actions>
            <name>Email_Notification_for_Sharing_Meeting_Notes</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Share_Meeting_Notes</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.Share_Meeting_Notes__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Sned an email notification sharing meetign notes when AE intents to by selecting &apos;Share Meeting Notes&apos; check box.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notify AE to create opportunity after 48 hours of Discovery Call%2FDemo Completion</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>equals</operation>
            <value>Demo,Discovery Call</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Status</field>
            <operation>equals</operation>
            <value>Complete</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Next_Step__c</field>
            <operation>equals</operation>
            <value>Create Opportunity</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Opportunity_Created_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Notify AE (Sales Rep) to create opportunity after 48 hours of Discovery Call/Demo Completion</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_AE_to_Create_an_Opportunity_after_Discovery_Call_Demo_Completion</name>
                <type>Alert</type>
            </actions>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Notify SDR and AE when DC task is due to complete</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Task.Status</field>
            <operation>equals</operation>
            <value>Scheduled</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>equals</operation>
            <value>Discovery_Call</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Date_DC_Held__c</field>
            <operation>lessThan</operation>
            <value>TODAY</value>
        </criteriaItems>
        <description>Notify (SDR and AE) team when there is no change in status from the default &apos;Scheduled&apos; status after 24 hours from Discovery Call Held Date.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_SDR_and_AE_when_the_scheduled_DC_task_is_due_to_complete</name>
                <type>Alert</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Notify SDR when task is sent back to marketing team</fullName>
        <actions>
            <name>Notify_SDR_Team_when_the_task_sent_back_to_marketing</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>equals</operation>
            <value>Discovery Call,Demo</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Status</field>
            <operation>equals</operation>
            <value>Cancel,Complete</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Next_Step__c</field>
            <operation>equals</operation>
            <value>Back to the Marketing</value>
        </criteriaItems>
        <description>This is to notify the SDR when the scheduled Discovery Call or Demo task had been sent back to marketing to take necessary action if needed.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Set Task Type for InMail Sent by Sale Navigator</fullName>
        <actions>
            <name>Update_Task_Type_to_LinkedIn_InMail_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2) AND 3</booleanFilter>
        <criteriaItems>
            <field>Task.Subject</field>
            <operation>contains</operation>
            <value>InMail Sent from Sale Navigator</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Subject</field>
            <operation>contains</operation>
            <value>LinkedIn InMail Sent</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Set Task Type to &quot;&quot;LinkedIn InMail Sent&quot; for BLANK Task Type with Subject &quot;InMail Sent from Sale Navigator&quot; or &quot;LinkedIn InMail Sent&quot;.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>