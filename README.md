# Intro - Employee-Fraud-SQL
A real-world SQL analysis of a small business dataset


**Business Problem**

• In early 3Q24, management of a regional non-profit social services agency received unusually large fuel bills for company cars. 

• These were not explained by swings in fuel prices or additional driving.

• The agency (which operates through two hubs in western Connecticut and northern Westchester County, New York) maintains a fleet of 100-150 vehicles to transport special needs clients.

• Each vehicle is assigned a fuel charge card issued by a national fleet management services company. 


**Red Flags Signaling Fraud**

Glancing at billing statements, we noted several irregularities suggesting fraud, including:

• Out-of-state purchases

• Holiday and weekend purchases

• Purchases outside of weekday business hours

• Purchases of other than unleaded regular gasoline

• Charges with unusually high dollar amounts

• Multiple purchases made on the same day

• In-state charges outside normal area of operation


**Stakeholder Deliverables**

• Identify suspicious transactions 

• Organize transactions by credit card

• Deliver results to non-technical stakeholders in Microsoft Excel spreadsheet for review


**Summary of Initial Findings**

<img width="595" height="221" alt="image" src="https://github.com/user-attachments/assets/925afe36-02f2-462a-865c-95155f23e7ae" />


• Based on regional transaction frequencies and dollar amounts, stakeholders narrowed their investigation to the New York Hub.


**Outcome**

• Focusing on New York operations, stakeholders were able to connect fraudulent activity to one employee.

• Using MySQL, 300 transactions totaling ~$25,000 were deemed fraudulent.

• A criminal complaint was filed with local police which resulted in the arrest of the employee.

• Charge card disputes and insurance claims were filed using the data from this analysis.

• Management tightened controls on company vehicle fuel purchases.


