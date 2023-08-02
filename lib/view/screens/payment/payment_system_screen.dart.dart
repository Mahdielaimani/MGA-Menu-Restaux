import 'package:flutter/material.dart';
import 'package:menu_restaux/view/screens/payment/components/payment_class.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../../core/constant/colors.dart';
import '../../../core/ui/responsive_condition.dart';
import '../../widgets/widgets.dart';
import '../../widgets/topcards_icons.dart';
import 'components/card_payment.dart';

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
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
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
                color: AppColors.wbackColor,
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
