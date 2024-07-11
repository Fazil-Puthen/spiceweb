// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyD_gJJjYg2e76ZNlrz3xDy9ZFYeVoEY40Y',
    appId: '1:301016432960:web:2b935b297f39337718faa5',
    messagingSenderId: '301016432960',
    projectId: 'spiceweb-2f7ef',
    authDomain: 'spiceweb-2f7ef.firebaseapp.com',
    storageBucket: 'spiceweb-2f7ef.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD5L_1kJw_hXawx5jlz73lSYLSMV-cs59Y',
    appId: '1:301016432960:android:fed131d0c84fd6b418faa5',
    messagingSenderId: '301016432960',
    projectId: 'spiceweb-2f7ef',
    storageBucket: 'spiceweb-2f7ef.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTKgnh1b47iNKvUFLIUGyNsBeXvc-ynRU',
    appId: '1:301016432960:ios:adcb1fe605fd768918faa5',
    messagingSenderId: '301016432960',
    projectId: 'spiceweb-2f7ef',
    storageBucket: 'spiceweb-2f7ef.appspot.com',
    iosBundleId: 'com.example.spiceweb',
  );
}
