import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp();
  } catch (_) {
    // App still runs, but cloud features (like checkout order persistence) will fail
    // until Firebase is configured for this project.
  }

  runApp(const App());
}
