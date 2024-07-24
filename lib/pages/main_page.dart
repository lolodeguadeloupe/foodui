import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../models/food_category.dart';
import '../models/food_trending.dart';
import '../constants.dart';
import '../widgets/header.dart';
import '../widgets/search.dart';
import '../widgets/card_order.dart';
import '../widgets/category.dart';
import '../widgets/food_trending.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<FoodCategory> foodCategory = [
    FoodCategory(
        foodName: 'Salad',
        imageUrl:
        'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
    FoodCategory(
        foodName: 'Pizza',
        imageUrl:
        'https://images.unsplash.com/photo-1622219773524-eaaa721c760d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
    FoodCategory(
        foodName: 'Cake',
        imageUrl:
        'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80'),
    FoodCategory(
        foodName: 'Burger',
        imageUrl:
        'https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=722&q=80'),
    FoodCategory(
        foodName: 'Drink',
        imageUrl:
        'https://images.unsplash.com/photo-1609951651556-5334e2706168?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')
  ];

  List<FoodTrending> foodTrendings = [
    FoodTrending(
        foodName: 'Food1',
        review: '500 Reviews',
        calories: '100-300 calories',
        price: '\$12',
        imageUrl:
        'https://images.unsplash.com/photo-1455853659719-4b521eebc76d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
    FoodTrending(
        foodName: 'Food2',
        review: '500 Reviews',
        calories: '100-300 calories',
        price: '\$50',
        imageUrl:
        'https://images.unsplash.com/photo-1513456852971-30c0b8199d4d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80'),
    FoodTrending(
        foodName: 'Food3',
        review: '500 Reviews',
        calories: '100-300 calories',
        price: '\$22',
        imageUrl:
        'https://images.unsplash.com/photo-1582993728648-1f29c748e5ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'),
    FoodTrending(
        foodName: 'Food4',
        review: '500 Reviews',
        calories: '100-300 calories',
        price: '\$30',
        imageUrl:
        'https://images.unsplash.com/photo-1574521594448-efc5905a7b8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                const SizedBox(height: 20),
                Search(),
                const SizedBox(height: 20),
                CardOrder(),
                const SizedBox(height: 14),
                Category(foodCategory: foodCategory),
                const SizedBox(height: 14),
                FoodTrendingWidget(foodTrendings: foodTrendings),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _bottomBar(),
    );
  }

  BottomNavigationBar _bottomBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.home,
            size: 28,
          ),
          activeIcon: Icon(
            Iconsax.home5,
            size: 28,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.document,
            size: 28,
          ),
          activeIcon: Icon(
            Iconsax.document5,
            size: 28,
          ),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.chart_2,
            size: 28,
          ),
          activeIcon: Icon(
            Iconsax.chart_215,
            size: 28,
          ),
          label: 'Stats',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.lovely,
            size: 28,
          ),
          activeIcon: Icon(
            Iconsax.lovely5,
            size: 28,
          ),
          label: 'Saved',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.user,
            size: 28,
          ),
          activeIcon: Icon(
            Iconsax.profile_add5,
            size: 28,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: index,
      unselectedItemColor: Colors.grey,
      selectedItemColor: primaryColor,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle:
      GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600),
      selectedLabelStyle:
      GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600),
      onTap: (value) {
        setState(() {
          index = value;
        });
      },
    );
  }
}
