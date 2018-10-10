## This document explains all the functionalities with the workflow. 

**You can access our web portal from the link below:**


Application URL : https://sheltered-anchorage-86797.herokuapp.com

Admin Credentials:
Email:admin@hns.com
Password:admin5

A user can signup on the portal using a valid email or his/her facebook account. User needs to select the role while signing in or can add/change the role later by editing the profile. If the user uses facebook account to signup , user will b assigned a hunter role by default which can be change later by editing the profile details. 

**A valid email is required to get the benfits of the mailing features implemented in the application.** 

Web Application can be viewed in 3 roles:
1. Admin
2. Realtor
3. House Hunter


**Admin:**
1.	Web Application is preconfigured with an admin account. The admin credentials are provided above.
2.	Admin can login via email and password from the signin page.
3.	After logging in, admin can perform the following operations:
	
	**List All Companies** - All the companies available will be displayed with the relevant information. The Admin can view / modify / delete the company.
	
	**List All Houses** - All the houses listed on the portal will be displayed with the relevant details. The Admin can view / modify / delete the listed house. When admin views the details of a house, he/she can also view/delete the inqueries associated with the house. Admin can also upload an image of the house.
	
	**List All Users**- All the users registered on the portal will be displayed.The Admin can view / modify / delete the user.
	
	**Create New User** - Admin can create a new user in the portal and assign roles.
	
	**Add New Company** - Admin can create a new Company.
	
4.	Admin can also edit his profile but will not be able to delete the account.
5.	Admin can logout using Logout option given in top-right corner.

**Realtor:**
1.	Realtor can have option for the signup. He can sign up using a name, email and password.
2.	They can also select the option whether they want the access role as a hunter or not at the time of signup.
3.	After signing up, the realtor can associate himself with a company by editing the profile information. He can choose any existing company in the system or create a new company in the edit profile page.
4.	After login, they are displayed with 2 links on left side of window: List all companies & List all houses.
5.	Inside “List All Houses”, they can view all houses registered with his companies and also houses from other companies. 
6.	He can add/delete/edit information of houses associated to him only.
7.	Realtors are also shown, “All inquiries” inside the specific house they choose to “show” inside the page “List All    houses”.
8.	They also can reply to specific inquiries to the hunters.
9.	He cannot alter details of any other houses.
10.	Inside “List all Companies”, Realtor can view all companies registered. He can only edit the information of company, he is associated with.
11.	They can also select to switch role from realtor to hunter from the edit profile page.
12.	They can upload images of the houses they uploaded.
13.	They can now check the potential buyers list.
14.	They can delete their profile anytime they want.


**Hunter:**
1.	Hunter has option for the signup.
2.	Inside signup, they can choose the role they want to have.
3.	After login, they are viewed list of 3 pages: List all companies, List all houses , Search for a house and list all the interest list for the user.
4.	Inside “List All Houses”, they can view all houses and their information.
5.	They can also add specific house to their interest list by nagigating inise the house and adding the house to their interest list. The can also delete the house from the interest list from the same page. 
6.	Hunters can view all information of companies and view all companies inside “List all companies” page.
7.	They can also search for a specific house based on its location from the tab given as “search for a house” in home page.
8.	Hunter can edit profile using right-top corner’s “edit profile”.
9.	Hunter can display his interest list from homepage with all the relevant information about the house.
10.	They can also select to switch role from Hunter to Realtor from the edt profile page.
11.	Now, a hunter can add houses to his interest list and see their photos too.
12.	They can deactivate their profile whenever they want.


** Some important points: **

1. All model tests are implmented.
2. Tests are covered for all the major controllers of our application.
3. Additional features like sending emails(during signup and when a query is answered) and login with facebook are also implemented.
4. Role switching feature is also included - this feature becomes automatically enabled when the logged in user has both realtor and 	     hunter roles assigned to him/her.
5. A realtor is not allowed to create a house as long as he/she is not assigned to a company - Realtor can assign himself/herself a 	    company by clicking on edit profile link.
6. An inquiry is associated with a house. So, to view/create/edit/delete an inquiry for a particular house, user should navigate to that specific house page.
7. A response/reply is always associated with an inquiry for a house. So, to view/create/edit/delete a response, a realtor should navigate to that specific inquiry.
