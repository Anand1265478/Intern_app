import 'package:flutter/material.dart';
import 'package:intern_app/Pages/bottomnav.dart';
import 'package:intern_app/Pages/signup_page.dart';

class SigninPage extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xff141A1F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: mq.width,
                height: mq.height * 0.30,
                child: Image.asset(
                  'assets/images/signinimage.png',
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 32),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Title
                    Text(
                      'Welcome to Intern Dashboard',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 8),

                    // Subtitle
                    Text(
                      'Sign in to access your intern dashboard and manage your tasks.',
                      style: TextStyle(fontSize: 16, color: Color(0xffffffff)),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 32),

                    // Email Field
                    TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Color(0xFF9EADBF)),
                        labelText: 'Email',
                        filled: true,
                        fillColor: Color(0xFF2B3640),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    SizedBox(height: 16),

                    // Password Field
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Color(0xFF9EADBF)),
                        labelText: 'Password',
                        filled: true,
                        fillColor: Color(0xFF2B3640),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    SizedBox(height: 8),

                    // Forgot Password
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          // Handle forgot password
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Color(0XFF9EADBF)),
                        ),
                      ),
                    ),

                    SizedBox(height: 24),

                    // Sign In Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Color(0xff141A1F),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffDBE8F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),

                    SizedBox(height: 24),

                    // Sign Up Section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7.0),
                      child: Text(
                        'New to Intern Dashboard?',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFffffff),
                        ),
                      ),
                    ),

                    SizedBox(height: 12),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xffdffffff),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff2B3640),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),

                    SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
