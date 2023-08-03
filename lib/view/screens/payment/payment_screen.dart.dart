part of '../../../../packages/packages.dart';

class PaymentSystem extends StatefulWidget {
  const PaymentSystem({Key? key}) : super(key: key);

  @override
  _PaymentSystemState createState() => _PaymentSystemState();
}

class _PaymentSystemState extends State<PaymentSystem>
    with SingleTickerProviderStateMixin {
  final _controller = SidebarXController(selectedIndex: 9, extended: true);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Ink(
            width: context.width,
            height: context.height,
            child: Flex(direction: Axis.horizontal, children: [
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

                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemCount: paymentSystems.length,
                        itemBuilder: (context, index) {
                          return Container(
                              child: PaymentSystemCard(
                                  paymentSystem: paymentSystems[index]));
                        },
                      ),
                    ),

                    //let's set the filter section

                    //Now let's add the Table
                  ],
                ),
              )),
            ]),
          ),
        ),
      ),
    );
  }
}
