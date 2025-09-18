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
  PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget currentTabView = HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.gray,
      body: Stack(
        children: [
          PageStorage(bucket: pageStorageBucket, child: currentTabView),
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
                    alignment: Alignment.bottomCenter,

                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("assets/img/bottom_bar_bg.png"),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      currentTabView = HomeView();
                                      selecTab = 0;
                                    });
                                  },
                                  icon: Image.asset(
                                    "assets/img/home.png",
                                    height: 20,
                                    width: 20,
                                    color: selecTab == 0
                                        ? TColor.white
                                        : TColor.gray40,
                                  ),
                                ),

                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      currentTabView = Container(
                                        child: Center(
                                          child: Text(
                                            "Budget",
                                            style: TextStyle(
                                              fontSize: 40,
                                              color: TColor.white,
                                            ),
                                          ),
                                        ),
                                      );
                                      selecTab = 1;
                                    });
                                  },
                                  icon: Image.asset(
                                    "assets/img/budgets.png",
                                    height: 20,
                                    width: 20,
                                    color: selecTab == 1
                                        ? TColor.white
                                        : TColor.gray40,
                                  ),
                                ),
                                SizedBox(width: 50, height: 50),
                                SizedBox(width: 50),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      currentTabView = Container(
                                        child: Center(
                                          child: Text(
                                            "Calendar",
                                            style: TextStyle(
                                              fontSize: 40,
                                              color: TColor.white,
                                            ),
                                          ),
                                        ),
                                      );
                                      selecTab = 2;
                                    });
                                  },
                                  icon: Image.asset(
                                    "assets/img/calendar.png",
                                    height: 20,
                                    width: 20,
                                    color: selecTab == 2
                                        ? TColor.white
                                        : TColor.gray40,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      currentTabView = Container(
                                        child: Center(
                                          child: Text(
                                            "Credit Cards",
                                            style: TextStyle(
                                              fontSize: 40,
                                              color: TColor.white,
                                            ),
                                          ),
                                        ),
                                      );
                                      selecTab = 3;
                                    });
                                  },
                                  icon: Image.asset(
                                    "assets/img/creditcards.png",
                                    height: 20,
                                    width: 20,
                                    color: selecTab == 3
                                        ? TColor.white
                                        : TColor.gray40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: TColor.secondary.withOpacity(0.25),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            "assets/img/center_btn.png",
                            width: 65,
                            height: 65,
                          ),
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
