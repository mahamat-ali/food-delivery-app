import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 20.0,
          right: 15,
        ),
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  appBar(context),
                  SizedBox(height: 20),
                  Container(
                    height: size.width * 0.70,
                    width: size.width * 0.70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kSecondaryColor,
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kSecondaryColor,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/image_1_big.png'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Vegan salad bowl\n',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: kBlackColor,
                              ),
                            ),
                            TextSpan(
                              text: 'with red tomato',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: kTextColor.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '\$20',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Maecenas ligula tortor, elementum eget nunc eu, bibendum ultricies purus. Vivamus feugiat, nisi vitae euismod rutrum, nisl lectus interdum orci, quis luctus dolor nibh at mauris. Quisque venenatis pulvinar erat, ac cursus quam dignissim a. Fusce sit amet tincidunt urna. Nulla lectus nulla, blandit a consequat id, tempus non ligula. Praesent ullamcorper ante quam, ac lacinia sem bibendum gravida. ',
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      maxLines: 8,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: kTextColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.6,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add to bag',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/forward.svg',
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    height: 80,
                    width: 80,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(0.3),
                    ),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor,
                            ),
                            child: SvgPicture.asset('assets/icons/bag.svg'),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: -2,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row appBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 28,
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/backward.svg',
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        )
      ],
    );
  }
}
