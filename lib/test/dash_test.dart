import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            _buildSectionTitle('Reports'),
            _buildReportsSection(),
            SizedBox(height: 24),
            _buildSectionTitle('Orders'),
            _buildOrdersSection(),
            SizedBox(height: 24),
            _buildSectionTitle('Customers'),
            _buildCustomersSection(),
            SizedBox(height: 24),
            _buildSectionTitle('Menu Management'),
            _buildMenuManagementSection(),
            SizedBox(height: 24),
            // Add more sections/widgets as needed
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildReportsSection() {
    // Implement the widget for the Reports section
    // Add charts, statistics, or any other relevant information
    return Container(
      // Customize the container with your design
      height: 200,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Reports',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildOrdersSection() {
    // Implement the widget for the Orders section
    // Display recent orders with their details
    return Container(
      // Customize the container with your design
      height: 200,
      color: Colors.green,
      child: Center(
        child: Text(
          'Orders',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildCustomersSection() {
    // Implement the widget for the Customers section
    // Display customer-related information or statistics
    return Container(
      // Customize the container with your design
      height: 200,
      color: Colors.orange,
      child: Center(
        child: Text(
          'Customers',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildMenuManagementSection() {
    // Implement the widget for the Menu Management section
    // Show options for managing menus, categories, and items
    return Container(
      // Customize the container with your design
      height: 200,
      color: Colors.purple,
      child: Center(
        child: Text(
          'Menu Management',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
