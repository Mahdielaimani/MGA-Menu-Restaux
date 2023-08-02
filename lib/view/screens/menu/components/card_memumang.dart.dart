part of 'pack_components.dart';

class CardMenuManagement extends StatefulWidget {
  const CardMenuManagement({super.key});
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
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: context.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: AppColors.whiteColor,
              width: MediaQuery.sizeOf(context).width,
              height: 113,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Divider(
                      color: AppColors.dividerColor,
                      height: 1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'Menu Management',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 123,
                              height: 32,
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      AppColors.whiteColor),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Improve Menu',
                                  style:
                                      TextStyle(color: AppColors.kPurpleColor),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 123,
                              height: 32,
                              child: OutlinedButton(
                                style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColors.kPurpleColor)),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (builder) =>
                                          const CreateMenuContainer());
                                },
                                child: const Text(
                                  'Create Menu',
                                  style: TextStyle(color: AppColors.whiteColor),
                                ),
                              ),
                            ),
                            const SizedBox(
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
                          labelColor: AppColors.kPurpleColor,
                          unselectedLabelColor: AppColors.blackColor,
                          isScrollable: true,
                          labelPadding:
                              const EdgeInsets.only(left: 20, right: 20),
                          tabs: const [
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
