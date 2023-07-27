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
                      Text(
                        '0 results listed.',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          DropdownButton(
                              hint: Text("Search "),
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
                            DataColumn(label: Text("Customer")),
                            DataColumn(label: Text("Tags")),
                            DataColumn(label: Text("Email")),
                            DataColumn(label: Text("Phone")),
                            DataColumn(label: Text("Total Orders")),
                            DataColumn(label: Text("LastVisit")),
                          ],
                          rows: [
                            DataRow(
                                color: MaterialStateProperty.resolveWith(
                                    (states) => AppColors.whiteColor),
                                cells: [
                                  DataCell(Text("Np Data")),
                                  DataCell(Text("Np Data")),
                                  DataCell(Text("Np Data")),
                                  DataCell(Text("Np Data")),
                                  DataCell(Text("Np Data")),
                                  DataCell(Text("Np Data")),
                                ]),
                            DataRow(
                                color: MaterialStateProperty.resolveWith(
                                    (states) => AppColors.whiteColor),
                                cells: [
                                  DataCell(Text("Np Data")),
                                  DataCell(Text("Np Data")),
                                  DataCell(Text("Np Data")),
                                  DataCell(Text("Np Data")),
                                  DataCell(Text("Np Data")),
                                  DataCell(Text("Np Data")),
                                ]),
                          ]),
                      SizedBox(
                        height: 40.0,
                      ),
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
