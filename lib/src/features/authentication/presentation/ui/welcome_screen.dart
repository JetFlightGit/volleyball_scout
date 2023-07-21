import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volleyball_scout/src/constants/image_strings.dart';
import 'package:volleyball_scout/src/constants/text_strings.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Color(0xFF2E3235),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Color(0xFF2E3235),
              child: Image(
                image: AssetImage(tWelcomeScreenImage),
                height: height * 0.6,
              ),
            ),
            Text(
              tWelcomeSubtitle,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: OutlinedButton(
                      onPressed: () {
                        context.go('/signin');
                      },
                      child: Text(tLogin.toUpperCase())),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
