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
    apiKey: 'AIzaSyDAkJ-zTL4AAUf95z9PnnTjPlvUoxjm4L8',
    appId: '1:27401530302:web:a6b6fc48716aea406ee7ef',
    messagingSenderId: '27401530302',
    projectId: 'firecloudtask',
    authDomain: 'firecloudtask.firebaseapp.com',
    storageBucket: 'firecloudtask.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApZEXY3ZdewGbKOaG3kDoZNRONDjDJkE8',
    appId: '1:27401530302:android:69fed986146933e76ee7ef',
    messagingSenderId: '27401530302',
    projectId: 'firecloudtask',
    storageBucket: 'firecloudtask.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDyu4QW1DH9U1NP4JUZ3acFsVIfeCscDag',
    appId: '1:27401530302:ios:15d2f0b8035121086ee7ef',
    messagingSenderId: '27401530302',
    projectId: 'firecloudtask',
    storageBucket: 'firecloudtask.appspot.com',
    iosBundleId: 'com.example.firecloudtask',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDyu4QW1DH9U1NP4JUZ3acFsVIfeCscDag',
    appId: '1:27401530302:ios:68e770ce25157dde6ee7ef',
    messagingSenderId: '27401530302',
    projectId: 'firecloudtask',
    storageBucket: 'firecloudtask.appspot.com',
    iosBundleId: 'com.example.firecloudtask.RunnerTests',
  );
}