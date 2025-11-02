import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project_app/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🖼️ Background Image
          SizedBox.expand(
            child: Image.asset('assets/images/login.jpg', fit: BoxFit.cover),
          ),

          // 🌑 Dark Gradient Overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.85),
                  Colors.black.withOpacity(1.0),
                ],
                stops: const [0.0, 0.5, 1.0],
              ),
            ),
          ),

          // 📱 Foreground Content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 80,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),

                  // 🌍 App Title
                  Text(
                    "KOYAA",
                    style: GoogleFonts.righteous(
                      fontSize: 42,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      height: 1.2,
                      letterSpacing: 0.5,
                    ),
                  ),

                  const SizedBox(height: 8),
                  Text(
                    "Your compass to the wild.",
                     style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const SizedBox(height: 120),

                  // ✨ Subtitle
                  Text(
                    "Let’s explore the world !",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "Lorem ipsum is typically a corrupted version of Dea 1st-century BC text.",
                    textAlign: TextAlign.center,
                     style: GoogleFonts.poppins(color: Colors.white70, fontSize: 13),
                  ),

                  const SizedBox(height: 20),

                  // 📩 Email Field
                  TextField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.9),
                      hintText: "Enter your e mail",
                      hintStyle: const TextStyle(color: Colors.grey),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // 🔒 Password Field
                  TextField(
                    obscureText: true,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.9),
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.grey),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 0.5),

                  // 🔗 Forgot Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget password?",
                        style: GoogleFonts.poppins(
                          color: Color(0xFF1DB954),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 4),

                  // 🟩 Login Button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00A86B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 6,
                        shadowColor: Colors.black54,
                      ),
                      child: Text(
                        "Log in",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // 🔸 Divider with "or continue with"
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(color: Colors.white30, thickness: 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          "or continue with",
                          style: GoogleFonts.poppins(
                            color: Colors.white60,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Divider(color: Colors.white30, thickness: 1),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  // 🌐 Google Login Button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // TODO: Add Google login logic here
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white, width: 1.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 3,
                        shadowColor: Colors.black26,
                      ),
                      icon: Image.asset(
                        'assets/images/google logo.png',
                        height: 26,
                        width: 26,
                      ),
                      label: Text(
                        "Continue with Google",
                        style: GoogleFonts.poppins(
                          color: Colors.black87,
                          fontSize: 15.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 2), // 🔼 moved up for balance
                  // 🔘 Sign Up Text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                             builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign up",
                          style: GoogleFonts.poppins(
                            color: Colors.lightGreenAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
