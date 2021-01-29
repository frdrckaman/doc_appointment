import 'package:flutter/material.dart';
import 'package:doctor_app/Screens/Login/login_screen.dart';
import 'package:doctor_app/Screens/Signup/components/background.dart';
import 'package:doctor_app/Screens/Signup/components/or_divider.dart';
import 'package:doctor_app/Screens/Signup/components/social_icon.dart';
import 'package:doctor_app/components/already_have_an_account_acheck.dart';
import 'package:doctor_app/components/rounded_button.dart';
import 'package:doctor_app/components/rounded_input_field.dart';
import 'package:doctor_app/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign up",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45.0,color: Color(0xFF00b0ff),fontFamily: 'OldEnglishFive'),
            ),
            SizedBox(height: size.height * 0.01),
            SvgPicture.asset(
              "assets/icons/intro.svg",
              height: size.height * 0.32,
            ),
            RoundedInputField(
              hintText: "Your First Name",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Phone Number",
              icon: Icons.phone,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.01),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            // OrDivider(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     SocalIcon(
            //       iconSrc: "assets/icons/facebook.svg",
            //       press: () {},
            //     ),
            //     SocalIcon(
            //       iconSrc: "assets/icons/twitter.svg",
            //       press: () {},
            //     ),
            //     SocalIcon(
            //       iconSrc: "assets/icons/google-plus.svg",
            //       press: () {},
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
