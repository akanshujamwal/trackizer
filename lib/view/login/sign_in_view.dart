import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extension.dart';
import 'package:trackizer/common_widgets/primary_button.dart';
import 'package:trackizer/common_widgets/round_textfield.dart';
import 'package:trackizer/common_widgets/secondary_button.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isRemember = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.gray80,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/app_logo.png",
                width: media.width * 0.5,

                fit: BoxFit.contain,
              ),
              Spacer(),
              RoundTextfield(
                title: 'Email address',
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
              ),

              SizedBox(height: 15),
              RoundTextfield(
                title: 'Password',

                controller: passwordController,
                obscureText: true,
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isRemember = !isRemember;
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          isRemember
                              ? Icons.check_box_rounded
                              : Icons.check_box_outline_blank_rounded,
                          size: 25,
                          color: TColor.gray50,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Remember me",

                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 14, color: TColor.white),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",

                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 14, color: TColor.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),

              PrimaryButton(
                title: "Sign In",
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SocialLoginView()),
                  // );
                },
              ),
              Spacer(),
              Text(
                "If don't have an account",

                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: TColor.white),
              ),
              SizedBox(height: 20),
              SecondaryButton(title: "Sign up", onPressed: () {}),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
