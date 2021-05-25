import 'package:assessment_one/constants.dart';
import 'package:flutter/material.dart';

class DocumentItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   Container(
      child: Column(
        children: [
          Image.asset("assets/images/pdf.png", height: 120),
          SizedBox(height: kItemSpace,),
          Text("File name", )
        ],
      ),
      height: 140,
      width: 100,
    );
  }
}
