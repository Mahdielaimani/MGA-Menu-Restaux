part of '../packages_screens.dart';

class OrdersScreen extends StatefulWidget {
  OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => OrdersScreenState();
}

class OrdersScreenState extends State<OrdersScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final _controller = SidebarXController(selectedIndex: 3, extended: true);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Ink(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
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
              color: AppColors.wbackColor,
              child: Column(
                children: [
                  AppBarWelcome(),
                  TopCardIcons(),

                  CardOrders(),

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
