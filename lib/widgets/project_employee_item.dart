import 'package:assessment_one/constants.dart';
import 'package:flutter/material.dart';

class ProjectEmployeeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.all(kItemSpace),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/employee.png"),
            radius: 25,
          ),
          SizedBox(
            height: kItemSpace,
          ),
          Text("Employee name", textAlign: TextAlign.center,),
          SizedBox(
            height: kItemSpace,
          ),
          Text(
            "7 days",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
