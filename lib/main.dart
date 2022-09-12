import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/details_screen.dart';

import 'category_list.dart';
import 'food_card.dart';
import 'search_box.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: kWhiteColor,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(0.3),
        ),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColor,
            ),
            child: SvgPicture.asset('assets/icons/plus.svg'),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: IconButton(
                  icon: SvgPicture.asset('assets/icons/menu.svg'),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Simple way to find\nTasty food',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ListOfCategories(),
            SizedBox(height: 20),
            SearchBox(size: size),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FoodCard(
                    image: 'assets/images/image_1.png',
                    price: 20,
                    title: 'Vegan salad bowl',
                    ingredient: 'with red tomato',
                    description:
                        'Contrary to popular belief, lorem Ipsum is not simply random text. it has',
                    calorie: 420,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return DetailsScreen();
                          },
                        ),
                      );
                    },
                  ),
                  FoodCard(
                    image: 'assets/images/image_2.png',
                    price: 20,
                    title: 'Vegan salad bowl',
                    ingredient: 'with red tomato',
                    description:
                        'Contrary to popular belief, lorem Ipsum is not simply random text. it has',
                    calorie: 420,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
