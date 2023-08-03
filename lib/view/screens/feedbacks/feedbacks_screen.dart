part of '../../../../packages/packages.dart';

class FeedbacksScreen extends StatefulWidget {
  const FeedbacksScreen({super.key});

  @override
  State<FeedbacksScreen> createState() => _FeedbacksScreenState();
}

class _FeedbacksScreenState extends State<FeedbacksScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final _controller = SidebarXController(selectedIndex: 6, extended: true);

  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Ink(
          width: context.width,
          height: context.height,
          child: Row(children: [
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
              child: Column(
                children: [
                  AppBarWelcome(),
                  TopCardIcons(),

                  CardFeedbacks(),

                  //let's set the filter section

                  //Now let's add the Table
                ],
              ),
            )),
          ]),
        ),
      ),
    );
  }
}
