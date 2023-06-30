part of '../packages_screens.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

const primaryColor = Color(0xFF6252DA);
const canvasColor = Color(0xFF2E2E48);
const scaffoldBackgroundColor = Color(0xFF7777B6);

class _DashboardPageState extends State<DashboardPage> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Builder(
        builder: (context) {
          final isSmallScreen = MediaQuery.of(context).size.width < 600;

          return Scaffold(
            drawer: SideMenuBar(
              controller: _controller,
            ),
            body: Ink(
              width: getSizeApp(context).width,
              height: getSizeApp(context).height,
              color: Colors.white,
              child: Row(
                children: [
                  if (!isSmallScreen) SideMenuBar(controller: _controller),
                  Expanded(
                    child: Column(
                      children: [
                        const AppBarWelcome(),
                        CardWidget(),
                        OverviewCardsScreen(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                FontAwesomeIcons.solidCommentDots,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
