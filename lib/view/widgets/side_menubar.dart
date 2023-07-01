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
      theme: const SidebarXTheme(
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 228, 218, 255),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        selectedTextStyle: const TextStyle(color: Colors.white),
      ),
      extendedTheme: const SidebarXTheme(width: 250),
      footerDivider: Divider(color: Colors.white.withOpacity(0.8), height: 1),
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
