import 'package:flutter/material.dart';
import 'package:hackathon/screens/menu_screen.dart';
import 'package:hackathon/screens/movies_screen.dart';
import 'package:hackathon/screens/personal_card_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MenuScreen.id,
      routes: {
        MenuScreen.id: (context) => const MenuScreen(),
        PersonalCardScreen.id: (context) {
          final arguments = ModalRoute.of(context)?.settings.arguments
              as PersonalCardScreenArguments;
          return PersonalCardScreen(arguments: arguments);
        },
        MoviesScreen.id: (context) => const MoviesScreen(),
      },
    );
  }
}
