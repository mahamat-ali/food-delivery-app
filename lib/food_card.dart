import 'package:flutter/material.dart';

import 'constants.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key key,
    this.image,
    this.price,
    this.title,
    this.ingredient,
    this.description,
    this.calorie,
    this.press,
  }) : super(key: key);

  final String image;
  final double price;
  final String title;
  final String ingredient;
  final String description;
  final double calorie;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        height: size.height * 0.50,
        width: size.width * .7,
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                height: size.height * 0.40,
                width: size.width * 0.6,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.20),
                ),
              ),
            ),
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            Positioned(
              right: 40,
              top: 80,
              child: Text(
                '\$$price',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
            ),
            Positioned(
              bottom: 95,
              left: 40,
              child: Container(
                width: size.height * 0.23,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '$title\n',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            ),
                          ),
                          TextSpan(
                            text: ingredient,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: kTextColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      description,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 14,
                        color: kTextColor.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${calorie.toInt()}Kcal',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 14,
                        color: kTextColor.withOpacity(0.7),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
