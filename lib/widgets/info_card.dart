import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mock_dentaldost/sizedconfig.dart';
import 'package:mock_dentaldost/widgets/heading_option.dart';

class InfoCard extends StatelessWidget {
  final String heading;
  InfoCard({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedConfig().init(context);
    double? screenWidth = SizedConfig.screenWidth;

    double? horizontal = SizedConfig.blockSizeHorizontal;
    double? vertical = SizedConfig.blockSizeVertical;
    return Column(
      children: [
        SizedBox(height: vertical! * 2),
        HeadingOptions(heading: heading),
        CarouselSlider(
          options: CarouselOptions(
            height: vertical * 42,
            autoPlay: true,
          ),
          items: [1, 2, 3].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: screenWidth,
                        decoration: BoxDecoration(color: Colors.grey),
                        child: Image.asset(
                          "images/image$i.jpg",
                          fit: BoxFit.fill,
                          height: vertical * 27,
                        ),
                      ),
                      Text(
                        "Everything you need to know",
                        style: TextStyle(
                          fontSize: horizontal! * 5.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "2021-01-07",
                        style: TextStyle(
                          fontSize: horizontal * 3.5,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
