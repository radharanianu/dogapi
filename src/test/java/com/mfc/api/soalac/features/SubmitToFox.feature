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
* url 'http://nbpkmgcqa01.africa.nedcor.net:80/UAT/FOX/MFCWSMyContract_QA.nsf/wsVehFin2?OpenWebService'

# enable X509 certificate authentication with PKCS12 file 'certstore.pfx' and password 'certpassword'
 # * configure ssl = { keyStore: 'AP796374.pfx', keyStorePassword: '*3bmchtr#RamireZ', keyStoreType: 'pkcs12' };

Scenario: soap 1.1
    Given request
    """
 <soapenv:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:urn="urn:DefaultNamespace">
   <soapenv:Header/>
   <soapenv:Body>
      <urn:SubmitApp soapenv:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">
        <strUser xsi:type="xsd:string">DIGITAL</strUser>
        <strPassword xsi:type="xsd:string">DIGITAL</strPassword>
	<strMSG xsi:type="xsd:string"><![CDATA[<Message><DealerCode>MFCPTP</DealerCode><MeadCodeExt>60054261</MeadCodeExt><VehicleDescription>TOYOTA FORTUNER 3.0D-4D R/B A/T</VehicleDescription><IDNumber>6503095346083</IDNumber><Source>32</Source><CompanyType>IND</CompanyType><FirstName>VIRGINIA AGNES</FirstName><Surname>BESTER</Surname><PDA>PA</PDA><Model>2014</Model><NewUsed>U</NewUsed><ClientCategory>PR</ClientCategory><RadioTape>0.00</RadioTape><AirConditioner>0.00</AirConditioner><MetallicPaint>0.00</MetallicPaint><OtherExtras>2535.09</OtherExtras><CreditLife></CreditLife><AddCover></AddCover><CrLifeInsCode></CrLifeInsCode><AdcovInsCode></AdcovInsCode><LicenseRegister>1200.00</LicenseRegister><Delivery>4377.19</Delivery><Warranty>12185.00</Warranty><OtherNonTaxDealerExtras>0</OtherNonTaxDealerExtras><ExtrasAdmin></ExtrasAdmin><ServicePlan>0.00</ServicePlan><MaintenancePlan>0.00</MaintenancePlan><CashPrice>319900.00</CashPrice><Term>72</Term><InterestRate>14.5000</InterestRate><ResidualAmount>0.00</ResidualAmount><ResidualPercentage>0.00000</ResidualPercentage><DepositAmount>0.00</DepositAmount><RateType>F</RateType><FinanceType>I</FinanceType><CurAddrYears>12</CurAddrYears><CurAddrMonths>00</CurAddrMonths><MaritalStatus>M2</MaritalStatus><Initials>V A</Initials><Salutation>02</Salutation><HomeAddress1>28 HARRIGER STREET</HomeAddress1><HomeAddress2>FALCONRIDGE</HomeAddress2><HomeAddress3>VEREENIGING</HomeAddress3><HomeCity>VEREENIGING</HomeCity><HomePostalCode>1939</HomePostalCode><HomePhone></HomePhone><HomePhoneCode></HomePhoneCode><Cell>0836978124</Cell><ResidentialStatus>6</ResidentialStatus><EMail></EMail><Occupation>MANAGER</Occupation><OccupationCode>1440</OccupationCode><Employer>MOWANA</Employer><YearsEmployed>01</YearsEmployed><MonthsEmployed>07</MonthsEmployed><EmployerPhoneCode>011</EmployerPhoneCode><EmployerPhone>6785306</EmployerPhone><SpouseIDNumber></SpouseIDNumber><SpouseFirstName>FRANCOIS</SpouseFirstName><SpouseSurname>BESTER</SpouseSurname><NextKinSurname>PIETER</NextKinSurname><NextKinFirstName>BESTER</NextKinFirstName><NextKinRelation>SIBLING</NextKinRelation><NextKinAddress1>9 RONNIE GIBSON</NextKinAddress1><NextKinAddress2>UNITAS PARK</NextKinAddress2><NextKinAddress3>VEREENIGING</NextKinAddress3><NextKinCity>VEREENIGING</NextKinCity><NextKinPhoneCode>076</NextKinPhoneCode><NextKinPhone>5463602</NextKinPhone><AccountType>1</AccountType><BasicSalary>74000.00</BasicSalary><CarAllowance>0</CarAllowance><TotalSalary>74000.00</TotalSalary><SpouseTotalSalary>0.00</SpouseTotalSalary><SourceRefNo>4805506</SourceRefNo><SPECIALSCHEME></SPECIALSCHEME><PostalAddress1>28 HARRIGER STREET</PostalAddress1><PostalAddress2>FALCONRIDGE</PostalAddress2><PostalAddress3>VEREENIGING</PostalAddress3><PostalCity>VEREENIGING</PostalCity><PostalPostalCode>1939</PostalPostalCode><Bank>STANDARD BANK OF SOUTH AFRICA LTD</Bank><BranchName>STANDARD BANK SOUTH AFRICA</BranchName><BranchCode>051001</BranchCode><AccountHolder>MRS VIRGINIA AGNES BESTER</AccountHolder><AccountNumber>021750335</AccountNumber><InsuranceCompany></InsuranceCompany><InsuranceBroker></InsuranceBroker><InsurancePolicyNo></InsurancePolicyNo><AutoPayment>Y</AutoPayment><EmploymentType>4</EmploymentType><ExtrasDetail>TOYOTA GENUINE PREOWNED WARRANTY 2 YEAR LIMITED-6964.91~MCCARTHY TYREGUARD (127)-2100.88~MCCARTHY THEFTBUSTER PLUS (140)-1622.81~BIDTRACK (MCCARTHY)-2535.09</ExtrasDetail><Commission>0.00</Commission><AppRefNo></AppRefNo><ChassisSerialNo></ChassisSerialNo><EngineNo></EngineNo><CommencementDate></CommencementDate><DeliveryMethod>P</DeliveryMethod><FirstPayDate></FirstPayDate><Mileage>121000</Mileage><PaymentType>2</PaymentType><SalaryDay>30</SalaryDay><StaffApplication></StaffApplication><StatementAddressType></StatementAddressType><VehicleMake>TOYOTA</VehicleMake><VehiclePurpose>PR</VehiclePurpose><VEHTYPE>A</VEHTYPE><VehRegistrationNo></VehRegistrationNo><WarrInsCode></WarrInsCode><EBSCONSENT>Y</EBSCONSENT><EBSACCOUNTNO>021750335</EBSACCOUNTNO><EBSACCOUNTTYPE>1</EBSACCOUNTTYPE><EBSBANK>STANDARD BANK OF SOUTH AFRICA LTD</EBSBANK><EBSBRANCHCODE>051001</EBSBRANCHCODE><CreditEnqConsent>Y</CreditEnqConsent><InfoShareConsent>Y</InfoShareConsent><CrossSellConsent>N</CrossSellConsent><TotExp>28880.00</TotExp><TotalIncome>59500.00</TotalIncome><OtherIncome>0.00</OtherIncome><Settlement>N</Settlement><Instalment>0.00</Instalment><SettAmt>0.00</SettAmt><EthnicGroup>W</EthnicGroup><HomeLanguage>E</HomeLanguage><Facilities>NONE</Facilities><FacilityIncrease>N</FacilityIncrease><NCAEBOND>12300.00</NCAEBOND><NCAEVECHILE>7730.00</NCAEVECHILE><NCAECARD>700.00</NCAECARD><NCAECLOTHING>250.00</NCAECLOTHING><NCAEPOL>2500.00</NCAEPOL><NCAETRANSPORT>1000.00</NCAETRANSPORT><NCAEEDUCATION>0.00</NCAEEDUCATION><NCAEHOUSEHOLD>0.00</NCAEHOUSEHOLD><NCAETOTHOUSEHOLD>28880.00</NCAETOTHOUSEHOLD><NCAESURPLUS>30620.00</NCAESURPLUS><NCAERATES>1900.00</NCAERATES><NCAELOANS>0.00</NCAELOANS><NCAEFURNITURE>0.00</NCAEFURNITURE><NCAEOVERDRAFT>0.00</NCAEOVERDRAFT><NCAETELEPHONE>500.00</NCAETELEPHONE><NCAEFOOD>2000.00</NCAEFOOD><NCAEMAINTENANCE>0.00</NCAEMAINTENANCE><NCAEOTHER>0.00</NCAEOTHER><NCAISOURCE>SALARY</NCAISOURCE><NCAIGROSS>74000.00</NCAIGROSS><NCAICOMMISION>0.00</NCAICOMMISION><NCAICARALLOWANCE>0.00</NCAICARALLOWANCE><NCAIOVERTIME>0.00</NCAIOVERTIME><NCAINETT>59500.00</NCAINETT><NCAIOTHER>0.00</NCAIOTHER><NCAITOTAL>59500.00</NCAITOTAL><NCASPGROSS>0.00</NCASPGROSS><NCASPCOMMISSION>0.00</NCASPCOMMISSION><NCASPCARALLOWANCE>0.00</NCASPCARALLOWANCE><NCASPNETT>0.00</NCASPNETT><NCASPOTHER>0.00</NCASPOTHER><NCASPTOTAL>0.00</NCASPTOTAL><BIRTHCOUNTRY>ZA</BIRTHCOUNTRY><CLIENTSUBTYPE>01</CLIENTSUBTYPE><HASFOREIGNIDENTITY>Y</HASFOREIGNIDENTITY><HOMEADDRCOUNTRY>ZA</HOMEADDRCOUNTRY><INCOMESOURCE>01 </INCOMESOURCE><INDUSTRY>5100</INDUSTRY><MULTINATIONALITIES>N</MULTINATIONALITIES><NATIONALITY1>ZA</NATIONALITY1><NATIONALITY2></NATIONALITY2><OCCUPATIONCODE1>1440</OCCUPATIONCODE1><RESIDENCECOUNTRY>ZA</RESIDENCECOUNTRY><PAYSLIPDEDUCT>0.0000</PAYSLIPDEDUCT><SETTLEDDEBTINSTALL>0.0000</SETTLEDDEBTINSTALL></Message>]]></strMSG>
</urn:SubmitApp>
   </soapenv:Body>
</soapenv:Envelope>
    """
    When soap action 'SubmitApp'
    Then status 200





