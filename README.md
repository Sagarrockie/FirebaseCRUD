# FirebaseCRUD
User Management App This is a Flutter app that allows you to manage user data using Firebase.  Features View a list of all users Add a new user Edit an existing user Delete a user
Getting Started
To get started, you'll need to set up a Firebase project and enable Firestore. You'll also need to add your Firebase configuration files to the project.

Once you've done that, you can run the app using flutter run.

Usage
When you first open the app, you'll see a list of all users. You can add a new user by tapping the "Add User" button in the app bar.

To edit an existing user, tap on the user in the list and then tap the "Edit" button in the user details screen. You can change the user's name, email, gender, and profile image.

To delete a user, swipe left on the user in the list and tap the "Delete" button.

Implementation
This app uses the following packages:

firebase_core and cloud_firestore to interact with Firebase
image_picker to select profile images
email_validator to validate email addresses
The app is organized into the following files:

main.dart: The main entry point for the app. It sets up the Firebase connection and displays the home screen.
features/userProfile/model/user.dart: Defines the User model class.
features/userProfile/controllers/firebaseControllers.dart: Contains functions for interacting with the Firebase Firestore.
features/userProfile/view/createUser.dart: Displays the list of users and allows you to add new users.
features/userProfile/view/modifyUser.dart: Displays the details of a single user and allows you to edit or delete the user.
features/userProfile/view/viewUsers.dart: Allows you to edit the details of a user.

