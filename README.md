# University Information Desk 
CSE370: Database Systems (group project)

#### Language used : 
HTML, CSS, JS, SCSS, Python, SQL

#### Framework / Library : 
Django, Bootstrap

#### DBMS: 
MYSQL

#### Used django feature:
*	Django Model
*	Django admin
*	Django Static files

#### Brief Idea About Our Project:
A simple website where students will have access to Course Material, where they will be able to post materials and playlists that have helped them with their studies. Staff members will have the ability to post important announcements on the site. Students can also post complaints or make remarks about any problems or concerns they are having and staff will view them and either "resolve" or "reject" them.




## To run the server
### Have XAMPP, Django installed in order to operate the server.
1. Download the entire file, then put it in the `htdocs` folder (localhost folder).
2. Start `Apache` and `MySQl` in XAMPP.
3. Go to phpmyadmin, by clicking on the `Admin` button next to the `MySQl` start button, create a database named `uniinfodesk` and import the SQL file (uniinfodesk.sql) into that database.
4. In vscode, open the folder `UniHelpDesk` (there are two folders with the same name; select the one that appeared initially), and then type `python manage.py runserver` in a new terminal. Run this command from project directory.

#### Optional:
(Might need to modify the database information for that; go to UniHelpDesk/UniHelpDesk/settings look for a part that looks like this:
```
DATABASES = {
    'default': {

        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'uniinfodesk',
        'USER': 'root',
        'PASSWORD': '',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}
```
If the username and password are different, enter them properly; otherwise, skip this step.
Commands that may be needed `pip install mysql` , `pip install django-jazzmin` , `pip install Pillow` )


## Login Info:
```
Students' usernames/IDs are:
1001, 1002, 1003, 1004, 1005,1006
password: userstudent

Staff usernames are:
sta1, sta2
password: userstaff

Faculty usernames are:
fac1, fac2
password: userfaculty

```

## Project Features:
#### User Login/Registration:
* Student, Staff, faculty has their separate login page to login.
* Student needs to register before login if logging in for the first time.
* Staff and faculty don’t have to register.

#### User profile/update profile: 
* Every user has their profile with their information.
* Student can update their profile

#### Complain section for student and staff users: 
* Allows student users to express university-related problems or concerns, as well as view the complaints of others.
* Staff users can see student complaints and will either resolve or reject them. 
* Students can view resolved or rejected status of their complaints. If the issues are pending students can view that too.
* Students can view which of the staff members resolved their complaints.

#### Announcements section: 
* Staff users have the option to post and remove announcements.
* Student and faculty users can view the announcements, as well as which staff members posted them and who announced them.

#### Payment section for staff users: 
* Staff users will have their own payment section where they can view their payment status. 

#### Add/remove Courses: 
* Faculties can add or remove courses
* Student can view Courses 

#### Course content: 
* Any Student can upload course content.
* Any student can view course content.





### Contributors
https://github.com/shihabshahrier | https://github.com/jerinsync
