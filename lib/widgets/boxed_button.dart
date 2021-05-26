import 'package:assessment_one/constants.dart';
import 'package:flutter/material.dart';

class BoxedButton extends StatelessWidget {

  VoidCallback? onTap;
  IconData? iconData;
  String? title;
  MaterialColor? color;

  BoxedButton({this.onTap, this.iconData, this.title, this.color });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: color?.shade800,
                borderRadius: BorderRadius.circular(kDefaultBorderRadius),),
            height: 100,
          ),
          Positioned(
            child: Container(
              child: Icon(
                iconData,
                color: color,
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: color?.shade100),
              padding: EdgeInsets.all(kItemSpace),
            ),
            top: kItemSpace,
            left: kItemSpace,
          ),
          Positioned(
            child: Text(title!,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: Colors.white)),
            bottom: kItemSpace,
            left: kItemSpace,
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
