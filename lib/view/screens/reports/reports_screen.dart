part of '../packages_screens.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  TabController? _tabController;

  final _controller = SidebarXController(selectedIndex: 1, extended: true);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Ink(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: AppColors.whiteColor,
          child: Row(
            children: [
              ResponsiveVisibility(
                  visible: true,
                  hiddenWhen: isMobileTablet,
                  child: SideMenuBar(
                    controller: _controller,
                    onChange: (int page) {
                      _controller.selectIndex(page);
                      setState(() {});
                    },
                  )),
              Expanded(
                child: Ink(
                  color: AppColors.wbackColor,
                  child: ListView(
                    children: [
                      const AppBarWelcome(),
                      TopCardIcons(),
                      ResponsiveVisibility(
                          visible: true,
                          hiddenWhen: isMobileTablet,
                          child: CardReports()),
                      const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //let's add the navigation menu for this project
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // IconButton(
                                //   onPressed: () {
                                //     //let's trigger the navigation expansion
                                //     setState(() {});
                                //   },
                                //   icon: Icon(Icons.menu),
                                // ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),

                            //Now let's start with the dashboard main rapports
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(18.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.article,
                                                size: 24.0,
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Text(
                                                "Revenue",
                                                style: TextStyle(
                                                  color: AppColors.greyColor,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            "USD0.00",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(18.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.article,
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Text(
                                                "Orders",
                                                style: TextStyle(
                                                  color: AppColors.greyColor,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            "10",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(18.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.article,
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Text(
                                                "Customers",
                                                style: TextStyle(
                                                  color: AppColors.greyColor,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            "19",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(18.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.monetization_on_outlined,
                                                color: Colors.green,
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Text(
                                                "Tip",
                                                style: TextStyle(
                                                  color: AppColors.greyColor,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            "2.300 \$",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(18.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.article,
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Text(
                                                "Items Served",
                                                style: TextStyle(
                                                  color: AppColors.greyColor,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            "USD0.00",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(18.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.article,
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Text(
                                                "Average Order Size",
                                                style: TextStyle(
                                                  color: AppColors.greyColor,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            "#",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(18.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.article,
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Text(
                                                "Sessions",
                                                style: TextStyle(
                                                  color: AppColors.greyColor,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            "#",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(18.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.monetization_on_outlined,
                                                color: Colors.green,
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Text(
                                                "Best Day",
                                                style: TextStyle(
                                                  color: AppColors.greyColor,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            "2.300 \$",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.solidCommentDots,
          color: AppColors.whiteColor,
        ),
      ),
    ));
  }
}
