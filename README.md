# Intro
A real-world SQL analysis of a transaction dataset


**Business Problem**

• In early 3Q24, management of a regional non-profit social services agency received unusually large fuel bills for company cars. 

• These were not explained by swings in fuel prices or additional mileage.

• The agency (which operates through two hubs in western Connecticut and northern Westchester County, New York) maintains a fleet of 100-150 vehicles to transport special needs clients, mostly on weekdays during normal business hours.

• Each vehicle is assigned a fuel charge card issued by a national fleet management services company. 


**Red Flags Signaling Fraud**

Glancing at billing statements, we noted several irregularities suggesting fraud, including:

• In-state charges outside normal area of operation

• Out-of-state purchases

• Holiday and weekend purchases (with exceptions for certain operations running 24/7)

• Purchases outside of weekday business hours (most fleet driving is between 7:00 am and 5:30 pm)

• Purchases of other than unleaded regular gasoline (sometimes unavoidable when pumps are out of service)

• Charges with unusually high dollar amounts (most are under $100)

• Multiple purchases made on the same day

Some particularly egregious examples:

<img width="1021" height="189" alt="image" src="https://github.com/user-attachments/assets/214cae95-4fc4-40ac-abcb-ae50902e8c22" />




**Single Table - Overview**

• Raw data file is attached as 'charges.csv'

• The dataset has been cleaned and shortened and portions of it have been redacted.

• The dataset covers 2+ months worth of transactions during the Summer of 2024.

<img width="283" height="404" alt="image" src="https://github.com/user-attachments/assets/96554a49-9d9e-4522-a5c8-3cfcbca53045" />




**Stakeholder Deliverables**

• Identify suspicious transactions 

• Organize transactions by credit card

• Deliver results to non-technical stakeholders in Microsoft Excel spreadsheet format for review


**Summary of Initial Findings**

•  Stakeholders narrowed their attention to New York hub activity.


<img width="590" height="301" alt="image" src="https://github.com/user-attachments/assets/cc622a42-3f93-44bb-bc1f-b6a3bfad6b94" />







**Outcome**

•  Following stakeholder analysis, several hundred transactions (over a period of two+ months) totaling ~$25,000 were eventually deemed fraudulent. 

• Stakeholders connected fraudulent activity to one employee.

• A criminal complaint was filed with local police which resulted in the arrest of the employee.

• Charge card disputes and insurance claims were filed using the data from this analysis.

• MySQL saved stakeholders the time and expense of reviewing potentially tens of thousands of transactions with Microsoft Excel.

• Management tightened controls on company vehicle fuel purchases.


