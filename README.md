# DatabaseManagementSystem on TollPlaza

## Description
NETC enables a device known as fastag as a payment mode on any toll plaza. fastag is attached on the windscreen of a vehicle and employs Radio frequency Identification technology (RFID) for making toll payments directly from prepaid or savings account linked to it. This database keeps track of the citizens who has an account int the bank, who has a car. Each car has its details and each car has fastag. It contains the locations of the toll plaza and the details of the vehicles passed through these toll plazas.

*Every owner has unique Aadhar number, bank account number and the owner details in owner entity.

*Every owner has an account in the bank and the account entity contain about the details of account.

*The vehicle entity contains the vehicle details like colour, model, unique vehicle number and the vehicle type.

*Toll plaza entity contains about the location, its id, the employee working in it and its contractor and every toll plaza has different amount.

*Contractors and employee details are in the contractor and employee entity which has unique contractor id and employee id respectively.

*The fastag contains the unique fastag id associated with each vehicle and the id issued date.

*The vehicle passes entity gives the details of the vehicles passed through toll plaza and the date of passing.

*The amount deducted from the owners account to the toll plaza account if the vehicle is passed
 through any of the toll plaza.
 
In this way the database model fulfils all the data storing and its management.

## ER Diagram
![sddefault](https://user-images.githubusercontent.com/83768127/230460555-d41dd860-fc50-426c-951b-02fc19d65774.png)
![sddefault](https://user-images.githubusercontent.com/83766342/120937461-2698c780-c72b-11eb-8eae-c572bb7f2a83.jpg)

