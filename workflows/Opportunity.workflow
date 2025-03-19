<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Auto_Renewal</fullName>
        <description>Auto Renewal</description>
        <protected>false</protected>
        <recipients>
            <recipient>carree.t@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>divya.t@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>ranjini.sundareshan@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>snehal.g@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sree.u@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Renewal_Notification_Template/Auto_Notification_on_Renewal_Automation</template>
    </alerts>
    <alerts>
        <fullName>Closed_Lost_Opportunity_Notification</fullName>
        <ccEmails>PMT1@autorabit.com</ccEmails>
        <description>Closed Lost Opportunity Notification</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Lost_Opportunity_Email_Alert_VF</template>
    </alerts>
    <alerts>
        <fullName>Closed_Won_Opportunity_Notification</fullName>
        <description>Closed Won Opportunity Notification</description>
        <protected>false</protected>
        <recipients>
            <recipient>jessica.n@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mike.s@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Closed_Won_Opportunity_Email_Notification</template>
    </alerts>
    <alerts>
        <fullName>Email_Alert_For_Downsell_Opportunity</fullName>
        <ccEmails>sreekanth.u@autorabit.com</ccEmails>
        <description>Email Alert For Downsell Opportunity</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Subs_Activation/DownSell_Subs_Activation</template>
    </alerts>
    <alerts>
        <fullName>Email_Alert_for_the_churn_Opportunity</fullName>
        <description>Email Alert for the churn Opportunity</description>
        <protected>false</protected>
        <recipients>
            <recipient>divya.t@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Subs_Activation/Churn_Subs_Activation</template>
    </alerts>
    <alerts>
        <fullName>Email_Notification_when_Closed_Won_Opportunity_is_NOT_updated_with_Contract_Date</fullName>
        <description>Email Notification when Closed Won Opportunity is NOT updated with Contract Dates</description>
        <protected>false</protected>
        <recipients>
            <recipient>divya.t@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>nicole.faulkner@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Past_Due_Update_Contract_Dates</template>
    </alerts>
    <alerts>
        <fullName>Email_Notification_when_Closed_Won_Opportunity_is_updated_with_Contract_Dates</fullName>
        <description>Email Notification when Closed Won Opportunity is updated with Contract Dates</description>
        <protected>false</protected>
        <recipients>
            <recipient>madeline.h@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sulochana@autorabit.com.sfdc</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Closed_Won_opportunity_updated_with_Contract_Dates</template>
    </alerts>
    <alerts>
        <fullName>Final_Week_of_Trial</fullName>
        <description>Final Week of Trial</description>
        <protected>false</protected>
        <recipients>
            <field>Contact_Name__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Final_Activation</template>
    </alerts>
    <alerts>
        <fullName>New_Subs_Activation_Email</fullName>
        <ccEmails>subscriptions@autorabit.com</ccEmails>
        <description>New Subs Activation Email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Subs_Activation/Subs_Activation_VF_6</template>
    </alerts>
    <alerts>
        <fullName>Renewal_Oppty_Notification_to_Oppty_Owner</fullName>
        <ccEmails>sreekanth.u@autorabit.com</ccEmails>
        <description>Renewal Oppty Notification to Oppty Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Renewal_Notification_Template/Auto_Notification_on_Renewal_Automation</template>
    </alerts>
    <alerts>
        <fullName>Renewal_Subs_Activation_Email</fullName>
        <ccEmails>subscriptions@autorabit.com</ccEmails>
        <ccEmails>srinivas.y@autorabit.com</ccEmails>
        <description>Renewal Subs Activation Email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Subs_Activation/Renewal_Subs_activation1</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_alert_if_Overall_Delay_is_more_than_1_day</fullName>
        <description>Send Email alert if Overall Delay is more than 1 day</description>
        <protected>false</protected>
        <recipients>
            <recipient>divya.t@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Subs_Activation/Subscription_Activation_Request</template>
    </alerts>
    <alerts>
        <fullName>Subs_Activation_Email_Alert</fullName>
        <description>Subs Activation Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>divya.t@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Subs_Activation/Subscription_Activation_Request</template>
    </alerts>
    <alerts>
        <fullName>Upsell_Subs_Activation_Email</fullName>
        <ccEmails>subscriptions@autorabit.com</ccEmails>
        <ccEmails>srinivas.y@autorabit.com</ccEmails>
        <description>Upsell Subs Activation Email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Subs_Activation/New_Upsell_Subs_activation1</template>
    </alerts>
    <fieldUpdates>
        <fullName>Fill_Referral_Percentage</fullName>
        <description>Fill Referral Percentage with Referral Percentage at Account Level.</description>
        <field>Referral_Percentage__c</field>
        <formula>Partner_Account__r.Referral_Percentage__c</formula>
        <name>Fill Referral Percentage</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>HelperCheckBox_Update</fullName>
        <field>HelperCheckbox__c</field>
        <literalValue>1</literalValue>
        <name>HelperCheckBox_Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>HelperCheckBox_Update_Renewal</fullName>
        <field>HelperCheckbox__c</field>
        <literalValue>1</literalValue>
        <name>HelperCheckBox_Update_Renewal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>HelperCheckBox_Update_Upsell</fullName>
        <field>HelperCheckbox__c</field>
        <literalValue>1</literalValue>
        <name>HelperCheckBox_Update_Upsell</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>No_of_Subs</fullName>
        <field>New_No_of_subs__c</field>
        <formula>Number_of_Product_Subscriptions__c</formula>
        <name>No_of_Subs</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Oppt_Amount_New_Logs_upsell</fullName>
        <field>Oppt_Amout_New_Logs_upsell__c</field>
        <formula>IF(INCLUDES( Opportunity_Type_New_Renewal_Upsell__c ,&apos;Upsell&apos;),  Opportunity_Amount__c , Null)</formula>
        <name>Oppt Amount New Logs+upsell</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Oppt_Amount_New_Update</fullName>
        <description>If Oppurtunity is New Then update Oppt Amount New Field</description>
        <field>Oppt_Amout_New_Logs_upsell__c</field>
        <formula>IF(INCLUDES( Opportunity_Type_New_Renewal_Upsell__c ,&apos;New Logo&apos;),  Opportunity_Amount__c  ,IF(INCLUDES( Opportunity_Type_New_Renewal_Upsell__c,&apos;Upsell&apos;),  Opportunity_Amount__c,Null))</formula>
        <name>Oppt Amount New Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Oppt_Amount_Renewal_Update</fullName>
        <field>Oppt_Amout_Renewal__c</field>
        <formula>IF( INCLUDES( Opportunity_Type_New_Renewal_Upsell__c ,&apos;Renewal&apos;), Opportunity_Amount__c , Null)</formula>
        <name>Oppt Amount Renewal Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Oppt_Amount_Upsell_Update</fullName>
        <field>Oppt_Amout_Upsell__c</field>
        <formula>IF(INCLUDES( Opportunity_Type_New_Renewal_Upsell__c ,&apos;Upsell&apos;), Opportunity_Amount__c , Null)</formula>
        <name>Oppt Amount Upsell Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Oppt_Amout_Upsell</fullName>
        <field>Oppt_Amout_Upsell__c</field>
        <formula>IF(INCLUDES( Opportunity_Type_New_Renewal_Upsell__c ,&apos;Upsell&apos;), Opportunity_Amount__c , Null)</formula>
        <name>Oppt_Amout_Upsell</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Renewal</fullName>
        <field>Oppt_Amout_Renewal__c</field>
        <formula>IF(INCLUDES( Opportunity_Type_New_Renewal_Upsell__c ,&apos;Renewal&apos;),  Opportunity_Amount__c ,Null)</formula>
        <name>Renewal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Subs_Activation_Email_Sent</fullName>
        <field>Subs_Activation_Email_Sent__c</field>
        <formula>NOW()</formula>
        <name>Subs Activation Email Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Amount_Field</fullName>
        <field>Amount</field>
        <formula>Opportunity_Amount__c</formula>
        <name>Update Amount Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_IsNew_to_True</fullName>
        <field>isNew__c</field>
        <literalValue>1</literalValue>
        <name>Update IsNew to True</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_IsRenewal_to_True</fullName>
        <field>isRenewal__c</field>
        <literalValue>1</literalValue>
        <name>Update IsRenewal to True</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_IsUpsell_to_True</fullName>
        <field>isUpsell__c</field>
        <literalValue>1</literalValue>
        <name>Update IsUpsell to True</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Renewal_No_of_subs</fullName>
        <field>Renewal_No_of_subs__c</field>
        <formula>Number_of_Product_Subscriptions__c</formula>
        <name>Update Renewal No of subs</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Total_Subs</fullName>
        <field>Total_Subs__c</field>
        <formula>Number_of_Product_Subscriptions__c</formula>
        <name>Update Total Subs</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Upsell_Renewal</fullName>
        <description>If Opportunity Amount field is Upsell + Renewal then update this field</description>
        <field>Oppt_Amout_Renewal__c</field>
        <formula>IF(Renewal__c==true,  Opportunity_Amount__c  ,IF( Upsell__c ==true,  Opportunity_Amount__c  ,Null) )</formula>
        <name>Upsell + Renewal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Upsell_Renewal_r</fullName>
        <field>Oppt_Amout_Renewal__c</field>
        <formula>IF( Upsell__c ==true,  Opportunity_Amount__c , Null)</formula>
        <name>Upsell + Renewal_r</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Upsell_subs</fullName>
        <field>Upsell_subs__c</field>
        <formula>IF( Renewal_No_of_subs__c ==0, New_No_of_subs__c ,  Number_of_Product_Subscriptions__c )</formula>
        <name>Upsell subs</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Alert When Contract Dates are Updated for Closed Won Opportunity</fullName>
        <actions>
            <name>Email_Notification_when_Closed_Won_Opportunity_is_updated_with_Contract_Dates</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email notifications when contract Dates are updated for a closed won opportunities</description>
        <formula>OR( AND(  OR( TEXT(StageName) = &quot;Closed Won&quot; , TEXT(StageName) = &quot;Closed Won-Implementation Incomplete&quot;),  OR (  ISNEW() &amp;&amp; NOT(ISBLANK( Contract_Start_Date__c )) &amp;&amp; NOT( ISBLANK(Contract_End_Date__c )) ) ), AND(  OR( TEXT(StageName) = &quot;Closed Won&quot; , TEXT(StageName) = &quot;Closed Won-Implementation Incomplete&quot;),  OR ( ISCHANGED( Contract_Start_Date__c ), ISCHANGED( Contract_End_Date__c ))  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email To Churn Opportunity</fullName>
        <actions>
            <name>Email_Alert_for_the_churn_Opportunity</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Opportunity_Type_New_Renewal_Upsell__c</field>
            <operation>equals</operation>
            <value>Churn</value>
        </criteriaItems>
        <description>Send an email to churn Opportunityh</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email to Downsell Opportunity</fullName>
        <actions>
            <name>Email_Alert_For_Downsell_Opportunity</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Opportunity_Type_New_Renewal_Upsell__c</field>
            <operation>equals</operation>
            <value>Downsell</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.LastName</field>
            <operation>notEqual</operation>
            <value>Schaapveld</value>
        </criteriaItems>
        <description>Email to be send to Downsell Opportunity</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Fill Referral Percentage</fullName>
        <actions>
            <name>Fill_Referral_Percentage</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Special_Referral_Terms__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Fill Referral Percentage from the Partner Account selected if no Special Referral Terms.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Notify When Opportunity is Closed Lost</fullName>
        <actions>
            <name>Closed_Lost_Opportunity_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send an email alert when an opportunity becomes closed lost..</description>
        <formula>ISCHANGED(StageName)   &amp;&amp;  TEXT(StageName) = &quot;Closed Lost&quot; &amp;&amp;  $User.LastName  &lt;&gt; &quot;Schaapveld&quot;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Notify When Opportunity is Closed Won</fullName>
        <actions>
            <name>Closed_Won_Opportunity_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send an email alert when a new or upsell opportunity becomes closed won.</description>
        <formula>AND( OR(INCLUDES( Opportunity_Type_New_Renewal_Upsell__c , &apos;New Logo&apos;), INCLUDES( Opportunity_Type_New_Renewal_Upsell__c , &apos;Upsell&apos;)), OR( AND (ISCHANGED(StageName), IsWon, NOT(PRIORVALUE(IsWon)) ), AND ( ISNEW(), IsWon) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Notify when Opportunity is Auto created on Renewals</fullName>
        <actions>
            <name>Auto_Renewal</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Send an email alert on Auto creation of Opportunity by Sreekanth on Renewal Oppty Type to CSM team</description>
        <formula>OwnerId = &apos;0056F00000BBPM1&apos;</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Overall Delay Workflow</fullName>
        <actions>
            <name>Send_Email_alert_if_Overall_Delay_is_more_than_1_day</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Overall_Delay__c</field>
            <operation>equals</operation>
            <value>1</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Renewal subs Activation</fullName>
        <actions>
            <name>Renewal_Subs_Activation_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_IsRenewal_to_True</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND (3 OR 4) AND 5 and 6</booleanFilter>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Type_New_Renewal_Upsell__c</field>
            <operation>includes</operation>
            <value>Renewal</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Number_of_Product_Subscriptions__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.No_of_Product_Subs_Vault__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.isRenewal__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.LastName</field>
            <operation>notEqual</operation>
            <value>Schaapveld</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Rule for Sub Activation Email Alert</fullName>
        <actions>
            <name>Renewal_Subs_Activation_Email</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>OR(  AND (ISCHANGED(StageName), IsWon,   NOT(PRIORVALUE(IsWon)) ),  AND ( ISNEW(), IsWon) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Oppt Amount New</fullName>
        <actions>
            <name>Oppt_Amount_New_Logs_upsell</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Oppt_Amount_New_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Oppt_Amout_Upsell</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Renewal</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Opportunity_Amount__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Renewal_No_of_subs</fullName>
        <actions>
            <name>Update_Renewal_No_of_subs</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND( ISCLONE() , INCLUDES( Opportunity_Type_New_Renewal_Upsell__c , &apos;Renewal&apos;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Upsell_subs</fullName>
        <actions>
            <name>Upsell_subs</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND( ISCLONE() , INCLUDES( Opportunity_Type_New_Renewal_Upsell__c , &apos;Upsell&apos;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update no of subs when it is new</fullName>
        <actions>
            <name>No_of_Subs</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Opportunity_Type_New_Renewal_Upsell__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Upsell subs Activation</fullName>
        <actions>
            <name>Upsell_Subs_Activation_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_IsUpsell_to_True</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4  AND 5</booleanFilter>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Type_New_Renewal_Upsell__c</field>
            <operation>equals</operation>
            <value>Upsell</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.isUpsell__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Number_of_Product_Subscriptions__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>User.LastName</field>
            <operation>notEqual</operation>
            <value>Schaapveld</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>subs Activation</fullName>
        <actions>
            <name>New_Subs_Activation_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Subs_Activation_Email_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Subs_Activation_Email_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>