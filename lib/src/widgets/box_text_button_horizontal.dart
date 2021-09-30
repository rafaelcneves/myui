import 'package:flutter/material.dart';
import 'package:myui/src/widgets/sized_box.dart';

class BoxTextButtonHorizontal extends StatelessWidget {
  final Function onPressed;
  final dynamic icon;
  final Text label;

  const BoxTextButtonHorizontal(
      {Key? key,
      required this.onPressed,
      required this.icon,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: OutlinedButton(
        onPressed: () {
          onPressed();
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(2.0, 16.0, 2.0, 16.0),
          child: Row(
            children: [icon, horizontalSpaceSmall, label],
          ),
        ),
      ),
    );
  }
}
