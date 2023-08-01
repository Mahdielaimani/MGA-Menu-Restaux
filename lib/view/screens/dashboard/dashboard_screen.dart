part of '../packages_screens.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
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
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Row(children: [
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBarWelcome(),
                    TopCardIcons(),

                    SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "${DateFormat('EEEE, d MMMM HH:mm').format(DateTime.now())}",
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'MGA, Welcome!',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    //let's set the filter section

                    SizedBox(
                      height: 40.0,
                    ),
                    //Now
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 900,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.all(20),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Today",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              TextButton(
                                onPressed: () =>
                                    router.pushNamed('reportsScreen'),
                                child: Text(
                                  "View Reports",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.purpleColor),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 0.5,
                            color: AppColors.greyColor,
                          ),
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(children: [
                                  Text(' Revenue'),
                                  SizedBox(height: 10),
                                  Text('\$0.00'),
                                  SizedBox(height: 10),
                                ]),
                                Text('0.00%'),
                                Column(children: [
                                  Text(' Average Order Size'),
                                  SizedBox(height: 10),
                                  Text('\$0.00'),
                                  SizedBox(height: 10),
                                ]),
                                Text('0.00%'),
                              ]),
                          Divider(
                            thickness: 0.5,
                            color: AppColors.greyColor,
                          ),
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(children: [
                                  Text(' Orders'),
                                  SizedBox(height: 10),
                                  Text('0'),
                                  SizedBox(height: 10),
                                ]),
                                Text('0.00%'),
                                Column(children: [
                                  Text('Visitors'),
                                  SizedBox(height: 10),
                                  Text('\$0.00'),
                                  SizedBox(height: 10),
                                ]),
                                Text('0.00%'),
                              ]),
                          Divider(
                            thickness: 0.5,
                            color: AppColors.greyColor,
                          ),
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(children: [
                                  Text(' Orders'),
                                  SizedBox(height: 10),
                                  Text('0'),
                                  SizedBox(height: 10),
                                ]),
                                Text('0.00%'),
                                Column(children: [
                                  Text('Visitors'),
                                  SizedBox(height: 10),
                                  Text('\$0.00'),
                                  SizedBox(height: 10),
                                ]),
                                Text('0.00%'),
                              ]),
                        ]),
                      ),
                    ),

                    SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 900,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.all(10),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recent Orders",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              TextButton(
                                onPressed: () =>
                                    router.pushNamed('ordersScreen'),
                                child: Text(
                                  "View Orders",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.purpleColor),
                                ),
                              ),
                            ],
                          ),
                          DataTable(
                              headingRowColor:
                                  MaterialStateProperty.resolveWith(
                                      (states) => AppColors.wbackColor),
                              columns: [
                                DataColumn(label: Text("ID")),
                                DataColumn(label: Text("Daily No")),
                                DataColumn(label: Text("Status")),
                                DataColumn(label: Text("Type")),
                                DataColumn(label: Text("Customer/Table")),
                                DataColumn(label: Text("Waiter")),
                                DataColumn(label: Text("UpdateTime")),
                                DataColumn(label: Text("Total")),
                              ],
                              rows: []),
                          SizedBox(height: 30),
                          Align(
                            alignment: Alignment.center,
                            child: Column(children: [
                              Icon(Icons.store_outlined),
                              Text('No Dat'),
                              SizedBox(height: 30),
                            ]),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ]),
        ),
      ),
    );
  }
}
