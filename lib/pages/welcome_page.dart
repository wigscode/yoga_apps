import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yoga_apss/pages/login_page.dart';
import 'package:yoga_apss/themes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height:  size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              "assets/images/doodles.svg",
                width: 311,
                height: 239,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Circle(),
                Circle(),
                Circle(),
              ],
            ),
            Text(
              "'Yoga is yhe art work of\nawareness on the canvas of\nbody, mind, and soul.'",
              textAlign: TextAlign.center,
              style: TextStyle(
                color:Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),

            Container(
              width: 173,
              height: 46,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return LoginPage();
                  }) );
                },
                child: Text("Get Started",
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.all(7),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: primaryColor,
      ),
    );
  }
}