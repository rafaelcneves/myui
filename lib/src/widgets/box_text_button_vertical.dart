import 'package:flutter/material.dart';
import 'package:myui/src/widgets/sized_box.dart';

class BoxTextButtonVertical extends StatelessWidget {
  final Function onPressed;
  final dynamic icon;
  final Text label;
  ButtonStyle? style;

  BoxTextButtonVertical(
      {Key? key,
      required this.onPressed,
      required this.icon,
      required this.label,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: TextButton(
        style: style,
        onPressed: () {
          onPressed();
        },
        child: SizedBox(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [icon, verticalSpaceSmall, label],
          ),
        ),
      ),
    );
  }
}
