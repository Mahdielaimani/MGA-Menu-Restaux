part of '../../../packages/packages.dart';

class SideMenuBar extends StatelessWidget {
  const SideMenuBar(
      {Key? key,
      required SidebarXController controller,
      required this.onChange})
      : controller = controller,
        super(key: key);

  final SidebarXController controller;
  final Function(int) onChange;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: controller,
      headerBuilder: (_, isCollapsed) {
        return Ink(
          color: AppColors.kgreyColor,
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: DropdownButton(
            underline: const SizedBox(),
            icon: isCollapsed
                ? const Icon(
                    FontAwesomeIcons.chevronDown,
                    size: 11,
                  )
                : const SizedBox(),
            hint: Row(
              mainAxisAlignment: isCollapsed
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 13,
                  // backgroundImage: NetworkImage(''),
                ),
                if (isCollapsed) const SizedBox(width: 10),
                if (isCollapsed)
                  Flexible(
                    child: Text(
                      'MGA',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
              ],
            ),
            borderRadius: BorderRadius.zero,
            isExpanded: true,
            onChanged: (value) {},
            items: [],
          ),
        );
      },
      theme: const SidebarXTheme(
        margin: EdgeInsets.zero,
        decoration: const BoxDecoration(
          color: AppColors.kwhiteColor,
        ),
        textStyle: const TextStyle(color: AppColors.kblackColor),
        selectedTextStyle: TextStyle(color: AppColors.kPurpleColor),
        itemTextPadding: const EdgeInsets.only(left: 10),
        selectedItemTextPadding: const EdgeInsets.only(left: 10),
        itemMargin: EdgeInsets.zero,
        selectedItemMargin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        itemPadding: const EdgeInsets.symmetric(
          vertical: 13,
          horizontal: 10,
        ),
        selectedItemPadding: const EdgeInsets.symmetric(
          vertical: 13,
          horizontal: 10,
        ),
        itemDecoration: const BoxDecoration(),
        selectedItemDecoration: BoxDecoration(
          border: const Border(
            right: BorderSide(
              color: AppColors.kgreyColors,
              width: 3,
            ),
          ),
        ),
        iconTheme: const IconThemeData(
          color: AppColors.kblackColor,
          size: 18,
        ),
        selectedIconTheme: const IconThemeData(
          color: AppColors.kPurpleColor,
          size: 18,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        // hoverColor: Colors.grey,
        width: 200,
        decoration: BoxDecoration(),
      ),
      items: [
        SidebarXItem(
            icon: Icons.speed,
            label: 'Dashboard',
            onTap: () {
              router.pushNamed('dashboardScreen');
            }),
        SidebarXItem(
            icon: Icons.chat_sharp,
            label: 'Reports',
            onTap: () {
              router.pushNamed('reportsScreen');
            }),
        SidebarXItem(
            icon: Icons.blur_linear_outlined,
            label: 'Recommendations',
            onTap: () {
              router.pushNamed('recommendsScreen');
            }),
        SidebarXItem(
            icon: Icons.fastfood,
            label: 'Orders',
            onTap: () {
              router.pushNamed('ordersScreen');
            }),
        SidebarXItem(
            icon: Icons.supervisor_account,
            label: 'Customers',
            onTap: () {
              router.pushNamed('customersScreen');
            }),
        SidebarXItem(
            icon: Icons.restaurant,
            label: 'Menu Management',
            onTap: () {
              router.pushNamed('menuScreen');
            }),
        SidebarXItem(
            icon: Icons.feedback_outlined,
            label: 'Feedbacks',
            onTap: () {
              router.pushNamed('feedbacksScreen');
            }),
        SidebarXItem(
            icon: Icons.translate,
            label: 'Translation Center',
            onTap: () {
              router.pushNamed('translationScreen');
            }),
        SidebarXItem(
            icon: Icons.settings,
            label: 'Venue Settings',
            onTap: () {
              router.pushNamed('venuesettingsScreen');
            }),
        SidebarXItem(
            icon: Icons.integration_instructions,
            label: 'Integrations',
            onTap: () {
              router.pushNamed('paymentSystemScreen');
            }),
      ],
    );
  }
}
