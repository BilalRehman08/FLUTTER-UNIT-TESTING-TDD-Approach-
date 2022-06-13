import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'base/app_setup.locator.dart';
import 'base/app_view.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupLocator();
  runApp(const AppView());
}
