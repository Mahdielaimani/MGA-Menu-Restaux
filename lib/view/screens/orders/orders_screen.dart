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
              child: Column(
                children: [
                  AppBarWelcome(),
                  TopCardIcons(),
                  SizedBox(
                    height: 30,
                  ),

                  SizedBox(
                    height: 40.0,
                  ),

                  //let's set the filter section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${DateTime.now()}"),
                      Row(
                        children: [
                          DropdownButton(
                              hint: Text("Filter by"),
                              items: [
                                DropdownMenuItem(
                                  value: "Date",
                                  child: Text("Date"),
                                ),
                              ],
                              onChanged: (value) {}),
                          SizedBox(
                            width: 20.0,
                          ),
                          DropdownButton(
                              hint: Text("Order by"),
                              items: [
                                DropdownMenuItem(
                                  value: "Date",
                                  child: Text("Date"),
                                ),
                                DropdownMenuItem(
                                  value: "ID",
                                  child: Text("ID"),
                                ),
                                DropdownMenuItem(
                                  value: "Table",
                                  child: Text("Table"),
                                ),
                              ],
                              onChanged: (value) {}),
                          Container(
                            width: 120,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    AppColors.purpleColor),
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
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  //Now let's add the Table
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      DataTable(
                          headingRowColor: MaterialStateProperty.resolveWith(
                              (states) => AppColors.backColor),
                          columns: [
                            DataColumn(label: Text("ID")),
                            DataColumn(label: Text("Daily No")),
                            DataColumn(label: Text("Status")),
                            DataColumn(label: Text("Type")),
                            DataColumn(label: Text("Source")),
                            DataColumn(label: Text("Table")),
                            DataColumn(label: Text("UpdateTime")),
                            DataColumn(label: Text("Total")),
                          ],
                          rows: [
                            DataRow(
                                color: MaterialStateProperty.resolveWith(
                                    (states) => AppColors.whiteColor),
                                cells: [
                                  DataCell(Text("0")),
                                  DataCell(Text("${DateTime.now()}")),
                                  DataCell(Text("Active")),
                                  DataCell(Text("Pizza")),
                                  DataCell(Text("SourceA")),
                                  DataCell(Text("20")),
                                  DataCell(Text("${DateTime.now()}")),
                                  DataCell(Text("100k")),
                                ]),
                            DataRow(
                                color: MaterialStateProperty.resolveWith(
                                    (states) => AppColors.whiteColor),
                                cells: [
                                  DataCell(Text("1")),
                                  DataCell(Text("${DateTime.now()}")),
                                  DataCell(Text("inActive")),
                                  DataCell(Text("Tacos")),
                                  DataCell(Text("SourceB")),
                                  DataCell(Text("11")),
                                  DataCell(Text("${DateTime.now()}")),
                                  DataCell(Text("15k")),
                                ]),
                          ]),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "1",
                              style: TextStyle(color: Colors.deepPurple),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "2",
                              style: TextStyle(color: Colors.deepPurple),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "3",
                              style: TextStyle(color: Colors.deepPurple),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See All",
                              style: TextStyle(color: Colors.deepPurple),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )),
          ]),
        ),
      ),
    );
  }
}
