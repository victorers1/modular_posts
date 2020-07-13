import 'package:flutter/material.dart';

class IndicatorWidget extends StatelessWidget {
  final int number;
  final String indicator;
  IndicatorWidget({@required this.number, @required this.indicator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          number.toString(),
          style: Theme.of(context).textTheme.subtitle1.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          indicator,
          style:
              Theme.of(context).textTheme.caption.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
