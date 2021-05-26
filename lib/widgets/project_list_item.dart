import 'package:assessment_one/constants.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';

class ProjectListItem extends StatelessWidget {
  VoidCallback? onTap;
  ProjectListItem({this.onTap});
  List<String> images = <String>[
    "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kDefaultBorderRadius)),
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Container(
          padding: EdgeInsets.all(kItemSpace + 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultBorderRadius)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Hero(
                        tag: "avatar",
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/bg.jpg"),
                        ),
                      ),
                      SizedBox(
                        width: kItemSpace * 2,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "App project",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(color: Colors.black87),
                            ),
                            SizedBox(
                              height: kItemSpace,
                            ),
                            Row(
                              children: [
                                Flexible(
                                    child: Text(
                                  "An assessment app for MVP",
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(color: Colors.grey),
                                )),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: kItemSpace * 2,
              ),
              Text(
                "Team",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: Colors.black87),
              ),
              SizedBox(
                height: kItemSpace,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ImageStack(
                          imageList: images,
                          imageRadius: 40,
                          imageCount: 3,
                          imageBorderWidth: 3,
                          totalCount: 4,
                          showTotalCount: false,
                        ),
                        //Spacer()
                      ],
                    ),
                  ),
                  Expanded(child: Container())
                ],
              ),
              SizedBox(
                height: kItemSpace * 2,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        CommunityMaterialIcons.calendar_clock,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "Jan 21, 2021",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        CommunityMaterialIcons.check_circle,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "12 Tasks",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
