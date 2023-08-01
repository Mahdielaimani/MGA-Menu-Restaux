import 'package:flutter/material.dart';

import '../../../../helpers/appcolors.dart';
import '../../menu/pages/pack_pages.dart';

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
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: AppColors.whiteColor,
              width: MediaQuery.sizeOf(context).width,
              height: 113,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      color: AppColors.dividerColor,
                      height: 1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
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
                        labelColor: AppColors.purpleColor,
                        unselectedLabelColor: AppColors.blackColor,
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
              child: TabBarView(controller: _tabController, children: [
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
