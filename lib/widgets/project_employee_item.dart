import 'package:assessment_one/constants.dart';
import 'package:flutter/material.dart';

class ProjectEmployeeItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 100,
      margin: EdgeInsets.symmetric(horizontal: kItemSpace),
      child: Column(
        children: [
          CircleAvatar(radius: 25,),
          SizedBox(height: kItemSpace,),
          Text("Employee name"),
          SizedBox(height: kItemSpace,),
          Text("7 days", style: Theme.of(context).textTheme.caption,),
        ],
      ),
    );
  }
}
