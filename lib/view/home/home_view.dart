import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extension.dart';
import 'package:trackizer/common_widgets/segment_button.dart';
import 'package:trackizer/common_widgets/status_button.dart';
import 'package:trackizer/common_widgets/subscription_home_row.dart';
import 'package:trackizer/common_widgets/upcoming_bill_row.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSubscriptions = true;
  List subArr = [
    {"name": "Spotify", "icon": "assets/img/spotify_logo.png", "price": "399"},
    {
      "name": "YouTube Premium",
      "icon": "assets/img/youtube_logo.png",
      "price": "999",
    },
    {
      "name": "Microsoft OneDrive",
      "icon": "assets/img/onedrive_logo.png",
      "price": "499",
    },
    {"name": "Netflix", "icon": "assets/img/netflix_logo.png", "price": "399"},
  ];
  List billArr = [
    {"name": "Spotify", "date": DateTime(2025, 10, 5), "price": "399"},
    {"name": "YouTube Premium", "date": DateTime(2025, 10, 19), "price": "999"},
    {
      "name": "Microsoft OneDrive",
      "date": DateTime(2025, 11, 15),
      "price": "499",
    },
    {"name": "Netflix", "date": DateTime(2025, 9, 25), "price": "399"},
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.gray,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: media.width * 1.1,

              decoration: BoxDecoration(
                color: TColor.gray70.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Image.asset("assets/img/home_bg.png"),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/img/app_logo.png",
                        width: media.width * 0.28,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "\$1,299.00",
                        style: TextStyle(
                          color: TColor.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "This Month's Expense",
                        style: TextStyle(
                          color: TColor.gray40,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 25),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: TColor.border.withOpacity(0.15),
                            ),
                            color: TColor.gray60.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            "See your budget",
                            style: TextStyle(
                              color: TColor.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          children: [
                            Expanded(
                              child: StatusButton(
                                title: "Active Status",
                                value: "4",
                                onPressed: () {},
                                statusColor: TColor.secondary,
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: StatusButton(
                                title: "Highest Subscription",
                                value: "\$ 2,296",
                                onPressed: () {},
                                statusColor: TColor.primary10,
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: StatusButton(
                                title: "Lowest Subscription",
                                value: "2",
                                onPressed: () {},
                                statusColor: TColor.secondaryG,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SegmentButton(
                      title: "Your Subscriptions",
                      onPressed: () {
                        setState(() {
                          isSubscriptions = !isSubscriptions;
                        });
                      },
                      isActive: isSubscriptions,
                    ),
                  ),
                  Expanded(
                    child: SegmentButton(
                      title: "Upcoming Bills",
                      onPressed: () {
                        setState(() {
                          isSubscriptions = !isSubscriptions;
                        });
                      },
                      isActive: !isSubscriptions,
                    ),
                  ),
                ],
              ),
            ),
            if (isSubscriptions)
              ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: subArr.length,
                itemBuilder: (context, index) {
                  var sObj = subArr[index] as Map? ?? {};
                  return SubscriptionHomeRow(sObj: sObj, onPressed: () {});
                },
              ),
            if (!isSubscriptions)
              ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: subArr.length,
                itemBuilder: (context, index) {
                  var bObj = billArr[index] as Map? ?? {};
                  return UpcomingBillRow(bObj: bObj, onPressed: () {});
                },
              ),
            SizedBox(width: 150),
          ],
        ),
      ),
    );
  }
}
