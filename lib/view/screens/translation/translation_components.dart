part of '../../../../packages/packages.dart';

class CardTranslation extends StatefulWidget {
  const CardTranslation({super.key});

  @override
  State<CardTranslation> createState() => _CardTranslationState();
}

class _CardTranslationState extends State<CardTranslation>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      color: AppColors.kdividerColor,
                      height: 1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: const Text(
                        'Translation Center',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Align(
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
                          Tab(text: 'Surveys'),
                          Tab(text: 'Others'),
                        ],
                        controller: _tabController,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              child: TabBarView(controller: _tabController, children: const [
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

//translationCenter

class TranslationCenter extends StatelessWidget {
  const TranslationCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        width: context.width,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        margin: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.knoteColor,
          border: Border.all(color: AppColors.kPurpleColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Wrap(
          children: [
            const Icon(
              FontAwesomeIcons.circleExclamation,
              color: AppColors.kPurpleColor,
              size: 16,
            ),
            const SizedBox(width: 10),
            const Text(
              'You can translate your menu in multiple languages with ',
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                "Translation Center.",
                style: TextStyle(
                  color: AppColors.kPurpleColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
