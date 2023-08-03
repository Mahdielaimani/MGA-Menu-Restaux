part of '../../../../packages/packages.dart';

class CustomersScreen extends StatefulWidget {
  const CustomersScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomersScreenState createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final _controller = SidebarXController(selectedIndex: 4, extended: true);
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Ink(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: AppColors.kwhiteColor,
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
                  child: ListView(children: [
                    const AppBarWelcome(),
                    const TopCardIcons(),
                    const ResponsiveVisibility(
                        visible: true,
                        hiddenWhen: isMobileTablet,
                        child: CardCustomers()),
                    const SizedBox(
                      width: 30.0,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            '0 results listed.',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        // TextField(
                        //   decoration: InputDecoration(
                        //     hintText: "search",
                        //     prefixIcon: Icon(Icons.search),
                        //     border: OutlineInputBorder(
                        //       borderSide: BorderSide(
                        //         color: Colors.black26,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        color: AppColors.kwhiteColor,
                        child: DataTable(
                            headingRowColor: MaterialStateProperty.resolveWith(
                                (states) => AppColors.kBackColor),
                            columns: const [
                              DataColumn(label: Text("Customer")),
                              DataColumn(label: Text("Tags")),
                              DataColumn(label: Text("Email")),
                              DataColumn(label: Text("Phone")),
                              DataColumn(label: Text("Total Orders")),
                              DataColumn(label: Text("LastVisit")),
                            ],
                            rows: const [
                              DataRow(cells: [
                                DataCell(Text("Jane Smith")),
                                DataCell(Text("Regular")),
                                DataCell(Text("jane.smith@example.com")),
                                DataCell(Text("987-654-3210")),
                                DataCell(Text("5")),
                                DataCell(Text("2023-07-30")),
                              ]),
                              DataRow(cells: [
                                DataCell(Text("John Doe")),
                                DataCell(Text("VIP")),
                                DataCell(Text("john.doe@example.com")),
                                DataCell(Text("123-456-7890")),
                                DataCell(Text("10")),
                                DataCell(Text("2023-07-31")),
                              ]),
                            ]),
                      ),
                    ),
                  ]),
                ),
              ),
            ]),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            FontAwesomeIcons.solidCommentDots,
            color: AppColors.kwhiteColor,
          ),
        ),
      ),
    );
  }
}
