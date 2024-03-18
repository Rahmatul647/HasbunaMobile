import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final int _SelectedIndex = 0;

  final List<Widget> _pages = [
    const Center(
      child: Text('Home'),
    ),
    const Center(
      child: Text('Notif'),
    ),
    const Center(
      child: Text('Order'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.notification_add), label: 'Notif'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Order')
      ]),
    );
  }
}
