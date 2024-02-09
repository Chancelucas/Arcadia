import 'package:flutter/material.dart';
import '../config/css/config.dart';

typedef NavigationCallback = void Function(int);

class NavigationBarApp extends StatefulWidget {
  final int selectedIndex;
  final NavigationCallback onNavigationItemSelected;

  const NavigationBarApp({
    Key? key,
    required this.selectedIndex,
    required this.onNavigationItemSelected,
  }) : super(key: key);

  @override
  _NavigationBarAppState createState() => _NavigationBarAppState();
}

class _NavigationBarAppState extends State<NavigationBarApp> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppConfig.primaryColor,

      type: BottomNavigationBarType.fixed,
      currentIndex: widget.selectedIndex,
      selectedItemColor: AppConfig.secondColor,
      unselectedItemColor: AppConfig.whiteColor,
      showSelectedLabels:
          false, // Désactiver l'affichage des étiquettes sélectionnées
      showUnselectedLabels:
          false, // Désactiver l'affichage des étiquettes non sélectionnées
      onTap: widget.onNavigationItemSelected,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.construction_sharp),
          label: 'Services',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.area_chart),
          label: 'Habitats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_rounded),
          label: 'Connexion',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble),
          label: 'Contact',
        ),
      ],
    );
  }
}
