import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:igniteiq/Authentication%20pages/otpVerification/phonenumber_input.dart';
import 'package:igniteiq/Authentication%20pages/otpVerification/verification_screen.dart';
import 'package:igniteiq/bindings/controller_binding.dart';
import 'package:igniteiq/common/components/app_pages.dart';
import 'package:igniteiq/common/components/startup_page.dart';
import 'package:igniteiq/pages/studentpages/views/student_screen.dart';

import 'Authentication pages/authpages/log_in.dart';
import 'Authentication pages/authpages/signup_page.dart';
import 'common/components/app_routes.dart';
import 'pages/studentpages/views/dashboard_page.dart';
import 'pages/studentpages/views/mycourses_page.dart';
import 'pages/studentpages/views/profile_page.dart';
import 'pages/studentpages/views/settings_page.dart';
import 'pages/teacherpages/view/course_detailteacher.dart';
import 'pages/teacherpages/view/home_screen.dart';
import 'common/components/welcome_screen.dart';

const String defaultConfigFile = 'flutter_launcher_icons.yaml';
const String flavorConfigFilePattern = r'^flutter_launcher_icons-(.*).yaml$';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDcWrbr5U63f7fL5hLVAraZtzieYut2WZ8',
      appId: '1:680430795953:android:80bfcb84f67ce857287690',
      messagingSenderId: '680430795953',
      projectId: 'getxauth-e3681',
      storageBucket: "getxauth-e3681.appspot.com",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinding(),
      // initialRoute: AppRoutes.startup,
      // getPages: Routes.getPages,

      home: StudentHomeScreen(),
    );
  }
}
