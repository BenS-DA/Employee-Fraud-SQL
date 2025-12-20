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

• Purchases outside of weekday business hours (most fleet driving is between 7:00 am and 5:30 pm)

• Purchases of other than unleaded regular gasoline (sometimes unavoidable when pumps are out of service)

• Charges with unusually high dollar amounts (infrequently higher than $100)

• Multiple purchases made on the same day

Some particularly egregious examples:

<img width="1021" height="189" alt="image" src="https://github.com/user-attachments/assets/214cae95-4fc4-40ac-abcb-ae50902e8c22" />




**Single Table - Overview**

• The dataset has been truncated and portions of it have been redacted.

<img width="283" height="404" alt="image" src="https://github.com/user-attachments/assets/96554a49-9d9e-4522-a5c8-3cfcbca53045" />




**Stakeholder Deliverables**

• Identify suspicious transactions 

• Organize transactions by credit card

• Deliver results to non-technical stakeholders in Microsoft Excel spreadsheet format for review


**Summary of Initial Findings**






<img width="590" height="242" alt="image" src="https://github.com/user-attachments/assets/db820f27-65e7-4a99-b92e-d82eaa825c6f" />




**Outcome**

• Focusing on New York operations, stakeholders were able to connect fraudulent activity to one employee.

• Using MySQL, 300 transactions totaling ~$25,000 were deemed fraudulent. 

• This saved stakeholders from reviewing tens of thousands of transactions using a spreadsheet.

• A criminal complaint was filed with local police which resulted in the arrest of the employee.

• Charge card disputes and insurance claims were filed using the data from this analysis.

• Management tightened controls on company vehicle fuel purchases.


