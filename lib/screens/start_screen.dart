import 'package:chatbot_flutter/screens/home_screen.dart';
import 'package:chatbot_flutter/theme/colors.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  static const spaceVertical = SizedBox(
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6E44FF),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    style: Theme.of(context).textTheme.headlineMedium,
                    "¡Hola queridos viajeros del cosmos!",
                    textAlign: TextAlign.center,
                    softWrap: true,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            spaceVertical,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  style: Theme.of(context).textTheme.headlineSmall,
                  "Mi nombre es Xalac",
                ),
              ],
            ),
            spaceVertical,
            spaceVertical,
            Stack(alignment: Alignment.center, children: [
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: MyColors.myPurpleColor[800],
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                  color: MyColors.myPurpleColor[400],
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: MyColors.myPurpleColor[600],
                  shape: BoxShape.circle,
                ),
              ),
              Image.asset(
                "ovni.png",
                scale: 4,
              ),
            ]),
            spaceVertical,
            spaceVertical,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Text(
                    "Dejame ver como podemos ayudarnos en nuestras extrañas conversaciones",
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    maxLines: 3,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
            spaceVertical,
            spaceVertical,
            FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => const HomeScreen()));
                },
                child: const Text("Empezar"))
          ],
        ),
      ),
    );
  }
}
