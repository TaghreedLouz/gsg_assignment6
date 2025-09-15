import 'package:flutter/material.dart';
import 'package:gsg_assignment6/routes.dart';
import 'package:gsg_assignment6/screens/products_screen.dart';
import 'package:gsg_assignment6/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [HomeScreen(), ProductsScreen(), Text("Settings")];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text("Login"),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.login),
            ),
            ListTile(
              title: Text("Signup"),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.signup),
            ),
          ],
        ),
      ),
      appBar: index == 0
          ? null
          : AppBar(
              title: Text("My First App"),
              centerTitle: true,
              backgroundColor: Colors.amber,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.shopping_cart),
                ),
              ],
            ),
      body: Center(child: screens[index]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),

            label: "Home",
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: "settings",
          ),
        ],
      ),
    );
  }
}
