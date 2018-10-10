## This document explains all the functionalities with the workflow. 

**You can access our web portal from the link below:**
\n
Application URL : https://sheltered-anchorage-86797.herokuapp.com

Admin Credentials:
Email:admin@hns.com
Password:admin5

**Login with Facebook:** Now you can login with your Facebook account on out portal.

**Forgot Password?:** It's easy to get a link to set new password. You will receive an email for this link on your registered mail id.

Web Application can be viewed in 3 roles:
1. Admin
2. Realtor
3. Hunter


**Admin:**
1.	Web Application has already one preconfigured admin.
2.	Admin can login via email and password from the signup page.
3.	After logging in, admin is viewed:
	List All Companies 
	List All Houses 
	List All Users 	
	Create New User 
	Add New Companies 
4.	Admin can also edit his profile from the tab shown in right-top of window. He cannot delete the profile.
5.	Inside List all companies, admin can view/ edit /delete information of companies.
6.	Inside List all Houses, admin can list all houses and also edit the information. He can    add the houses too. Admin can view all the queries associated with the house and   also, reply to those queries or can check who has replied to that specific query. Admin can also upload the images of the house.
7.	 Inside List all Users, admin can view all users and also edit their information.
8.	 Inside create new users, admin can create the user profile: Realtor or hunter.
9.	 Inside Add New Companies, admin can add new companies and their details.
10.	 Admin can logout using Logout option given in top-right corner.

**Realtor:**
1.	Realtor can have option for the signup. He can signup using a name , email and password.
2.	They can also select the option whether they want the access role as a hunter or not at the time of signup.
3.	After signing up , the realtor can associate himself with a company by editing the profile information. He can choose any existing company in the system or create a new company in the edit profile page.
4.	After login, they are displayed with 2 links on left side of window: List all companies & List all houses.
5.	Inside “List All Houses”, they can view all houses registered with his companies and also houses from other companies. 
6.	He can add/delete/edit information of houses associated to him only.
7.	Realtors are also shown, “All inquiries” inside the specific house they choose to “show” inside the page “List All    houses”.
8.	They also can reply to specific inquiries to the hunters.
9.	He cannot alter details of any other houses.
10.	Inside “List all Companies”, Realtor can view all companies registered. He can only edit the information of company, he is associated with.
12.	They can also select to switch role from realtor to hunter from the edt profile page.

**Hunter:**
1.	Hunter has option for the signup.
2.	Inside signup, they can choose the role they want to have.
3.	After login, they are viewed list of 3 pages: List all companies, List all houses , Search for a house and list all the interest list for the user.
4.	Inside “List All Houses”, they can view all houses and their information.
5.	They can also add specific house to their interest list by nagigating inise the house and adding the house to their interest list. The can also delete the house from the interest list from the same page. 
6.	Hunters can view all information of companies and view all companies inside “List all companies” page.
7.	They can also search for a specific house based on its location from the tab given as “search for a house” in home page.
8.	Hunter can edit profile using right-top corner’s “edit profile”.
9. 	Hunter can display his interest list from homepage with all teh relevat information about the house.
10.	They can also select to switch role from Hunter to Realtor from the edt profile page.
11. 	Now, a hunter can add houses to his interest list and see their photos too.
12. 	They can deactivate their profile whenever they want.

**Test Modules:**
1. All model-tests are implmented which check the basic validations are working properly or not.
2. Major of the controller-tests are implmented which verify and test the function when any of the CRUD operations occur.
3. fixtures are implmented too.





