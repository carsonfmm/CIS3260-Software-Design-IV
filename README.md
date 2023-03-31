# README
Name: Carson Mifsud
Email: cmifsud@uoguelph.ca
Student ID: 1089936
Assignment: 2
Due Date: Nov 4, 2022 11:59 PM

Description: Takes the classes from Assignment 1 and uses them to create a game played against a server. This includes the functionality of signing in, signing up, and a users page to display user information.

Port Number: 33015
Homepage link: http://cis3260.socs.uoguelph.ca:33015/

Assumptions:
- Assume the tester will use the buttons and links on my website interface and not the back/forward/reload buttons on the browser itself
- Assume it is ok to have extra code and functionality cause by scaffolding as long as it is not visible to the user
- Assume the user will not directly type incorrect/invalid links into the browsers search bar

Error Handling:
- No duplicate email addresses are allowed as the email address is used as the key for searching users
- When signing up, a valid email address must include the '@' symbol in the middle of the entered text
- When signing up, no text fields are allowed to be blank
- If the user does not exist, they are informed "This user does not exist. Please set up a new user."
- If the user exists but the password does not match, they are informed "Incorrect password."

NOTES:
- A returning user will have the same name, points and content as they had when they last left the game
- Multiple users can sign into the server
- The server is implemented using Ruby-on-Rails
- This submission includes the following grading functionalities:
	- "Hello World" is working [3 pt]
	- Sign-in Page [3 pt]
	- Users Page [1 pt]
- All notices appear at the top of the interface
- Each "Back" link/button on the interface brings the user to the previous screen
- The following directories/files have been edited by myself:
	- app/controllers
	- app/Assignment1
	- app/models/user.rb
	- app/views/games
	- app/views/main
	- app/views/sessions
	- app/views/users
	- config/routes.rb
	- README.md

Test Case:
- Go to CupThrow homepage (http://cis3260.socs.uoguelph.ca:33015/)
- Click the "Sign-up" button/link
- Enter a valid username, email address, and password
- Click "Sign-up"
- On sign-up, the user is provided with three quarters, three six-sided white dice, and their overall points is set to 0
- The user is brought back to the homepage and is notified "User was successfully signed up."
- Click the "Sign-in" button/link
- Enter a valid email address and password
- Click "Sign-in"
- The user is brought to the Users page and is notified "Signed in"
- This page will display the user's name, overall points, and content of their bag
- Click "Play a game"
- The user is presented with a screen that states the game functionality is not yet implemented
- Click "Back to Users page"
- Choose one of the two options:
	1. Click "Sign out"
	   The user is signed out of their account
	   The user is brought back to the Sign-in page and is notified "Signed out"
	2. Click the "Delete account"
	   When asked "Are you sure?", click "OK"
	   The user is signed out of their account and the account is deleted
	   The user is brought back to the CupThrow homepage and is notified "Users account was successfully signed out and deleted."
