import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trackizer/common/color_extension.dart';
import 'package:trackizer/common_widgets/primary_button.dart';
import 'package:trackizer/common_widgets/secondary_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              "assets/img/welcome_screen.png",
              width: media.width,
              height: media.height,
              fit: BoxFit.cover,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/app_logo.png",
                      width: media.width * 0.5,

                      fit: BoxFit.contain,
                    ),
                    Spacer(),
                    Text(
                      "Manage your subscriptions easily and never miss a payment again. Trackizer helps you stay on top of your finances with ease.",

                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: TColor.white),
                    ),
                    SizedBox(height: 30),
                    PrimaryButton(
                      title: "Get Started",
                      onPressed: () {
                        print("Get Started pressed");
                      },
                    ),
                    SizedBox(height: 15),
                    SecondaryButton(
                      title: "I have an account",
                      onPressed: () {
                        print("I have an account pressed");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
