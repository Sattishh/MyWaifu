import 'package:best_flutter_ui_templates/login/services/auth_service.dart';
import 'package:best_flutter_ui_templates/navigation_home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:best_flutter_ui_templates/login/components/signup_button.dart';
import 'package:best_flutter_ui_templates/login/pages/login_page.dart';
import 'package:best_flutter_ui_templates/login/components/my_textfield.dart';
import 'package:best_flutter_ui_templates/login/components/square_tile.dart';
import '../../introduction_animation/introduction_animation_screen.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  // text editing controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // sign user in method
  dynamic signUserUp(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    void showErrorMessage(String message) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              backgroundColor: Colors.deepPurple,
              title: Center(
                child: Text(
                  message,
                  style: const TextStyle(color: Colors.white),
                ),
              ));
        },
      );
    }

    if (passwordController.text != confirmPasswordController.text) {
      Navigator.pop(context);
      showErrorMessage("Passwords do not match");
      return;
    }

    try {
      print('signUserUp function called');
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      print('User signed up successfully');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => NavigationHomeScreen()),
      );
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context); // Close the dialog
      showErrorMessage(e.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff408D4D),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IntroductionAnimationScreen(),
                ),
              );
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 26,
                  ),
                  // logo
                  SizedBox(
                    height: 200,
                    width: 350,
                    child: Image.asset('assets/images/signup_image.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // welcome back, you've been missed!
                  const Text(
                    'Let\'s Create An Account For You!',
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, fontFamily: 'Inter'),
                  ),
                  const SizedBox(
                    height: 20, //12
                  ),
                  // username textfield
                  // MyTextField(
                  //   controller: nameController,
                  //   hintText: 'Name',
                  //   obscureText: false,
                  // ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // password textfield
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // password textfield
                  MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 24, //14
                  ),
                  // forgot password?
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: const [
                  //       // Text(
                  //       //   'Forgot Password?',
                  //       //   style: TextStyle(color: Colors.white),
                  //       // ),
                  //     ],
                  //   ),
                  // ),
                  const SizedBox(
                    height: 4,
                  ),
                  // sign in button
                  SignupButton(
                    onTap: () {
                      signUserUp(context);
                    },
                  ),
                  const SizedBox(
                    height: 30, //20
                  ),
                  // or continue with
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Inter'),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // google + apple sign in buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      // google button
                      SquareTile(
                        onTap: () => AuthService().signInWithGoogle(context),
                        imagePath: 'assets/images/google.png'),
                      SizedBox(width: 25),
                      // apple button
                      SquareTile(
                        onTap: () {
                          
                        },
                        imagePath: 'assets/images/apple.png')
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // not a member? register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already a member?',
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'Inter'),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Inter'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
