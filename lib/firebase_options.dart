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
    apiKey: 'AIzaSyAH7EIcNIIR3cEbf10ONDThdEWpz2Q5Cw0',
    appId: '1:547594201316:web:db7f200d41ecd72f4324f1',
    messagingSenderId: '547594201316',
    projectId: 'whatsapp-backend-2a89c',
    authDomain: 'whatsapp-backend-2a89c.firebaseapp.com',
    storageBucket: 'whatsapp-backend-2a89c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsgPWU-apLYd2EP7VxDgDkb5K4PhbeTpg',
    appId: '1:547594201316:android:36dbf9f3a6993e164324f1',
    messagingSenderId: '547594201316',
    projectId: 'whatsapp-backend-2a89c',
    storageBucket: 'whatsapp-backend-2a89c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBNK2z1DE6WAeIsj9eDFBcCZq0mFeeBoXc',
    appId: '1:547594201316:ios:7f0bdee14f5a46de4324f1',
    messagingSenderId: '547594201316',
    projectId: 'whatsapp-backend-2a89c',
    storageBucket: 'whatsapp-backend-2a89c.appspot.com',
    iosClientId: '547594201316-1b10g03rn4kkgvaugnmlhlni6l0vhbtl.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappUiComplete',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBNK2z1DE6WAeIsj9eDFBcCZq0mFeeBoXc',
    appId: '1:547594201316:ios:7f0bdee14f5a46de4324f1',
    messagingSenderId: '547594201316',
    projectId: 'whatsapp-backend-2a89c',
    storageBucket: 'whatsapp-backend-2a89c.appspot.com',
    iosClientId: '547594201316-1b10g03rn4kkgvaugnmlhlni6l0vhbtl.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappUiComplete',
  );
}
