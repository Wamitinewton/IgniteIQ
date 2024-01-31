import 'package:get/get.dart';
import 'package:igniteiq/Authentication%20pages/otpVerification/phonenumber_input.dart';
import 'package:igniteiq/Authentication%20pages/otpVerification/verification_screen.dart';
import 'package:igniteiq/bindings/controller_binding.dart';
import 'package:igniteiq/common/components/app_routes.dart';
import 'package:igniteiq/common/components/startup_page.dart';
import 'package:igniteiq/common/components/welcome_screen.dart';
import 'package:igniteiq/pages/studentpages/views/student_screen.dart';

import '../../Authentication pages/authpages/log_in.dart';
import '../../Authentication pages/authpages/signup_page.dart';
import '../../pages/studentpages/views/dashboard_page.dart';
import '../../pages/studentpages/views/mycourses_page.dart';
import '../../pages/studentpages/views/profile_page.dart';
import '../../pages/studentpages/views/settings_page.dart';
import '../../pages/teacherpages/view/course_detailteacher.dart';
import '../../pages/teacherpages/view/home_screen.dart';

class Routes {
  static final List<GetPage> getPages = [
    GetPage(
      name: AppRoutes.dashboard,
      page: () => DashboardPage()
    ),
    GetPage(name: AppRoutes.myCourses, page: () => MyCourses()),
    GetPage(name: AppRoutes.profile, page: () => ProfilePage()),
    GetPage(name: AppRoutes.settings, page: () => SettingsPage()),
    GetPage(name: AppRoutes.student, page: () => StudentHomeScreen()),
    GetPage(name: AppRoutes.otp, page: () => OtpVerificationScreen()),
    GetPage(name: AppRoutes.phone, page: () => PhoneNumberInput()),
    GetPage(name: AppRoutes.startup, page: () => StartUPPage()),
    GetPage(name: AppRoutes.welcome, page: () => WelcomeScreen()),
    GetPage(name: AppRoutes.login, page: () => LogInScreen()),
    GetPage(name: AppRoutes.signup, page: () => SignUpScreen()),
    GetPage(name: AppRoutes.homeScreen, page: () => HomeScreen()),
    GetPage(name: '${AppRoutes.courseDetail}/:id', page: () => TeacherCourseDetails()),
  ];
}
