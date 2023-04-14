// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAdoDqyUeuY3PIham_sCl5I8_yaWJi0_s0',
    appId: '1:1090413257261:web:588676d6e68395cc9d8ea4',
    messagingSenderId: '1090413257261',
    projectId: 'fir-tutorial-cde6c',
    authDomain: 'fir-tutorial-cde6c.firebaseapp.com',
    storageBucket: 'fir-tutorial-cde6c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3rQ4q-uSMeQi4paQubR0HusPgt1tT1Yo',
    appId: '1:1090413257261:android:fa282211544b491a9d8ea4',
    messagingSenderId: '1090413257261',
    projectId: 'fir-tutorial-cde6c',
    storageBucket: 'fir-tutorial-cde6c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDmuzsH7tb1CQj7dDP_0veq2JgfCcHlcy4',
    appId: '1:1090413257261:ios:c0cc767abdc808ca9d8ea4',
    messagingSenderId: '1090413257261',
    projectId: 'fir-tutorial-cde6c',
    storageBucket: 'fir-tutorial-cde6c.appspot.com',
    iosClientId: '1090413257261-19u7hvdjd9t5kqg8isk35fik1fqlbrqp.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebasetutorial',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDmuzsH7tb1CQj7dDP_0veq2JgfCcHlcy4',
    appId: '1:1090413257261:ios:c0cc767abdc808ca9d8ea4',
    messagingSenderId: '1090413257261',
    projectId: 'fir-tutorial-cde6c',
    storageBucket: 'fir-tutorial-cde6c.appspot.com',
    iosClientId: '1090413257261-19u7hvdjd9t5kqg8isk35fik1fqlbrqp.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebasetutorial',
  );
}