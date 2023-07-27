part of '../packages_screens.dart';

class RecommendScreen extends StatefulWidget {
  const RecommendScreen({super.key});

  @override
  State<RecommendScreen> createState() => _RecommendScreenState();
}

class _RecommendScreenState extends State<RecommendScreen>
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
                Text(
                  'Recommendations',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
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
                                Tab(text: 'Overview'),
                                Tab(text: 'Recommended Items'),
                              ],
                              controller: _tabController,
                            ),
                          ),
                          Container(
                            height: 330,
                            width: MediaQuery.sizeOf(context).width,
                            color: AppColors.whiteColor,
                            child: TabBarView(
                                controller: _tabController,
                                children: [
                                  Lottie.asset(
                                    'assets/lottie/homeview.json',
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('No Data',
                                        style: TextStyle(fontSize: 22)),
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
