part of 'pack_components.dart';

class CardMenuManagement extends StatefulWidget {
  @override
  _CardMenuManagementState createState() => _CardMenuManagementState();
}

class _CardMenuManagementState extends State<CardMenuManagement>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 5, vsync: this); // Number of tabs, in your case 5 sections
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Widget> cards = [TranslationCenter()];

  void showCreateMenuDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DialogMenu();
      },
    );
  }

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
              color: Colors.white,
              width: getSizeApp(context).width,
              height: 113,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Divider(
                      color: const Color.fromARGB(255, 231, 224, 224),
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
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                ),
                                onPressed: () {
                                  // showCreateMenuDialog(context);
                                },
                                child: Text(
                                  'Improve Menu',
                                  style: TextStyle(color: Colors.deepPurple),
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
                                        Colors.deepPurple)),
                                onPressed: () {
                                  showCreateMenuDialog(context);
                                  setState(() {
                                    cards.add(MenuItem());
                                  });
                                },
                                child: Text(
                                  'Create Menu',
                                  style: TextStyle(color: Colors.white),
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
                            Tab(text: 'Archive'),
                            Tab(text: 'Promo Codes'),
                            Tab(text: 'In-app Promotions'),
                          ],
                          controller: _tabController,
                        ),
                      ),
                    ),
                    Container(
                      height: 500,
                      child: TabBarView(controller: _tabController, children: [
                        ListMenuItem(),
                        Modifers(),
                        Archive(),
                        CodePromo(),
                        Promotion(),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: cards,
                // Render the list of cards
              ),
            ),
          ],
        ),
      ),
    );
  }
}
