# Intro - Employee-Fraud-SQL
A real-world SQL analysis of a small business dataset


**Business Problem**

• In early 3Q24, management of a regional non-profit social services agency received unusually large fuel bills for company cars. 

• These were not explained by swings in fuel prices or additional mileage.

• The agency (which operates through two hubs in western Connecticut and northern Westchester County, New York) maintains a fleet of 100-150 vehicles to transport special needs clients.

• Each vehicle is assigned a fuel charge card issued by a national fleet management services company. 


**Red Flags Signaling Fraud**

Glancing at billing statements, we noted several irregularities suggesting fraud, including:

• In-state charges outside normal area of operation

• Out-of-state purchases

• Holiday and weekend purchases (with exceptions for certain operations running 24/7)

• Purchases outside of weekday business hours (most activity is between 7:00 am and 4:30 pm)

• Purchases of other than unleaded regular gasoline (sometimes unavoidable when pumps are out of service)

• Charges with unusually high dollar amounts (infrequently higher than $100)

• Multiple purchases made on the same day



**Single Table - Quick Overview**




**Stakeholder Deliverables**

• Identify suspicious transactions 

• Organize transactions by credit card

• Deliver results to non-technical stakeholders in Microsoft Excel spreadsheet for review


**Summary of Initial Findings**

<img width="595" height="250" alt="image" src="https://github.com/user-attachments/assets/26b4065d-316b-419e-8e3d-36a1cefe7fa7" />



• Based on regional transaction frequencies and dollar amounts, stakeholders narrowed their investigation to the New York Hub.



**Outcome**

• Focusing on New York operations, stakeholders were able to connect fraudulent activity to one employee.

• Using MySQL, 300 transactions totaling ~$25,000 were deemed fraudulent. 

• This saved stakeholders from reviewing tens of thousands of transactions using a spreadsheet.

• A criminal complaint was filed with local police which resulted in the arrest of the employee.

• Charge card disputes and insurance claims were filed using the data from this analysis.

• Management tightened controls on company vehicle fuel purchases.


