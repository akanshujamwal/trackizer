import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extension.dart';
import 'package:trackizer/common_widgets/primary_button.dart';
import 'package:trackizer/common_widgets/round_textfield.dart';
import 'package:trackizer/common_widgets/secondary_button.dart';
import 'package:trackizer/view/login/sign_in_view.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      height: 5,

                      decoration: BoxDecoration(
                        color: TColor.gray70,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      height: 5,

                      decoration: BoxDecoration(
                        color: TColor.gray70,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      height: 5,

                      decoration: BoxDecoration(
                        color: TColor.gray70,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      height: 5,

                      decoration: BoxDecoration(
                        color: TColor.gray70,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Use 8 or more characters with a mix of letters, numbers \n& symbols to make your password strong.",

                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 12, color: TColor.white),
                  ),
                ],
              ),
              SizedBox(height: 15),

              PrimaryButton(
                title: "Get Started its Free",
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SocialLoginView()),
                  // );
                },
              ),
              Spacer(),
              Text(
                "Do you have an account? ",

                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: TColor.white),
              ),
              SizedBox(height: 20),
              SecondaryButton(
                title: "Sign in",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SigninView()),
                  );
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
