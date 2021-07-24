import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yoga_apss/themes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController? userCtl;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          padding: EdgeInsets.symmetric( horizontal:40 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 20,
              ),
              SvgPicture.asset(
                "assets/images/logo.svg"
              ),
              Column(
                children: [
                  TextFieldCustom(nameCtl: userCtl,hintText: "username",),
              TextFieldCustom(nameCtl: userCtl,hintText: "Password",),
              Align(
                alignment: Alignment.topRight,
                              child: Text("forgot password?",
                  style: TextStyle(
                    color:Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13, 
                  ),
                ),
              ),
              Container(
                width: 133,
                height: 46,
                margin: EdgeInsets.only( top:40,bottom:20 ),
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: greyColor1,
                  
                  ),
                  children: [
                    TextSpan(
                      text: "Don't have an account, ",
                    ),
                    TextSpan(
                      text : "Sign Up",
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: " now."
                    )
                  ]
                )
                ),
                ],
              ),
              Column(
                children: [
                  Text(
                  "Or",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/google.svg",
                      height: 52,
                      width: 52,
                    ),
                    SvgPicture.asset(
                      "assets/icons/flickr.svg",
                      height: 72,
                      width: 72,
                    ),
                    SvgPicture.asset(
                      "assets/icons/facebook.svg",
                      height: 52,
                      width: 52,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ],
              ),
              
                
            ],
          ),
        ),
      ),
      
    );
  }
}

class TextFieldCustom extends StatelessWidget {

  final TextEditingController? nameCtl;
  final String hintText;

  const TextFieldCustom({
    Key? key,
    required this.nameCtl,
    required this.hintText
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46,
      margin: EdgeInsets.only(bottom:30,),
      padding: EdgeInsets.symmetric(vertical:0,horizontal:20),
      decoration: BoxDecoration(
        color: greyColor2,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(-4,4.0),
            blurRadius: 18.0,
            spreadRadius: 0.0
          ),
        ],
      ),
      child: TextField(
        controller: nameCtl ,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: greyColor1,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}