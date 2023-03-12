import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF6E44FF),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "¡Hola queridos viajeros!",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Mi nombre es Xalac",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dejame ver como podemos ayudarnos en nuestras extrañas conversaciones",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
