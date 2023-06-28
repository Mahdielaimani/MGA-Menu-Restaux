import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

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
      // headerBuilder: (context, extended) {
      //   return const SizedBox(
      //     height: 100,
      //     child: Icon(
      //       Icons.person,
      //       size: 60,
      //       color: Colors.black,
      //     ),
      //   );
      // },
      items: const [
        SidebarXItem(
          icon: Icons.home,
          label: 'Dashboard',
        ),
        SidebarXItem(icon: Icons.search, label: 'Reports'),
        SidebarXItem(icon: Icons.settings, label: 'Recommendations'),
        SidebarXItem(icon: Icons.dark_mode, label: 'Orders'),
        SidebarXItem(icon: Icons.search, label: 'Customers'),
        SidebarXItem(icon: Icons.settings, label: 'Menu Management'),
        SidebarXItem(icon: Icons.dark_mode, label: 'Feedbacks'),
        SidebarXItem(
          icon: Icons.home,
          label: 'Translation Center',
        ),
        SidebarXItem(icon: Icons.search, label: 'Venue Settings'),
        SidebarXItem(icon: Icons.settings, label: 'Integrations'),
        SidebarXItem(icon: Icons.dark_mode, label: 'Dine-In QR Menu'),
        SidebarXItem(icon: Icons.dark_mode, label: 'Delivery / Pick Up'),
        SidebarXItem(icon: Icons.dark_mode, label: 'Tablet Menu'),
      ],
    );
  }
}
