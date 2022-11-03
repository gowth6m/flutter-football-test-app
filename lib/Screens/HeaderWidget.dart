import 'package:flutter/cupertino.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({
    Key key,
  }) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Text(
                'Pos',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Club',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PL',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'W',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'D',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'L',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'GD',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Pts',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
