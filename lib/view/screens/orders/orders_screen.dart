part of '../packages_screens.dart';

class OrdersScreen extends StatefulWidget {
  OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => OrdersScreenState();
}

class OrdersScreenState extends State<OrdersScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

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
                child: Ink(
              color: AppColors.wbackColor,
              child: Column(children: [
                AppBarWelcome(),
                TopCardIcons(),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 120,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.purpleColor),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Export',
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50, top: 30),
                  child: Card(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            color: AppColors.whiteColor,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(16),
                            child: TabBar(
                              labelColor: AppColors.purpleColor,
                              unselectedLabelColor: AppColors.blackColor,
                              isScrollable: true,
                              labelPadding:
                                  EdgeInsets.only(left: 20, right: 20),
                              tabs: [
                                Tab(text: 'ID'),
                                Tab(text: 'Dayly No'),
                                Tab(text: 'Status'),
                                Tab(text: 'Type'),
                                Tab(text: 'Source'),
                              ],
                              controller: _tabController,
                            ),
                          ),
                          Container(
                            height: 100,
                            color: AppColors.whiteColor,
                            child: TabBarView(
                                controller: _tabController,
                                children: [
                                  Container(
                                    child: Text('No Data'),
                                  ),
                                  Container(
                                    child: Text('No Data'),
                                  ),
                                  Container(
                                    child: Text('No Data'),
                                  ),
                                  Container(
                                    child: Text('No Data'),
                                  ),
                                  Container(
                                    child: Text('No Data'),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            )),
          ]),
        ),
      ),
    );
  }
}
