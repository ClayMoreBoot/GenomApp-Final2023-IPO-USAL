import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAxFJuOyf7VgVFHnoZwrrRdGegvz-L88H0",
            authDomain: "genomapp-1ff7a.firebaseapp.com",
            projectId: "genomapp-1ff7a",
            storageBucket: "genomapp-1ff7a.appspot.com",
            messagingSenderId: "279407941700",
            appId: "1:279407941700:web:a19f49262e799f0b748411",
            measurementId: "G-ND6FXN7RQW"));
  } else {
    await Firebase.initializeApp();
  }
}
