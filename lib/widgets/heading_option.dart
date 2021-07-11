import 'package:flutter/material.dart';
import 'package:mock_dentaldost/sizedconfig.dart';

class HeadingOptions extends StatelessWidget {
  final String heading;

  HeadingOptions({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedConfig().init(context);

    double? horizontal = SizedConfig.blockSizeHorizontal;
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            heading,
            style: TextStyle(
              fontSize: horizontal! * 5,
              fontWeight: FontWeight.bold,
              color: Colors.indigo[900],
            ),
          ),
        ),
        Icon(
          Icons.navigate_next,
          size: horizontal * 7,
        )
      ],
    );
  }
}
