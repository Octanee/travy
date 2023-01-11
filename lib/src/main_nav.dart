import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travy/src/common.dart';
import 'package:travy/src/pages/home_page.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          HomePage(),
          Scaffold(),
          Scaffold(),
          Scaffold(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) => setState(() => currentIndex = index),
        index: currentIndex,
        animationDuration: const Duration(milliseconds: 300),
        items: [
          _buildItem(
            index: 0,
            icon: Ionicons.home_outline,
            activeIcon: Ionicons.home,
          ),
          _buildItem(
            index: 1,
            icon: Ionicons.heart_outline,
            activeIcon: Ionicons.heart,
          ),
          _buildItem(
            index: 2,
            icon: Ionicons.compass_outline,
            activeIcon: Ionicons.compass,
          ),
          _buildItem(
            index: 3,
            icon: Ionicons.settings_outline,
            activeIcon: Ionicons.settings,
          ),
        ],
      ),
    );
  }

  Widget _buildItem({
    required int index,
    required IconData icon,
    required IconData activeIcon,
  }) {
    return currentIndex == index
        ? Icon(
            activeIcon,
            color: Colors.blue,
          )
        : Icon(icon);
  }
}
