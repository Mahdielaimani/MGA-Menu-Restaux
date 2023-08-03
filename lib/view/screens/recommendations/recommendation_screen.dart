part of '../../../../packages/packages.dart';

class RecommendScreen extends StatefulWidget {
  const RecommendScreen({super.key});

  @override
  State<RecommendScreen> createState() => _RecommendScreenState();
}

class _RecommendScreenState extends State<RecommendScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final _controller = SidebarXController(selectedIndex: 2, extended: true);

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
                  color: AppColors.kwbackColor,
                  child: ListView(
                    children: [
                      const AppBarWelcome(),
                      TopCardIcons(),
                      ResponsiveVisibility(
                          visible: true,
                          hiddenWhen: isMobileTablet,
                          child: CardRecomendation()),
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
          color: AppColors.kwhiteColor,
        ),
      ),
    ));
  }
}
