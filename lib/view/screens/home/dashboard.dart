part of '../packages_screens.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

const primaryColor = Color(0xFF6252DA);
const canvasColor = Color(0xFF2E2E48);
const scaffoldBackgroundColor = Color(0xFF7777B6);

class _DashboardPageState extends State<DashboardPage> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Builder(builder: (context) {
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
                      child: Column(children: [
                    const BarWelcomeOffer(),
                    Expanded(
                        child: Center(
                      child: AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          switch (_controller.selectedIndex) {
                            case 0:
                              _key.currentState?.closeDrawer();
                              return const Center(
                                child: Text(
                                  'Dashboard',
                                  style: TextStyle(
                                      color: Colors.orange, fontSize: 40),
                                ),
                              );
                            case 1:
                              _key.currentState?.closeDrawer();
                              return const Center(
                                child: Text(
                                  'Reports',
                                  style: TextStyle(
                                      color: Colors.deepPurple, fontSize: 40),
                                ),
                              );
                            case 2:
                              _key.currentState?.closeDrawer();
                              return const Center(
                                child: Text(
                                  'Recommendations',
                                  style: TextStyle(
                                      color: Colors.pink, fontSize: 40),
                                ),
                              );
                            case 3:
                              _key.currentState?.closeDrawer();
                              return Center(
                                child: Text(
                                  'Orders',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 40),
                                ),
                              );
                            default:
                              return Center(
                                child: Text(
                                  '',
                                  style: TextStyle(
                                      color: Colors.orange, fontSize: 40),
                                ),
                              );
                          }
                        },
                      ),
                    ))
                  ])),
                ],
              ),
            ));
      }),
    );
  }
}
