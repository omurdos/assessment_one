import 'package:assessment_one/constants.dart';
import 'package:flutter/material.dart';

class EmployeeListItem extends StatelessWidget {
  String? name;
  String? position;
  bool? isSuspended = false;
  VoidCallback onTap;

  EmployeeListItem(
      {this.name, this.position, this.isSuspended, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kDefaultBorderRadius)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Hero(
                  tag: "person",
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/person.jpg"),
                  ),
                ),
                Positioned(
                  bottom: 10,
                    right: 0,
                    child: Icon(
                  Icons.circle,
                  color: Colors.green.shade300,
                ))
              ],
            ),
            SizedBox(
              height: kItemSpace,
            ),
            Text(
              "Omar Murdos",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Developer",
              style: Theme.of(context).textTheme.bodyText2,
            )
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
