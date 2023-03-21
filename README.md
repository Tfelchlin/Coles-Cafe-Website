
# Welcome to Cole's Cafe!

  

You can visit the site at the IP address 100.21.99.53 or by visiting http://seanodowd.net/

  

You may get a warning from your browser because we do not have an SSL certificate but you should be able to click on more details and then proceed.

  Second Warning: The MySQL connection sometimes times out due to AWS, if the login and registration functionality is not working it is because of this. It is a very quick thing to fix but it involves one of us just restarting the backend on the AWS EC2 instance.

# Features

  
- Interactive React Components
- Login and Registration
- Admin features for the admin user

  

# Specifications

  
- React, javascript, and CSS for the frontend
- Nodejs for backend/api
- MySQL database
- react-cookies for cookie functionality
- Winston for logging events to the database

  

# How to use

You can register a new account like you would with any other and can log back into that user. Currently, if you need to sign in to a different user, you must first delete the cookies from your browser. To do this, you can right-click and select "inspect element". From there, go to the "Application" tab and select "cookies", then delete the ones associated with the current user. This will allow you to sign in as a different user without any issues. Or you can do it this way: https://support.google.com/accounts/answer/32050?hl=en&co=GENIE.Platform%3DDesktop

  

# Admin User

Currently, the super secure credentials for the admin user is username: `admin` password: `password`

If you log into this user it will redirect you to the /admin page and print out the usernames of all registered users.

  

# Running the application locally

If you need to run the application locally it will take a few steps and there are some requirements. Also if you are having problems getting the application to run locally please reach out :)

  

Requirements:

- Nodejs version 18.15.0
- npm version 9.5.0
- A MySQL service/server running
- Something to access the MySQL server like MySQL Workbench

  

### For the frontend:

  
1. Change the directory into the client folder `cd client`
2. run `npm install`
3. run `npm start`
4. Your browser should automatically open the tab but if it doesn't go to `localhost:3000` or `127.0.0.1:3000`

  

### For the MySQL Database:

  
1. Create a new MySQL database with a user and password that you will remember
2. Connect to the MySQL database with MySQL workbench using the user that you just created
3. Copy and paste the MySQL commands from the MySQL dump file in the project
4. Execute the MySQL commands and the database will be ready to go

  

### For the NodeJS backend:

  
1. Change the directory into the server folder `cd server`
2. run `npm install`
3. run `node index.js`
4. You should get a prompt saying that the node app was able to connect to MySQL, if not you may have to configure the variables in the .env file.
5. For this, ensure that the correct username, password, and database are provided in their respective locations.