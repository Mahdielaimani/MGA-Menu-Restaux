part of '../../../../packages/packages.dart';

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
          width: context.width,
          height: context.height,
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
              color: AppColors.kwbackColor,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppBarWelcome(),
                    const TopCardIcons(),

                    const SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          // ignore: unnecessary_string_interpolations
                          "${DateFormat('EEEE, d MMMM HH:mm').format(DateTime.now())}",
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'MGA, Welcome!',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 40.0,
                    ),
                    //Now
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 900,
                        decoration: BoxDecoration(
                            color: AppColors.kwhiteColor,
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(20),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Today",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              TextButton(
                                onPressed: () =>
                                    router.pushNamed('reportsScreen'),
                                child: const Text(
                                  "View Reports",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.kPurpleColor),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 0.5,
                            color: AppColors.kgreyColor,
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
                          const Divider(
                            thickness: 0.5,
                            color: AppColors.kgreyColor,
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
                          const Divider(
                            thickness: 0.5,
                            color: AppColors.kgreyColor,
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

                    const SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 900,
                        decoration: BoxDecoration(
                            color: AppColors.kwhiteColor,
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(10),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Recent Orders",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              TextButton(
                                onPressed: () =>
                                    router.pushNamed('ordersScreen'),
                                child: const Text(
                                  "View Orders",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.kPurpleColor),
                                ),
                              ),
                            ],
                          ),
                          DataTable(
                              headingRowColor:
                                  MaterialStateProperty.resolveWith(
                                      (states) => AppColors.kwbackColor),
                              columns: const [
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
                          const SizedBox(height: 30),
                          const Align(
                            alignment: Alignment.center,
                            child: Column(children: [
                              Icon(Icons.store_outlined),
                              Text('No Data'),
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
