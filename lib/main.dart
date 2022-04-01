import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'navigation/routes.dart';
import 'themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: () => MaterialApp(
        routes: routes,
        initialRoute:
            FirebaseAuth.instance.currentUser == null ? '/auth_screen' : '/',
        title: 'Hospital Manager',
        theme: AppTheme.light(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
