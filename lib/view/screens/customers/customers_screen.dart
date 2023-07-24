part of '../packages_screens.dart';

class CustomersScreen extends StatefulWidget {
  @override
  _CustomersScreenState createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersScreen>
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
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50, top: 100),
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
                                Tab(text: 'Tags'),
                                Tab(text: 'Emails'),
                                Tab(text: 'Orders'),
                                Tab(text: 'phone'),
                                Tab(text: 'visbile'),
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
