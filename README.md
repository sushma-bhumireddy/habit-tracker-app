
# Habit Tracker App

A habit tracker app built with Flutter, leveraging Firebase for authentication and Firestore for data management. This app allows users to create, manage, and track their daily habits, with features for habit management, tracking, notifications, progress overview, and statistics.

## Features

- **User Authentication**: Register and log in using Firebase Authentication.
- **Habit Management**: Add, edit, delete, and mark habits as completed.
- **Habit Tracking**: Visualize daily habit completion using a calendar view.
- **Notifications**: Set reminders for habits to keep users on track.
- **Progress Overview**: View overall progress, streaks, and habit completion rates.
- **Statistics**: Analyze habit trends and performance with charts.

## Getting Started

Follow these steps to set up and run the app locally.

### Prerequisites

- Flutter SDK
- Firebase Account
- Android Studio or Visual Studio Code
- An emulator or a physical device for testing

### Setup

1. **Clone the Repository**

   ```sh
   git clone https://github.com/yourusername/habit-tracker-app.git
   cd habit-tracker-app
   ```

2. **Install Dependencies**

   Make sure you have the Flutter SDK installed and then run:

   ```sh
   flutter pub get
   ```

3. **Set Up Firebase**

   - Create a Firebase project on the [Firebase Console](https://console.firebase.google.com/).
   - Add Android and/or iOS apps to your Firebase project and follow the setup instructions.
   - Download the `google-services.json` (for Android) and/or `GoogleService-Info.plist` (for iOS) and place them in the respective directories:
     - Android: `android/app/`
     - iOS: `ios/Runner/`

4. **Configure Firebase in the App**

   Ensure that Firebase is properly initialized in your Flutter project:
   
   - For Android, update the `android/build.gradle` and `android/app/build.gradle` files as per Firebase setup instructions.
   - For iOS, update the `ios/Podfile` if needed and ensure CocoaPods dependencies are installed.

5. **Run the App**

   Use the following command to run the app on your emulator or physical device:

   ```sh
   flutter run
   ```

## Usage

1. **Authentication**

   - Open the app and sign up or log in using your email and password.

2. **Habit Management**

   - After logging in, you'll be taken to the home screen where you can add, edit, or delete habits using the floating action button.

3. **Habit Tracking**

   - Use the calendar view to track your daily habit completion. 

4. **Notifications**

   - Set reminders for your habits to receive notifications and stay on track.

5. **Progress Overview**

   - View your progress, streaks, and habit completion rates on the dashboard.

6. **Statistics**

   - Check the statistics section for charts and insights into your habit trends and performance.

## Contributing

If you'd like to contribute to the project, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature/your-feature`).
6. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Flutter](https://flutter.dev) for the framework
- [Firebase](https://firebase.google.com) for authentication and database services
- [TableCalendar](https://pub.dev/packages/table_calendar) for the calendar view
- [Charts Flutter](https://pub.dev/packages/charts_flutter) for statistical charts
