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
    apiKey: 'AIzaSyAP1FSssJz8EqNu_TXsGzYtj9s2TI5n13Y',
    appId: '1:815096315635:web:9d8a43c043f19fc03e0186',
    messagingSenderId: '815096315635',
    projectId: 'demoproject-2a98d',
    authDomain: 'demoproject-2a98d.firebaseapp.com',
    storageBucket: 'demoproject-2a98d.appspot.com',
    measurementId: 'G-XYE4NJH50R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC2PgkjRqA7l4oFQdPZYLlnErNo4nHd_LI',
    appId: '1:815096315635:android:1808e27373cc9cb83e0186',
    messagingSenderId: '815096315635',
    projectId: 'demoproject-2a98d',
    storageBucket: 'demoproject-2a98d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnP5SejQKwnfvx-qwM9TWCKnritV63Nvw',
    appId: '1:815096315635:ios:944815010ae768743e0186',
    messagingSenderId: '815096315635',
    projectId: 'demoproject-2a98d',
    storageBucket: 'demoproject-2a98d.appspot.com',
    iosClientId: '815096315635-1un9n6lo9io26acqtj3o3jtsb8d7f9vn.apps.googleusercontent.com',
    iosBundleId: 'com.example.demo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBnP5SejQKwnfvx-qwM9TWCKnritV63Nvw',
    appId: '1:815096315635:ios:944815010ae768743e0186',
    messagingSenderId: '815096315635',
    projectId: 'demoproject-2a98d',
    storageBucket: 'demoproject-2a98d.appspot.com',
    iosClientId: '815096315635-1un9n6lo9io26acqtj3o3jtsb8d7f9vn.apps.googleusercontent.com',
    iosBundleId: 'com.example.demo',
  );
}
