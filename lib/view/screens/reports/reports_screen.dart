part of '../packages_screens.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  TabController? _tabController;

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Ink(
          width: getSizeApp(context).width,
          height: getSizeApp(context).height,
          child: Row(children: [
            ResponsiveVisibility(
                visible: true,
                hiddenWhen: isMobileTablet,
                child: SideMenuBar(controller: _controller)),
            Expanded(
              child: SingleChildScrollView(
                child: Ink(
                  color: AppColors.wbackColor,
                  child: Column(children: [
                    AppBarWelcome(),
                    TopCardIcons(),
                    SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(60.0),
                      child: SingleChildScrollView(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //let's add the navigation menu for this project
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      //let's trigger the navigation expansion
                                      setState(() {});
                                    },
                                    icon: Icon(Icons.menu),
                                  ),
                                ],
                              ),

                              //Now let's start with the dashboard main rapports
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
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
                                                    color:
                                                        AppColors.purpleColor,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
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
                                                fontSize: 16,
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
                                        padding: const EdgeInsets.all(18.0),
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
                                                  "Orders",
                                                  style: TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
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
                                                fontSize: 16,
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
                                        padding: const EdgeInsets.all(18.0),
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
                                                  "Customers",
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.orageaColor,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
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
                                                fontSize: 16,
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
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .monetization_on_outlined,
                                                  size: 24.0,
                                                  color: Colors.green,
                                                ),
                                                SizedBox(
                                                  width: 15.0,
                                                ),
                                                Text(
                                                  "Tip",
                                                  style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.bold,
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
                                                fontSize: 16,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
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
                                                  "Items Served",
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.purpleColor,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
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
                                                fontSize: 16,
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
                                        padding: const EdgeInsets.all(18.0),
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
                                                  "Average Order Size",
                                                  style: TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
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
                                                fontSize: 16,
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
                                        padding: const EdgeInsets.all(18.0),
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
                                                  "Sessions",
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.orageaColor,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
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
                                                fontSize: 16,
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
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .monetization_on_outlined,
                                                  size: 24.0,
                                                  color: Colors.green,
                                                ),
                                                SizedBox(
                                                  width: 15.0,
                                                ),
                                                Text(
                                                  "Best Day",
                                                  style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.bold,
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
                                                fontSize: 16,
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
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
