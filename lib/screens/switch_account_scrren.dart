import 'dart:ui';

import 'package:flutter/material.dart';

class SwitchAcount extends StatelessWidget {
  const SwitchAcount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'images/switch_account_background.png'))),
                ),
                Positioned(
                  top: 200,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                      child: Container(
                        width: 340,
                        height: 352,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(255, 255, 255, 0.5),
                                  Color.fromRGBO(255, 255, 255, 0.2)
                                ]),
                            borderRadius: BorderRadius.circular(40)),
                        child: Column(
                          children: [
                            SizedBox(height: 32),
                            Container(
                              width: 129,
                              height: 129,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/me.1.jpg')),
                                  borderRadius: BorderRadius.circular(38)),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Amir Hoosian Roohiyan',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: 129,
                              height: 46,
                              child: ElevatedButton(
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style,
                                  onPressed: () {},
                                  child: Text('Confirem')),
                            ),
                            SizedBox(height: 32),
                            Text(
                              'switch account',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 132, bottom: 63),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'you don\'t have account??/',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                        fontFamily: 'GB'),
                  ),
                  Text(
                    'Singup',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'GB', fontSize: 20),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
