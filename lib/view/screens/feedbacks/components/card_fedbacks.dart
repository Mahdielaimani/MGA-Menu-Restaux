import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../../../core/constant/colors.dart';

class CardFeedbacks extends StatefulWidget {
  const CardFeedbacks({super.key});

  @override
  State<CardFeedbacks> createState() => _CardFeedbacksState();
}

class _CardFeedbacksState extends State<CardFeedbacks>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            color: AppColors.whiteColor,
            width: MediaQuery.sizeOf(context).width,
            height: 113,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: AppColors.dividerColor,
                    height: 1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Feedbacks',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: TabBar(
                        indicatorWeight: MediaQuery.sizeOf(context).width,
                        labelColor: AppColors.kPurpleColor,
                        unselectedLabelColor: AppColors.blackColor,
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 20, right: 20),
                        tabs: [
                          Tab(text: 'Results'),
                          Tab(text: 'Forms'),
                        ],
                        controller: _tabController,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 200.0,
                height: 30,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type Article Title",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 120,
                child: OutlinedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.kPurpleColor),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Export',
                    style: TextStyle(color: AppColors.whiteColor),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
        ]),
      ),
    );
  }
}
