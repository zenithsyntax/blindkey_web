import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'privacy_policy_data.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          padding: const EdgeInsets.all(16.0),
          child: Markdown(
            data: privacyPolicyData,
            styleSheet: MarkdownStyleSheet(
              h1: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
              h2: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              p: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.5),
              blockSpacing: 16.0,
            ),
            selectable: true,
          ),
        ),
      ),
    );
  }
}
