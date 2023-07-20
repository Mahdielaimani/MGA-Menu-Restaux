part of '../../packages_screens.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

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
                  child: SideMenuBar(controller: _controller)),
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
                          child: CardMenuManagement()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
