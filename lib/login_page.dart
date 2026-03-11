import 'dart:ui';
import 'package:flutter/material.dart';
import 'register_page.dart';
import 'forgot_password_page.dart';
import 'dashboard_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(reverse: true);

    animation = Tween<double>(begin: 0, end: 1).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-1 + animation.value, -1),
                end: Alignment(1 - animation.value, 1),
                colors: const [
                  Color(0xff0f3d2e),
                  Color(0xff0f9b6f),
                  Color(0xff1dbf73),
                ],
              ),
            ),

            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),

                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),

                      child: Container(
                        width: 350,
                        padding: const EdgeInsets.all(25),

                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),

                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            /// LOGO
                            Image.asset("assets/logo/damc_logo.png", width: 90),

                            const SizedBox(height: 10),

                            const Text(
                              "DAMC",
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                              ),
                            ),

                            const SizedBox(height: 30),

                            /// EMAIL FIELD
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Email",
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),

                            const SizedBox(height: 15),

                            /// PASSWORD FIELD
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),

                            const SizedBox(height: 25),

                            /// LOGIN BUTTON
                            SizedBox(
                              width: double.infinity,
                              height: 50,

                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),

                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const DashboardPage(),
                                    ),
                                  );
                                },

                                child: const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 15),

                            /// FORGOT PASSWORD
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPasswordPage(),
                                  ),
                                );
                              },

                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            const SizedBox(height: 10),

                            /// REGISTER OPTION
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const RegisterPage(),
                                  ),
                                );
                              },

                              child: const Text(
                                "Don't have an account? Register",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
