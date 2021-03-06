
import 'package:flutter/material.dart';
import 'package:udemy_flutter/modules/cart/cart_screen.dart';
import 'package:udemy_flutter/modules/messenger/massenger_screen.dart';
import 'package:udemy_flutter/modules/more/more_screen.dart';
import 'package:udemy_flutter/modules/profile/profileShop_screen.dart';
import 'package:udemy_flutter/modules/search/search_screen.dart';
import 'package:udemy_flutter/modules/shops/shops_screen.dart';

class ShopLayout extends StatefulWidget {
  const ShopLayout({Key? key}) : super(key: key);

  @override
  State<ShopLayout> createState() => _ShopLayoutState();
}

class _ShopLayoutState extends State<ShopLayout> {
  int currentIndex=1;
  List<Widget> screens = [

    MassengerScreen(),
    ProfileShoScreen(),
    CartScreen(),
    SearchScreen(),
    MoreScreen(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child:
        Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.red,
        // elevation: 1.00,
        currentIndex: currentIndex,
        onTap:(index){
          setState(() {
            currentIndex=index;
          });

        },
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.store_mall_directory_outlined),
            label: "الرئيسية"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.announcement_outlined),
              label: "عن المتجر"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.shopping_basket_sharp),
              label: "السلة"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.search),
              label: "بحث"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.more_horiz_outlined),
              label: "أكثر"
          ),


        ],
      ),
    );
  }
}
