@ignore
Feature:
  As a user who entered my ID and cell number on the system
  I want to accept the Approve it notification before it times out
  so that I can continue with my finance application

Background:
* url 'https://ssg-e.it.nednet.co.za:443/services/common-services/2014-10-01/MobileVerification'
# enable X509 certificate authentication with PKCS12 file 'certstore.pfx' and password 'certpassword'
  * configure ssl = { keyStore: 'AP796374.pfx', keyStorePassword: '*3bmchtr#RamireZ', keyStoreType: 'pkcs12' };

Scenario: soap 1.1
    Given request
    """
  <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ent="http://contracts.it.nednet.co.za/Infrastructure/2008/09/EnterpriseContext" xmlns:mob="http://contracts.it.nednet.co.za/services/common-services/2014-10-01/MobileVerification">
   <soapenv:Header>
      <ent:EnterpriseContext>
         <ent:ContextInfo>
            <!--Optional:-->
            <ent:ProcessContextId>1</ent:ProcessContextId>
            <ent:ExecutionContextId>1</ent:ExecutionContextId>
         </ent:ContextInfo>
         <ent:RequestOriginator>
            <ent:MachineIPAddress>1</ent:MachineIPAddress>
            <ent:UserPrincipleName>1</ent:UserPrincipleName>
            <ent:MachineDNSName>1</ent:MachineDNSName>
            <ent:ChannelId>140</ent:ChannelId>
         </ent:RequestOriginator>
         <ent:InstrumentationInfo>
            <ent:ParentInstrumentationId>1</ent:ParentInstrumentationId>
            <ent:ChildInstrumentationId>1</ent:ChildInstrumentationId>
         </ent:InstrumentationInfo>
      </ent:EnterpriseContext>
   </soapenv:Header>
   <soapenv:Body>
      <mob:InitiateVerificationSMSRq>
         <mob:Message>Do you want to complete the transaction zzzz</mob:Message>
         <mob:CommunicationIdentifier>27720214023</mob:CommunicationIdentifier>
         <mob:TVCReplacementPlaceholder>zzzz</mob:TVCReplacementPlaceholder>
         <!--Optional:-->
         <mob:CustomId>123</mob:CustomId>

      </mob:InitiateVerificationSMSRq>
   </soapenv:Body>
</soapenv:Envelope>
    """
    When soap action 'http://contracts.it.nednet.co.za/services/common-services/2014-10-01/MobileVerification/InitiateVerificationSMS'
    Then status 200





