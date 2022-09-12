import 'package:flutter/material.dart';

import 'constants.dart';

class ListOfCategories extends StatelessWidget {
  const ListOfCategories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CategoryButton(
            title: 'All',
            isSelected: true,
          ),
          CategoryButton(
            title: 'Italian',
            isSelected: false,
          ),
          CategoryButton(
            title: 'Asian',
            isSelected: false,
          ),
          CategoryButton(
            title: 'Chinese',
            isSelected: false,
          ),
          CategoryButton(
            title: 'Burger',
            isSelected: false,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key key,
    this.isSelected,
    this.title,
  }) : super(key: key);

  final bool isSelected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40),
      child: GestureDetector(
        onTap: () {},
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? kPrimaryColor : kTextColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
