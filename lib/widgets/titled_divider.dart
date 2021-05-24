import 'package:assessment_one/constants.dart';
import 'package:flutter/material.dart';

class TitledDivider extends StatelessWidget {
  String title = "";

  TitledDivider({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kItemSpace),
      child: Row(
        children: [
          Text(title, style: Theme.of(context).textTheme.bodyText2,),
          SizedBox(
            width: kItemSpace,
          ),
          Expanded(child: Divider())
        ],
      ),
    );
  }
}
