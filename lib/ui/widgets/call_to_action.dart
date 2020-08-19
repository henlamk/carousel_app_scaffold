import 'package:carousel_app_scaffold/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  final String text;
  final Function onClick;

  const CallToAction({
    Key key,
    this.text,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        width: screenWidth(context) * 0.7,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
