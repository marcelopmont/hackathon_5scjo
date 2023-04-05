// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hackathon/screens/movies_screen.dart';

import 'personal_card_screen.dart';

class MenuScreen extends StatelessWidget {
  static const id = '/menu';

  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Menu',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              width: double.infinity,
            ),
            Material(
              color: Colors.blue,
              elevation: 8,
              borderRadius: BorderRadius.circular(1000),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    PersonalCardScreen.id,
                    arguments: PersonalCardScreenArguments(
                      name: 'Marcelo',
                      email: 'teste@testinho.com',
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(1000),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  child: Text(
                    'Cartão pessoal',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
              width: double.infinity,
            ),
            Material(
              color: Colors.blue,
              elevation: 8,
              borderRadius: BorderRadius.circular(1000),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    MoviesScreen.id,
                  );
                },
                borderRadius: BorderRadius.circular(1000),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  child: Text(
                    'Filmes',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
