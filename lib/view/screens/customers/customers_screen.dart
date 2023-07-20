part of '../packages_screens.dart';

class CustomersScreen extends StatefulWidget {
  @override
  _CustomersScreenState createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersScreen> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Ink(
          width: getSizeApp(context).width,
          height: getSizeApp(context).height,
          child: Row(
            children: [
              ResponsiveVisibility(
                  visible: true,
                  hiddenWhen: isMobileTablet,
                  child: SideMenuBar(controller: _controller)),
              Expanded(
                child: Ink(
                  color: AppColors.wbackColor,
                  child: Column(
                    children: [
                      AppBarWelcome(),
                      TopCardIcons(),
                      SizedBox(
                        height: 20,
                      ),
                      ResponsiveVisibility(
                          visible: true,
                          hiddenWhen: isMobileTablet,
                          child: DineConfig()),
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: Container(
                            color: AppColors.whiteColor,
                            width: MediaQuery.of(context).size.width,
                            height: 200, // Set width to screen width
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Customer Tags',
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Tags',
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Email',
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Phone',
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Total Orders',
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Last Visit ',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
