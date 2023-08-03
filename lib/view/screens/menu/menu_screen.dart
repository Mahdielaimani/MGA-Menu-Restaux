part of '../../../../packages/packages.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final _controller = SidebarXController(selectedIndex: 5, extended: true);

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
                      onChange: (int page) {
                        _controller.selectIndex(page);
                        setState(() {});
                      },
                      controller: _controller)),
              Expanded(
                child: Ink(
                  color: AppColors.kwbackColor,
                  child: ListView(
                    children: const [
                      AppBarWelcome(),
                      TopCardIcons(),
                      ResponsiveVisibility(
                          visible: true,
                          hiddenWhen: isMobileTablet,
                          child: CardMenuManagement()),
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
