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
    apiKey: 'AIzaSyD9Tw3S2AdakDeYVKz-q0r81LfVBPqqh9I',
    appId: '1:460167050397:web:2444726b3b06ffc6289074',
    messagingSenderId: '460167050397',
    projectId: 'mynews-78252',
    authDomain: 'mynews-78252.firebaseapp.com',
    storageBucket: 'mynews-78252.appspot.com',
    measurementId: 'G-168FTMFXFB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAT2g6dSWq0kH9jzZ48rf-0J4-JUmqMm98',
    appId: '1:460167050397:android:eceafebba3b9d648289074',
    messagingSenderId: '460167050397',
    projectId: 'mynews-78252',
    storageBucket: 'mynews-78252.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0JLRwaCFJdTkJgqlI1MqKk_v4aWnkZNY',
    appId: '1:460167050397:ios:1eb98b2a59beeaa7289074',
    messagingSenderId: '460167050397',
    projectId: 'mynews-78252',
    storageBucket: 'mynews-78252.appspot.com',
    iosBundleId: 'com.example.justnews',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB0JLRwaCFJdTkJgqlI1MqKk_v4aWnkZNY',
    appId: '1:460167050397:ios:1eb98b2a59beeaa7289074',
    messagingSenderId: '460167050397',
    projectId: 'mynews-78252',
    storageBucket: 'mynews-78252.appspot.com',
    iosBundleId: 'com.example.justnews',
  );
}
