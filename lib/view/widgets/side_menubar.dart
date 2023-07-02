part of 'pack_widgets.dart';

class SideMenuBar extends StatelessWidget {
  const SideMenuBar({Key? key, required SidebarXController controller})
      : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      // headerBuilder: (context, extended) => Icon(Icons.person_add_alt_1_outlined),

      theme: const SidebarXTheme(
        margin: EdgeInsets.zero,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        textStyle: const TextStyle(color: Colors.black),
        selectedTextStyle: const TextStyle(color: Colors.deepPurple),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
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
              color: Colors.grey,
              width: 3,
            ),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 18,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.deepPurple,
          size: 18,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        hoverColor: Colors.deepPurple,
        width: 200,
        decoration: BoxDecoration(),
      ),
      items: const [
        SidebarXItem(
          icon: Icons.speed,
          label: 'Dashboard',
        ),
        SidebarXItem(icon: Icons.chat_sharp, label: 'Reports'),
        SidebarXItem(icon: Icons.table_chart, label: 'Recommendations'),
        SidebarXItem(icon: Icons.fastfood, label: 'Orders'),
        SidebarXItem(icon: Icons.supervisor_account, label: 'Customers'),
        SidebarXItem(icon: Icons.restaurant, label: 'Menu Management'),
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
