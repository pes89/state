import 'package:flutter/material.dart';

class AlertContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Dialog(),
        ),
      ),
    );
  }
}

class Dialog extends StatelessWidget {
  const Dialog({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('To state or no to state'),
          content: const Text(
              'I understand I sould never use a stateful when a stateless can do the job'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'YES'),
              child: const Text('YES ;'),
            ),
          ],
        ),
      ),
      child: const Text('Show Warning'),
    );
  }
}
