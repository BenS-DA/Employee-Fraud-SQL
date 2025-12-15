# Intro - Employee-Fraud-SQL
A real-world SQL analysis of a small business dataset


**Business Problem**

-In early 3Q24, management of a regional non-profit social services agency received unusually large fuel bills for company cars. 

-These were not explained by swings in fuel prices or additional driving.

-The agency (which operates through two hubs in western Connecticut and northern Westchester County, New York) maintains a fleet of 100-150 vehicles to transport special needs clients.

-Each vehicle is assigned a fuel charge card issued by a national fleet management services company. 

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

**Outcome**

• Using  MySQL Workbench, we flagged 350+ suspicious transactions over a two month period totaling ~$35,000. 
• Of these, 300 transactions totaling $25,000 were deemed fraudulent.
• Charge card dispute and insurance claims were filed using the data from this analysis.
• A criminal complaint was filed with local police which resulted in the arrest of an employee.
• Management tightened controls on company vehicle fuel purchases.


