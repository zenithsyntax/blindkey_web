import 'package:flutter/material.dart';
import 'privacy_policy_page.dart';
import 'terms_and_conditions_page.dart';

void main() {
  runApp(const BlindKeyApp());
}

class BlindKeyApp extends StatelessWidget {
  const BlindKeyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlindKey',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFD32F2F), // --primary-red
        scaffoldBackgroundColor: const Color(0xFF000000), // --bg-color
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFD32F2F),
          primaryContainer: Color(0xFFB71C1C), // --primary-red-hover
          surface: Color(0xFF1E1E1E), // --card-color
          error: Color(0xFFCF6679), // --error-color
        ),
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      home: const BlindKeyHomePage(),
    );
  }
}

class BlindKeyHomePage extends StatelessWidget {
  const BlindKeyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo placeholder
            const Icon(
              Icons.shield, // Placeholder for BlindKey logo
              size: 80,
              color: Color(0xFFD32F2F),
            ),
            const SizedBox(height: 24),
            Text(
              'BlindKey',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Elite Privacy. Seamlessly Secured.',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: const Color(0xFFB0B0B0), // --text-secondary
              ),
            ),
            const SizedBox(height: 48),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicyPage(),
                  ),
                );
              },
              child: Text(
                'Privacy Policy',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TermsAndConditionsPage(),
                  ),
                );
              },
              child: Text(
                'Terms and Conditions',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
