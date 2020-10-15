import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

double defaultMargin = 36;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/image/background.png",
                fit: BoxFit.cover,
              ),
            ),
            Parent(
              child: Container(
                height: double.infinity,
                width: double.infinity,
              ),
              style: ParentStyle()
                ..linearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF142DED).withOpacity(0.4),
                      Color(0xFFA447BA).withOpacity(0.4),
                      Color(0xFF3746FA).withOpacity(0.4)
                    ]),
            ),

            // Logo
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 85),
                    child: Center(
                      child: ClipOval(
                        child: Parent(
                          child: Image.asset("assets/icon/icons.png"),
                          style: ParentStyle()
                            ..background.color(Colors.white)
                            ..width(84)
                            ..height(84)
                            ..boxShadow(
                                blur: 2, color: Colors.black, spread: 9),
                        ),
                      ),
                    ),
                  ),

                  // Spacing
                  SizedBox(
                    height: 74,
                  ),

                  Text("Login",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 45,
                          fontWeight: FontWeight.w900)),

                  // Spacing
                  SizedBox(
                    height: 17,
                  ),

                  Text("Username",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.normal)),

                  // Spacing
                  SizedBox(
                    height: 17,
                  ),

                  Parent(
                    child: TextField(
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        autocorrect: false,
                        decoration: InputDecoration(
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 14),
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)))),
                    style: ParentStyle()
                      ..width(double.infinity)
                      ..height(50)
                      ..background.color(Colors.white)
                      ..borderRadius(all: 7)
                      ..padding(all: 8),
                  ),

                  // Spacing
                  SizedBox(
                    height: 17,
                  ),

                  Text("Password",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.normal)),

                  // Spacing
                  SizedBox(
                    height: 17,
                  ),

                  Parent(
                    child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        autocorrect: false,
                        decoration: InputDecoration(
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 14),
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)))),
                    style: ParentStyle()
                      ..width(double.infinity)
                      ..height(50)
                      ..background.color(Colors.white)
                      ..borderRadius(all: 7)
                      ..padding(all: 8),
                  ),

                  // Spacing
                  SizedBox(
                    height: 17,
                  ),

                  Parent(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Txt(
                          "Forget Password ?  |   ",
                          style: TxtStyle()
                            ..textColor(Color(0xFF3339CE))
                            ..fontSize(15),
                        ),
                        Txt(
                          "Sign Up  ",
                          style: TxtStyle()
                            ..textColor(Color(0xFFF03B8E))
                            ..fontSize(15)
                            ..fontWeight(FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Text

            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Parent(
                  child: Txt(
                    "Faqs  |   Help",
                    style: TxtStyle()
                      ..textColor(Colors.white)
                      ..fontSize(15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
