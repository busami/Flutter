import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBKwYzUwR-mB_G1T9ae_YuRoPPH4wFch_A",
            authDomain: "my-flutterflow-brokerage.firebaseapp.com",
            projectId: "my-flutterflow-brokerage",
            storageBucket: "my-flutterflow-brokerage.firebasestorage.app",
            messagingSenderId: "60734069136",
            appId: "1:60734069136:web:1da08c4fa495d5b4b1bb15",
            measurementId: "G-G5EYDNJ0GN"));
  } else {
    await Firebase.initializeApp();
  }
}
