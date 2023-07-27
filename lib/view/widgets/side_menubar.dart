part of 'pack_widgets.dart';

class SideMenuBar extends StatelessWidget {
  const SideMenuBar({Key? key, required SidebarXController controller})
      : controller = controller,
        super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: controller,
      headerBuilder: (_, isCollapsed) {
        return Ink(
          color: AppColors.greyColor,
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
          color: AppColors.whiteColor,
        ),
        textStyle: const TextStyle(color: AppColors.blackColor),
        selectedTextStyle: const TextStyle(color: AppColors.purpleColor),
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
              color: AppColors.greyColors,
              width: 3,
            ),
          ),
        ),
        iconTheme: const IconThemeData(
          color: AppColors.blackColor,
          size: 18,
        ),
        selectedIconTheme: const IconThemeData(
          color: AppColors.purpleColor,
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
        ),
        SidebarXItem(
            icon: Icons.chat_sharp,
            label: 'Reports',
            onTap: () {
              router.pushNamed('reportsscreen');
            }),
        SidebarXItem(
            icon: Icons.blur_linear_outlined,
            label: 'Recommendations',
            onTap: () {
              router.pushNamed('recommendsscreen');
            }),
        SidebarXItem(
            icon: Icons.fastfood,
            label: 'Orders',
            onTap: () {
              router.pushNamed('ordersscreen');
            }),
        SidebarXItem(
            icon: Icons.supervisor_account,
            label: 'Customers',
            onTap: () {
              router.pushNamed('customersscreen');
            }),
        SidebarXItem(
            icon: Icons.restaurant,
            label: 'Menu Management',
            onTap: () {
              router.pushNamed('menuscreen');
            }),
        SidebarXItem(icon: Icons.feedback_outlined, label: 'Feedbacks'),
        SidebarXItem(
          icon: Icons.translate,
          label: 'Translation Center',
        ),
        SidebarXItem(icon: Icons.settings, label: 'Venue Settings'),
        SidebarXItem(
            icon: Icons.integration_instructions, label: 'Integrations'),
        SidebarXItem(icon: Icons.qr_code, label: 'Dine-In QR Menu'),
        SidebarXItem(
            icon: Icons.delivery_dining_outlined, label: 'Delivery / Pick Up'),
        SidebarXItem(icon: Icons.menu, label: 'Tablet Menu'),
      ],
    );
  }
}
