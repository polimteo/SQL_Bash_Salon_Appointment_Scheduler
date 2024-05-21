In this project, I created an interactive Bash program that uses PostgreSQL to track the customers and appointments for my salon.

Create Database and Tables
-
A database named **salon** is created. 

There are **three** tables: **appointments**, **custormers** and **sevices**.

Initially, I inserted the services that the salon provided into the **services** table.

![image](https://github.com/polimteo/freecodecamp-salon-appointment--scheduler/assets/167663336/c3818134-6b0c-4c43-aba3-52427a073085)

Later on, the **appointments** and **customers** table will be updated accordingly when an appointment is made using the interactive Bash program.

Display List of Services in Bash Program
-
The program displays a list of services offered before the first prompt for input.

![image](https://github.com/polimteo/freecodecamp-salon-appointment--scheduler/assets/167663336/7486af2d-cc81-4458-954b-6fb07fd2b3ae)

If the user picks a service that doesn't exist, the same list of services will be shown again.

![image](https://github.com/polimteo/freecodecamp-salon-appointment--scheduler/assets/167663336/768d2fb4-373c-4c57-a3da-03867c910e1b)

Insert New Customer if Customer Doesn't Exist
-
Once a service is selected, the script prompts the user to enter their phone number to check if the customer already exists.

If the phone number entered doesn't exist, the script will prompt for customer's name and then enter the **name and phone number** into the **customers table**.

![image](https://github.com/polimteo/freecodecamp-salon-appointment--scheduler/assets/167663336/7844bad7-4618-4783-9777-7b874eb868db)

The customer's information is inserted into **customers** table.

![image](https://github.com/polimteo/freecodecamp-salon-appointment--scheduler/assets/167663336/994a40a3-4dfd-4a64-93d4-26122c0fd3d7)

Insert New Appointment for New Customer
-

Once the appointment time is obtained from the user, then appointment is created and inserted into the **appointments table**

![image](https://github.com/polimteo/freecodecamp-salon-appointment--scheduler/assets/167663336/48920abd-6f9f-4c7f-acb0-8f54b96aa4d9)

All the required information is successfully inserted into **appointments table**.

![image](https://github.com/polimteo/freecodecamp-salon-appointment--scheduler/assets/167663336/244916a1-e552-41f9-a562-a4ab3d8acb04)

Insert New Appointment for Existing Customer
-

Before this, we have created a customer with the phone number **111-1111**, and the name **Lavonne**.

When the same phone number is entered again, the program skips asking for customer's name and only asks for **service time** to create a new appointment.

![image](https://github.com/polimteo/freecodecamp-salon-appointment--scheduler/assets/167663336/0b4df785-51c3-420a-a13f-16a252cedc81)

Then, a new appointment is sucessfully inserted into the **appointments table**.

![image](https://github.com/polimteo/freecodecamp-salon-appointment--scheduler/assets/167663336/01423161-9cb5-41ae-89e6-48a16539610b)

