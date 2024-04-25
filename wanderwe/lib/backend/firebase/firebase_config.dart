import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCCo1egMw_rjdZixmBw01FrNQj-YknmPYY",
            authDomain: "wanderwe-83950.firebaseapp.com",
            projectId: "wanderwe-83950",
            storageBucket: "wanderwe-83950.appspot.com",
            messagingSenderId: "885101230072",
            appId: "1:885101230072:web:ceeb03f2168bb4af6c480d"));
  } else {
    await Firebase.initializeApp();
  }
}
