part of '../../../../packages/packages.dart';

class CardCustomers extends StatefulWidget {
  const CardCustomers({super.key});

  @override
  State<CardCustomers> createState() => _CardCustomersState();
}

class _CardCustomersState extends State<CardCustomers> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: AppColors.kwhiteColor,
            width: context.width,
            height: 113,
            child: const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: AppColors.kdividerColor,
                    height: 1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Customers',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//dineConfig

class DineConfig extends StatefulWidget {
  const DineConfig({super.key});

  @override
  State<DineConfig> createState() => _DineConfigState();
}

class _DineConfigState extends State<DineConfig> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Ink(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: AppColors.knoteColor,
          // color: Color.fromARGB(255, 236, 228, 228).withOpacity(.3),
          border: Border.all(color: AppColors.kPurpleColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Wrap(
                children: [
                  const SizedBox(width: 10),
                  const Icon(
                    FontAwesomeIcons.circleExclamation,
                    color: AppColors.kPurpleColor,
                    size: 16,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Enable Customer Form Options in',
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      " Dine-In Configurations ",
                      style: TextStyle(
                        color: AppColors.kPurpleColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const Text(
                    " to keep your customers’ information.",
                    style: TextStyle(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
