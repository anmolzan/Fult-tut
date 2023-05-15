import 'package:flutter/material.dart';
import 'package:fluttter_tutorial/pages/cart_page.dart';
import 'package:fluttter_tutorial/pages/login_page.dart';
import 'package:fluttter_tutorial/utils/routes.dart';
import 'package:fluttter_tutorial/widgets/Theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //both integer and decimal type value

    var all = "45 sam 78.56 "; //takes all type of value
    const pie = 3.14;
    return  MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme,/*ThemeData(
        primarySwatch: Colors.cyan,
            fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(color: Colors.white,
          elevation: 0.0,iconTheme: IconThemeData(color: Colors.black),
          ),*/

      darkTheme: MyTheme.darkTheme,
        //ThemeData(
        //brightness: Brightness.dark,
     // ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.HomeRoute,
      routes:{
          "/":(context)=> LoginPage(),
        MyRoutes.HomeRoute:(context)=>Homepage(),
        MyRoutes.loginRoute:(context)=>LoginPage(),
        MyRoutes.CartpageRoute:(context)=>Cartpage(),
      },
    );
  }
}
