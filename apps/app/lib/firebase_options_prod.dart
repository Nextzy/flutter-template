// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_dev.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class ProdFirebaseOptions {
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDYOEwDlwwf26ibHqDD_qrT2tOzj8U8Xs0',
    appId: '1:810911906420:web:2c00d561fe58dd1517af21',
    messagingSenderId: '810911906420',
    projectId: 'flutter-template-31c8b',
    authDomain: 'flutter-template-31c8b.firebaseapp.com',
    storageBucket: 'flutter-template-31c8b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCri644RRPnuczGYofBsQ-MYbW6-DE9Zvg',
    appId: '1:810911906420:android:932894bfb26aca1f17af21',
    messagingSenderId: '810911906420',
    projectId: 'flutter-template-31c8b',
    storageBucket: 'flutter-template-31c8b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBD8RAzki1w9aCcopUbyvgpJ4b7XfncpDI',
    appId: '1:810911906420:ios:ba949b479cfb57cc17af21',
    messagingSenderId: '810911906420',
    projectId: 'flutter-template-31c8b',
    storageBucket: 'flutter-template-31c8b.appspot.com',
    iosBundleId: 'com.example',
  );
}
