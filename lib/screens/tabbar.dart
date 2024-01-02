import 'package:flutter/material.dart';
import 'package:tooma_app/image_loader.dart';
import 'package:tooma_app/screens/cart.dart';
import 'package:tooma_app/screens/home.dart';
import 'package:tooma_app/screens/orders.dart';
import 'package:tooma_app/screens/profile_screen.dart';
import 'package:tooma_app/size_config.dart';

class TabbarItem {
  final String lightIcon;
  final String boldIcon;
  final String label;

  TabbarItem({required this.lightIcon, required this.boldIcon, required this.label});
  static String route() => '/tabbar';

  BottomNavigationBarItem item(bool isbold) {
    return BottomNavigationBarItem(
      icon: ImageLoader.imageAsset(isbold ? boldIcon : lightIcon),
      label: label,
    );
  }

  BottomNavigationBarItem get light => item(false);
  BottomNavigationBarItem get bold => item(true);
}

class TMTabbarScreen extends StatefulWidget {
  const TMTabbarScreen({super.key});
  static String route() => '/tabbar';

  @override
  State<TMTabbarScreen> createState() => _TMTabbarScreenState();
}

class _TMTabbarScreenState extends State<TMTabbarScreen> {
  int _select = 0;

  final screens = [
    const HomeScreen(title: 'Home'),
    const CartScreen(title: 'Cart'),
    const OrdersScreen(title: 'Orders'),
    // const TestScreen(title: 'Wallet'),
    const ProfileScreen(),
  ];

  static Image generateIcon(String path) {
    return Image.asset(
      '${ImageLoader.rootPaht}/tabbar/$path',
      width: 24,
      height: 24,
    );
  }

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: generateIcon('light/Home@2x.png'),
      activeIcon: generateIcon('bold/Home@2x.png'),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: generateIcon('light/Bag@2x.png'),
      activeIcon: generateIcon('bold/Bag@2x.png'),
      label: 'Cart',
    ),
    BottomNavigationBarItem(
      icon: generateIcon('light/Buy@2x.png'),
      activeIcon: generateIcon('bold/Buy@2x.png'),
      label: 'Orders',
    ),
    // BottomNavigationBarItem(
    //   icon: generateIcon('light/Wallet@2x.png'),
    //   activeIcon: generateIcon('bold/Wallet@2x.png'),
    //   label: 'Wallet',
    // ),
    BottomNavigationBarItem(
      icon: generateIcon('light/Profile@2x.png'),
      activeIcon: generateIcon('bold/Profile@2x.png'),
      label: 'Profile',
    ),
  ];

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: screens[_select],
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        onTap: ((value) => setState(() => _select = value)),
        currentIndex: _select,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 10,
        ),
        selectedItemColor: const Color(0xFF212121),
        unselectedItemColor: const Color(0xFF9E9E9E),
      ),
    );
  }
}
