import 'package:ionicons/ionicons.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:travy/src/common.dart';
import 'package:travy/src/pages/home_page.dart';

class MainNav extends StatelessWidget {
  const MainNav({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _getScreens,
      items: _getItems,
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
      ),
    );
  }

  List<PersistentBottomNavBarItem> get _getItems {
    return [
      _buildItem(
        icon: const Icon(Ionicons.home_outline),
        text: 'Home',
      ),
      _buildItem(
        icon: const Icon(Ionicons.heart_outline),
        text: 'Favorid',
      ),
      _buildItem(
        icon: const Icon(Ionicons.compass_outline),
        text: 'Destinations',
      ),
      _buildItem(
        icon: const Icon(Ionicons.settings_outline),
        text: 'Settings',
      ),
    ];
  }

  List<Widget> get _getScreens {
    return const [
      HomePage(),
      Scaffold(),
      Scaffold(),
      Scaffold(),
    ];
  }

  PersistentBottomNavBarItem _buildItem({
    required Widget icon,
    required String text,
  }) {
    return PersistentBottomNavBarItem(
      icon: icon,
      title: text,
      inactiveColorPrimary: Colors.grey.shade500,
    );
  }
}
