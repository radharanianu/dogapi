@ignore
Feature:
  As a user who entered my ID and cell number on the system
  I want to accept the Approve it notification before it times out
  so that I can continue with my finance application

  As a user who did not recieve an approve it message or failed to accept the message in the allocated time frame
  I want to be able to request a new Approve it message or cancel the request
  so that I am able to proceed or cancel my application

  As a User that failed to enter my OTP correctly
  I want to recieve a message to notify me of the problem and how to fix it
  So that I can continue with my Application

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
            <ent:ProcessContextId>${=java.util.UUID.randomUUID()}</ent:ProcessContextId>
            <ent:ExecutionContextId>${=java.util.UUID.randomUUID()}</ent:ExecutionContextId>
         </ent:ContextInfo>
         <ent:RequestOriginator>
            <ent:MachineIPAddress>${=java.net.InetAddress.getLocalHost().getHostAddress()}</ent:MachineIPAddress>
            <ent:UserPrincipleName>${=System.getProperty("user.name")}</ent:UserPrincipleName>
            <ent:MachineDNSName>${=java.net.InetAddress.getLocalHost().getHostName()}</ent:MachineDNSName>
            <ent:ChannelId>140</ent:ChannelId>
         </ent:RequestOriginator>
         <ent:InstrumentationInfo>
            <ent:ParentInstrumentationId>${=java.util.UUID.randomUUID()}</ent:ParentInstrumentationId>
            <ent:ChildInstrumentationId>${=java.util.UUID.randomUUID()}</ent:ChildInstrumentationId>
         </ent:InstrumentationInfo>
      </ent:EnterpriseContext>
   </soapenv:Header>
   <soapenv:Body>
      <mob:VerificationStatusRq>
         <mob:VerificationId>605852</mob:VerificationId>
      </mob:VerificationStatusRq>
   </soapenv:Body>
</soapenv:Envelope>
    """
    When soap action 'http://contracts.it.nednet.co.za/services/common-services/2014-10-01/MobileVerification/VerificationStatus'
    Then status 200





