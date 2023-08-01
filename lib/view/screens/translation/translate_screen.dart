part of '../packages_screens.dart';

class TranslationScreen extends StatefulWidget {
  const TranslationScreen({super.key});

  @override
  State<TranslationScreen> createState() => _TranslationScreenState();
}

class _TranslationScreenState extends State<TranslationScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final _controller = SidebarXController(selectedIndex: 7, extended: true);

  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Ink(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: AppColors.whiteColor,
          child: Row(
            children: [
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
                  color: AppColors.wbackColor,
                  child: ListView(
                    children: [
                      const AppBarWelcome(),
                      TopCardIcons(),
                      ResponsiveVisibility(
                          visible: true,
                          hiddenWhen: isMobileTablet,
                          child: CardTranslation()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.solidCommentDots,
          color: AppColors.whiteColor,
        ),
      ),
    ));
  }
}
