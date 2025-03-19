<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Update Discount</fullName>
        <active>false</active>
        <criteriaItems>
            <field>OpportunityLineItem.UnitPrice</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>WFR to update discount percentage of a Product based on Sale price</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>