import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA-_SrnNFEmUYWYkis_9DjokFvi8-ODJ8U",
            authDomain: "mo-zip-w34xtq.firebaseapp.com",
            projectId: "mo-zip-w34xtq",
            storageBucket: "mo-zip-w34xtq.firebasestorage.app",
            messagingSenderId: "883857360669",
            appId: "1:883857360669:web:9253844e35c0b60ecf03f4"));
  } else {
    await Firebase.initializeApp();
  }
}
