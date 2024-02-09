import 'package:flutter/material.dart';
import '../componants/navBar.dart';
import '../config/css/config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPageIndex = 0;

  void _onNavigationItemSelected(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfig.whiteColor,
      appBar: AppBar(
        title: const [
          Text("Accueil"),
          Text("Service du parc"),
          Text("Les habitats"),
          Text("Connexion"),
          Text("Contact"),
        ][_currentPageIndex],
        backgroundColor: AppConfig.primaryColor,
        titleTextStyle: const TextStyle(
            color: AppConfig.whiteColor,
            fontSize: 20,
            fontFamily: AppConfig.fontFamily),
        toolbarTextStyle: const TextStyle(fontFamily: AppConfig.fontFamily),
      ),
      body: Center(
        child: Text('Page $_currentPageIndex'),
      ),
      bottomNavigationBar: NavigationBarApp(
        selectedIndex: _currentPageIndex,
        onNavigationItemSelected: _onNavigationItemSelected,
      ),
    );
  }
}
