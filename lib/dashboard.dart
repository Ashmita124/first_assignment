import 'package:first_assignment/area%20of%20circle.dart';
import 'package:first_assignment/arithmetic.dart';
import 'package:first_assignment/simple_interest.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: [
          DashboardTile(
            title: 'Arithmetic Operations',
            icon: Icons.calculate,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ArithmeticScreen()),
            ),
          ),
          DashboardTile(
            title: 'Area of Circle',
            icon: Icons.circle,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AreaOfCircleScreen()),
            ),
          ),
          DashboardTile(
            title: 'Simple Interest',
            icon: Icons.monetization_on,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SimpleInterestScreen()),
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const DashboardTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen, // Updated color to light green
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
