import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCTqBEVfNNxuLH-znD_VRKlMSJla5DmTkc",
            authDomain: "imagine-jb7akp.firebaseapp.com",
            projectId: "imagine-jb7akp",
            storageBucket: "imagine-jb7akp.appspot.com",
            messagingSenderId: "1022938852240",
            appId: "1:1022938852240:web:25b229c007e019d7cae115"));
  } else {
    await Firebase.initializeApp();
  }
}
