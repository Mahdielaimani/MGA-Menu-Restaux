part of 'pack_components.dart';

class CardMenuManagement extends StatefulWidget {
  CardMenuManagement();
  @override
  _CardMenuManagementState createState() => _CardMenuManagementState();
}

class _CardMenuManagementState extends State<CardMenuManagement>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: getSizeApp(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: AppColors.whiteColor,
              width: getSizeApp(context).width,
              height: 113,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Divider(
                      color: AppColors.dividerColor,
                      height: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Menu Management',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 123,
                              height: 32,
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      AppColors.whiteColor),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Improve Menu',
                                  style:
                                      TextStyle(color: AppColors.purpleColor),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 123,
                              height: 32,
                              child: OutlinedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColors.purpleColor)),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (builder) =>
                                          const DialogAddMenu());
                                },
                                child: Text(
                                  'Create Menu',
                                  style: TextStyle(color: AppColors.whiteColor),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: TabBar(
                          labelColor: AppColors.purpleColor,
                          unselectedLabelColor: AppColors.blackColor,
                          isScrollable: true,
                          labelPadding: EdgeInsets.only(left: 20, right: 20),
                          tabs: [
                            Tab(text: 'Menus'),
                            Tab(text: 'Modifiers'),
                            Tab(text: 'Promo Codes'),
                            Tab(text: 'In-app Promotions'),
                            Tab(text: 'Archive'),
                          ],
                          controller: _tabController,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              child: TabBarView(controller: _tabController, children: [
                ListMenu(),
                Modifers(),
                CodePromo(),
                Promotion(),
                Archive(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
