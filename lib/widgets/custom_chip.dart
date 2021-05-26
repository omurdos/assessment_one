import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(5),
      child: Chip(
        label: Text(
          "Android",
          style: TextStyle(
              color: Theme.of(context).primaryColor),
        ),
        backgroundColor: Theme.of(context)
            .primaryColor
            .withOpacity(0.2),
      ),
    );
  }
}
