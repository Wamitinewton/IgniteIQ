import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:igniteiq/Authentication%20pages/authpages/log_in.dart';
import 'package:igniteiq/Authentication%20pages/otpVerification/phonenumber_input.dart';
import 'package:igniteiq/common/components/divide_line.dart';

import '../../common/components/formfield_builder.dart';
import '../../common/components/text_form_field_validator.dart';
import '../authcontrollers/auth_service.dart';

class SignUpScreen extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: const Image(
                      image: AssetImage('assets/icons/person2.jpg')),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "Are you new? Create an account with us",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                FormFieldType(
                    labelText: 'Username',
                    hintText: 'Please enter your username',
                    controller: usernameController,
                    obscureText: false,
                    validator: TextFormFieldValidator.validateUsername,
                    onChanged: (value) => _authController.setUsername(value),
                    suffixIcon: Icons.clear,
                    onSuffixIconTap: () {
                      usernameController.clear();
                    }),
                const SizedBox(
                  height: 6,
                ),
                FormFieldType(
                  labelText: 'Email',
                  hintText: 'Enter your email address',
                  controller: emailController,
                  obscureText: false,
                  validator: TextFormFieldValidator.validateEmail,
                  onChanged: (value) =>
                      _authController.emailController.text = value,
                  suffixIcon: Icons.clear,
                  onSuffixIconTap: () {
                    emailController.clear();
                  },
                ),
                const SizedBox(
                  height: 6,
                ),
                FormFieldType(
                  labelText: 'password',
                  hintText: 'Enter your password',
                  controller: passwordController,
                  obscureText: true,
                  validator: TextFormFieldValidator.validatePassword,
                  onChanged: (value) =>
                      _authController.passwordController.text = value,
                  suffixIcon: Icons.remove_red_eye,
                  onSuffixIconTap: () {},
                ),
                const SizedBox(
                  height: 6,
                ),
                FormFieldType(
                  labelText: 'confirm password',
                  hintText: 'confirm your password',
                  controller: confirmPasswordController,
                  obscureText: true,
                  validator: TextFormFieldValidator.validateConfirmPassword,
                  onChanged: (value) =>
                      _authController.confirmPasswordController.text = value,
                  suffixIcon: Icons.remove_red_eye,
                  onSuffixIconTap: () {},
                ),
                const SizedBox(
                  height: 18,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.purple)),
                  onPressed: () async {
                    if (passwordController.text ==
                        confirmPasswordController.text) {
                      if (_formKey.currentState?.validate() ?? false) {
                        await _authController.signUp(
                            emailController.text,
                            passwordController.text,
                            confirmPasswordController.text,
                            usernameController.text);
                      } else {
                        Get.snackbar('Error', 'Passwords do not match');
                      }
                    }
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 36),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?...',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(LogInScreen());
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      DividerLine(),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Or continue with'),
                      SizedBox(
                        width: 5,
                      ),
                      DividerLine(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 50, right: 50, bottom: 30),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.purple)),
                    onPressed: () {
                      Get.offAll(PhoneNumberInput());
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone_enabled,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Phone Registration',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
