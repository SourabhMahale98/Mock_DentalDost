import 'package:flutter/material.dart';
import 'package:mock_dentaldost/sizedconfig.dart';
import 'package:mock_dentaldost/widgets/header.dart';
import 'package:mock_dentaldost/widgets/heading_option.dart';
import 'package:mock_dentaldost/widgets/info_card.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    SizedConfig().init(context);
    double? screenWidth = SizedConfig.screenWidth;

    double? vertical = SizedConfig.blockSizeVertical;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFe6e3e3),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              HeadingOptions(heading: "RIGHT WAY TO BRUSH"),
              SizedBox(height: vertical! * 2),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: screenWidth,
                  height: vertical * 25,
                  child: Image.asset(
                    "images/brush.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              InfoCard(heading: "Stains"),
              InfoCard(heading: "Caries"),
            ],
          ),
        ),
      ),
    );
  }
}
