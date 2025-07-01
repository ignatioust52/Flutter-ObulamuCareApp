import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 21, 68),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/eye.png', // Update the path as needed
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 46,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Your journey to a better experience starts here.',
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 30),
            // loading indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  strokeWidth: 2.0,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Checking User Credentials...',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        child: SizedBox(
          height: 70,
          child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 0,
        childAspectRatio: 2.8,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ElevatedButton(
            onPressed: () {
          // TODO: Implement Login action
            },
            style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 241, 240, 243),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 6,
          padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 18),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // TODO: Implement Sign In action
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 6,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text(
              'Sign In',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
          ),
        ),
      ),
      
    );
  }
}