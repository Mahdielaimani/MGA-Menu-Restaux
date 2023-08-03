part of '../../../../packages/packages.dart';

class VenueSeetingsScreen extends StatefulWidget {
  const VenueSeetingsScreen({super.key});

  @override
  State<VenueSeetingsScreen> createState() => _VenueSeetingsScreenState();
}

class _VenueSeetingsScreenState extends State<VenueSeetingsScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final _controller = SidebarXController(selectedIndex: 8, extended: true);

  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
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
                    children: const [
                      AppBarWelcome(),
                      TopCardIcons(),
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
