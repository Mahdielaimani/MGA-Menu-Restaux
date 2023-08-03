part of '../../../../packages/packages.dart';

class CardRecomendation extends StatefulWidget {
  const CardRecomendation({super.key});

  @override
  State<CardRecomendation> createState() => _CardRecomendationState();
}

class _CardRecomendationState extends State<CardRecomendation>
    with TickerProviderStateMixin {
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
                    Divider(
                      color: AppColors.kdividerColor,
                      height: 1,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Recommendations',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
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
                          unselectedLabelColor: AppColors.kblackColor,
                          isScrollable: true,
                          labelPadding: EdgeInsets.only(left: 20, right: 20),
                          tabs: [
                            Tab(text: 'Overview'),
                            Tab(text: 'Recommended Items'),
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
              height: 450,
              child: TabBarView(controller: _tabController, children: [
                Lottie.asset(
                  'assets/lottie/homeview.json',
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('No Data', style: TextStyle(fontSize: 22)),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
