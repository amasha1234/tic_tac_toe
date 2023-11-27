import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sta_tic_tac_toe/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 52, 52),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 40, top: 150),
              height: 300,
              child: Image.asset("assets/Icon.png")),
          Container(
            margin: const EdgeInsets.only(left: 40, top: 80),
            child: const Text(
              "Tic Tac Toe",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 480, top: 250),
            child: const Text(
              "Powered by",
              style: TextStyle(color: Colors.amber, fontSize: 15),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 480, top: 10),
            child: const Text(
              "STA Academy",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
