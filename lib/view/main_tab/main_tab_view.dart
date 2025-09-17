import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extension.dart';
import 'package:trackizer/view/home/home_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selecTab = 0;
  PageStorageBucket bucket = PageStorageBucket();
  Widget currentTabView = HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.gray,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 10,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/img/bottom_bar_bg.png"),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/img/home.png",
                                height: 20,
                                width: 20,
                              ),
                            ),

                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/img/budgets.png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(width: 50, height: 50),
                            SizedBox(width: 50),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/img/calendar.png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/img/creditcards.png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
