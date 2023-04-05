import 'package:flutter/material.dart';

class PersonalCardScreen extends StatelessWidget {
  static const id = '/personal_card';

  const PersonalCardScreen({super.key, required this.arguments});

  final PersonalCardScreenArguments arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Voltando para o menu'),
              ),
            );
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              arguments.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            Text(
              arguments.email,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonalCardScreenArguments {
  PersonalCardScreenArguments({
    required this.name,
    required this.email,
  });

  final String name;
  final String email;
}
