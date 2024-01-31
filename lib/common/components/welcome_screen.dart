import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:igniteiq/Authentication%20pages/authcontrollers/auth_service.dart';
import 'package:igniteiq/common/components/text_util.dart';
import 'package:igniteiq/pages/studentpages/views/student_screen.dart';
import 'package:igniteiq/pages/teacherpages/view/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                  image: AssetImage(
                      'assets/images/icon-education-115075-transparent-png.png')),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 220,
                width: 390,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Column(
                  children: [
                    TextUtil(
                        text:
                            'Are you a student or teacher. This is the place to be',
                        color: Colors.blue,
                        fontSize: 18,
                        fontweight: FontWeight.bold),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.blue),
                            ),
                            onPressed: () {
                              Get.offAll(StudentHomeScreen());
                            },
                            child: Text('Student')),
                        SizedBox(
                          width: 15,
                        ),
                        TextButton(
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.blue),
                            ),
                            onPressed: () {
                              Get.offAll(HomeScreen());
                            },
                            child: Text('Teacher')),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    _authController.logOut();
                    Get.offAllNamed('/login');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.login_outlined),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Log Out'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
