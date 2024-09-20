import 'package:flutter/material.dart';

class LoginPagePage extends StatefulWidget {
  const LoginPagePage({super.key});

  @override
  State<LoginPagePage> createState() => _LoginPagePageState();
}

class _LoginPagePageState extends State<LoginPagePage> {
  FocusNode negahban1 = FocusNode();
  FocusNode negahban2 = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    negahban1.addListener(() {
      setState(() {});
    });
    negahban2.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    negahban1.dispose();
    negahban2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff323A99), Color(0xffF98BFC)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [getImageContinner(), getdataContinner(context)],
        ),
      ),
    );
  }

  Widget getImageContinner() {
    return Positioned(
      top: 80,
      left: 0,
      right: 0,
      bottom: 0,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(child: Image(image: AssetImage('images/rocket.png'))),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }

  Widget getdataContinner(BuildContext contex) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.transparent,
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: double.infinity),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sing in to',
                      style: Theme.of(contex).textTheme.headlineMedium,
                    ),
                    SizedBox(width: 12),
                    Image(image: AssetImage('images/mood.png'))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    focusNode: negahban1,
                    decoration: InputDecoration(
                      labelText: 'Emile',
                      labelStyle: TextStyle(
                          fontFamily: 'GM',
                          fontSize: 20,
                          color: negahban1.hasFocus
                              ? Color(0xffF35383)
                              : Colors.white),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                      hintText: 'Emile',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(width: 5, color: Color(0xffC5C5C5)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(width: 3, color: Color(0xffF35383)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    focusNode: negahban2,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontFamily: 'GM',
                          fontSize: 20,
                          color: negahban2.hasFocus
                              ? Color(0xffF35383)
                              : Colors.white),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                      hintText: 'password',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(width: 5, color: Color(0xffC5C5C5)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(width: 3, color: Color(0xffF35383)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
