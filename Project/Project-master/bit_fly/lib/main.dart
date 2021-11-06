// import 'package:bit_fi/welcome.dart';
// import 'package:bitcoin_ticker/welcome.dart';
import 'package:bit_fly/Login.dart';
import 'package:bit_fly/price_screen.dart';
import 'package:bit_fly/registration.dart';
import 'package:bit_fly/splashe%20scrren.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'price_screen.dart';
import 'welcome.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(MyApp());

// int isviewed;
// void main() async {
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent,
//   ));
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   isviewed = prefs.getInt('onBoard');
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  static const String id = 'main screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: Image.asset('Image/bit.png'),
        nextScreen: SplashScreen(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 2000,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        MyApp.id: (context) => MyApp(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        PriceScreen.id: (context) => PriceScreen(),
      },
    );
  }
}
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: isviewed != 0 ? OnBoard() : PriceScreen());
//   }
// }
