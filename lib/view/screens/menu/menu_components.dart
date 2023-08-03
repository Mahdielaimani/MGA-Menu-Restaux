part of '../../../../packages/packages.dart';

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
              color: AppColors.kwhiteColor,
              width: context.width,
              height: 113,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Divider(
                      color: AppColors.kdividerColor,
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
                                      AppColors.kwhiteColor),
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
                                  style:
                                      TextStyle(color: AppColors.kwhiteColor),
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
                          unselectedLabelColor: AppColors.kblackColor,
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
            SizedBox(
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

//CardScratch

class CardScratch extends StatelessWidget {
  const CardScratch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Divider(
          color: const Color.fromARGB(255, 231, 224, 224),
          height: 1,
        ),
        Container(
          color: Colors.white,
          width: context.width,
          height: 72,
          child:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 20,
            ),
            Text(
              'Menu',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20),
            ),
            Spacer(
              flex: 2,
            ),
            Icon(Icons.menu_book_outlined),
            SizedBox(
              width: 7,
            ),
            Text(
              'Leran More',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              width: 20,
            ),
          ]),
        ),
      ],
    );
  }
}

//UpgradeCenter

class UpgradeCenter extends StatelessWidget {
  const UpgradeCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(330, 0, 330, 0),
      child: Expanded(
        child: Ink(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: AppColors.knoteColor,
            // color: Color.fromARGB(255, 236, 228, 228).withOpacity(.3),
            border: Border.all(color: AppColors.kPurpleColor, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Wrap(
                children: [
                  const SizedBox(width: 10),
                  const Icon(
                    FontAwesomeIcons.circleExclamation,
                    color: AppColors.kPurpleColor,
                    size: 16,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'You can only have 80 items with trial plan. ',
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Upgrade",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const Text(
                    " for more.",
                    style: TextStyle(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "10 items left",
                    style: TextStyle(
                      color: AppColors.kPurpleColor,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
