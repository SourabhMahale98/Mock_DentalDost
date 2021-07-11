import 'package:flutter/material.dart';
import 'package:mock_dentaldost/sizedconfig.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedConfig().init(context);
    double? screenWidth = SizedConfig.screenWidth;

    double? horizontal = SizedConfig.blockSizeHorizontal;
    double? vertical = SizedConfig.blockSizeVertical;
    return Container(
      height: vertical! * 18,
      width: screenWidth,
      decoration: BoxDecoration(color: Colors.indigo[900]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "EXPLORE ARTICLES",
                style: TextStyle(
                  fontSize: horizontal! * 4.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: vertical * 1,
              ),
              Text(
                '''Explore personlised articles \nand stay informed''',
                style: TextStyle(
                  fontSize: horizontal * 4,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            width: horizontal * 25,
            child: Image.asset("images/laptop.png"),
          ),
        ],
      ),
    );
  }
}
