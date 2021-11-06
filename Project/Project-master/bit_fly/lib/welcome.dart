// import 'package:bitcoin_ticker/price_screen.dart';
import 'package:bit_fly/Login.dart';
import 'package:bit_fly/registration.dart';
import 'package:flutter/material.dart';

import 'price_screen.dart';
// import 'package:introduction_screen/introduction_screen.dart';
// import 'flutter/src/widgets/basic.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  // List<PageViewModel> getpages() {
  //   return [
  //     PageViewModel(
  //       image: Image.network(
  //           'https://cdn.dribbble.com/users/81899/screenshots/1411041/untitled-1.png?compress=1&resize=800x600'),
  //       title: 'Bit Fly',
  //       body: 'A CryptoCurrency Tracking App',
  //       footer: Text('Find what you need'),
  //     ),
  //   ];
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('Image/bit2.png'),
                    height: animation.value * 100,
                  ),
                ),
                Text(
                  'BitFi',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 45.5,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Login',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              title: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  RoundedButton({this.title, @required this.onPressed});

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}
