import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyA6ZSxc5EDQGmDP4E5_cP41TQ0_85mz_MY',
    appId: '1:210232000348:web:YOUR-WEB-APP-ID',
    messagingSenderId: '210232000348',
    projectId: 'manav-ab7ad',
    authDomain: 'manav-ab7ad.firebaseapp.com',
    storageBucket: 'manav-ab7ad.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6ZSxc5EDQGmDP4E5_cP41TQ0_85mz_MY',
    appId: '1:210232000348:android:ee37f9a3f2d202aebb8b99',
    messagingSenderId: '210232000348',
    projectId: 'manav-ab7ad',
    storageBucket: 'manav-ab7ad.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6ZSxc5EDQGmDP4E5_cP41TQ0_85mz_MY',
    appId: '1:210232000348:ios:YOUR-IOS-APP-ID',
    messagingSenderId: '210232000348',
    projectId: 'manav-ab7ad',
    storageBucket: 'manav-ab7ad.firebasestorage.app',
    iosClientId: 'YOUR-IOS-CLIENT-ID',
    iosBundleId: 'com.example.mnv',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6ZSxc5EDQGmDP4E5_cP41TQ0_85mz_MY',
    appId: '1:210232000348:macos:YOUR-MACOS-APP-ID',
    messagingSenderId: '210232000348',
    projectId: 'manav-ab7ad',
    storageBucket: 'manav-ab7ad.firebasestorage.app',
    iosClientId: 'YOUR-MACOS-CLIENT-ID',
    iosBundleId: 'com.example.mnv',
  );
} 