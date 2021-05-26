import 'package:assessment_one/constants.dart';
import 'package:assessment_one/screens/project/edit_project_screen.dart';
import 'package:assessment_one/widgets/custom_chip.dart';
import 'package:assessment_one/widgets/project_employee_item.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewProjectScreen extends StatefulWidget {
  static const routeName = "ViewProjectScreen";

  @override
  _ViewProjectScreenState createState() => _ViewProjectScreenState();
}

class _ViewProjectScreenState extends State<ViewProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 200,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, EditProjectScreen.routeName);
                  },
                  icon: Icon(Icons.edit))
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "App project",
                style: TextStyle(color: Colors.black87),
              ),
              background: Hero(
                tag: "avatar",
                child: Image.asset(
                  "assets/images/bg.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(kDefaultLayoutPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Platforms",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          SizedBox(
                            height: kItemSpace,
                          ),
                          Wrap(
                            children: [
                              CustomChip(),
                              CustomChip(),
                              CustomChip(),
                              CustomChip(),
                              CustomChip(),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    Container(
                      padding: EdgeInsets.all(kDefaultLayoutPadding),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("Start date"),
                              SizedBox(
                                height: kItemSpace,
                              ),
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
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text("End date"),
                              SizedBox(
                                height: kItemSpace,
                              ),
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
                            ],
                          )
                        ],
                      ),
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    Container(
                      padding: EdgeInsets.all(kDefaultLayoutPadding),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("Ended date"),
                              SizedBox(
                                height: kItemSpace,
                              ),
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
                            ],
                          ),
                        ],
                      ),
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(kDefaultLayoutPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Domain info",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          SizedBox(
                            height: kItemSpace,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(color: Colors.black54),
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(kDefaultLayoutPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Credentials",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          SizedBox(
                            height: kItemSpace,
                          ),
                          Text("21 Jan, 2021",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(color: Colors.black54))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(kDefaultLayoutPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Notes",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          SizedBox(
                            height: kItemSpace,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(color: Colors.black54),
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(kDefaultLayoutPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Team",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          SizedBox(
                            height: kItemSpace,
                          ),
                          Container(
                            height: 130,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, position) {
                                return ProjectEmployeeItem();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
