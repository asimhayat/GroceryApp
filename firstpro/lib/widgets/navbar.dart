// import 'package:firstpro/screens/cart_screen.dart';
import 'package:firstpro/data/categories_details.dart';
import 'package:firstpro/screens/cart_screen.dart';
import 'package:firstpro/screens/home_screen.dart';
import 'package:firstpro/screens/categories_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _HomePageState();
}

class _HomePageState extends State<NavBar> {
  int currentIndexValue = 0;
  List ScreenList = [
    const HomeScreen(),
    const CategoriesScreen(),
    CartScreen(
      items: cartItems,
    ),
    const CategoriesScreen(),
    const CategoriesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Color(0xFF53B175),
          onTap: (index) {
            setState(() {
              currentIndexValue = index;
            });
          },
          currentIndex: currentIndexValue,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.store_mall_directory_outlined), label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(Icons.manage_search), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Account"),
          ],
        ),
        body: ScreenList[currentIndexValue]);
  }
}
