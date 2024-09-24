import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/serch_screen/serch_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              headlineMedium: TextStyle(
                  fontFamily: 'GB',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                textStyle: TextStyle(
                  fontFamily: 'GB',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                foregroundColor: Colors.white,
                backgroundColor: Color(0xfcF35383),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
          )),
      debugShowCheckedModeBanner: false,
      home: SearchScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/pattern1.png'),
          repeat: ImageRepeat.repeatY,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Center(
                child: Image(
                  image: AssetImage('images/logo_splash.png'),
                ),
              ),
            ),
            Positioned(
              bottom: 32,
              child: Column(children: [
                Text(
                  'Frome',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  'Amir Developer',
                  style: TextStyle(color: Colors.white, fontSize: 27),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
