import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';

class CardOrders extends StatefulWidget {
  const CardOrders({super.key});

  @override
  State<CardOrders> createState() => _CardOrdersState();
}

class _CardOrdersState extends State<CardOrders> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            color: AppColors.whiteColor,
            width: MediaQuery.sizeOf(context).width,
            height: 113,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: AppColors.dividerColor,
                    height: 1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Orders',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: TabBar(
                        labelColor: AppColors.kPurpleColor,
                        unselectedLabelColor: AppColors.blackColor,
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 20, right: 20),
                        tabs: [
                          Tab(text: 'Live'),
                          Tab(text: 'Closed'),
                        ],
                        controller: _tabController,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.kPurpleColor),
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
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Container(
              color: AppColors.whiteColor,
              child: DataTable(
                headingRowColor: MaterialStateProperty.resolveWith(
                    (states) => AppColors.kBackColor),
                columns: const [
                  DataColumn(label: Text("ID")),
                  DataColumn(label: Text("Daily No")),
                  DataColumn(label: Text("Status")),
                  DataColumn(label: Text("Type")),
                  DataColumn(label: Text("Source")),
                  DataColumn(label: Text("Table")),
                  DataColumn(label: Text("Update Time")),
                  DataColumn(label: Text("Total")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("1")),
                    DataCell(Text("100")),
                    DataCell(Text("Active")),
                    DataCell(Text("Gold")),
                    DataCell(Text("Website")),
                    DataCell(Text("A12")),
                    DataCell(Text("2023-07-31 12:34:56")),
                    DataCell(Text("\$500")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("2")),
                    DataCell(Text("101")),
                    DataCell(Text("Inactive")),
                    DataCell(Text("Silver")),
                    DataCell(Text("In-store")),
                    DataCell(Text("B23")),
                    DataCell(Text("2023-07-30 09:30:15")),
                    DataCell(Text("\$300")),
                  ]),
                  // Add more rows if needed
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
