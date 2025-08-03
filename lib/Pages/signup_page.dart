import 'package:flutter/material.dart';
import 'package:intern_app/Pages/signin_page.dart';

class SignupPage extends StatelessWidget {
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
                      'Join Intern Dashboard',
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
                      'Create your account to access your intern dashboard and manage your tasks.',
                      style: TextStyle(fontSize: 16, color: Color(0xffffffff)),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 32),

                    // Fullname Field
                    TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Color(0xFF9EADBF)),
                        labelText: 'Full Name',
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
                    // Email Field
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
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
                    SizedBox(height: 16),
                    // Referral code Field
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Color(0xFF9EADBF)),
                        labelText: 'Referral Code (Optional)',
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

                    SizedBox(height: 24),

                    // Sign Up Button
                    ElevatedButton(
                      onPressed: () {
                        // Handle Sign Up
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'Sign Up',
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

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFffffff),
                        ),
                      ),
                    ),

                    SizedBox(height: 12),
                    // Sign In button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SigninPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'Sign In',
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
