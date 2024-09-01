import 'package:flutter/material.dart';

import '../componets/add_to_cart.dart';
import '../componets/description_text.dart';
import '../componets/ingredients_container_row.dart';
import '../componets/star_ratings.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage('assets/images/double_burger.png'),
                  width: 250,
                  height: 250,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Double Burger',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$7.00',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              StarRatings(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IngredientsContainerRow(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DescriptionText(),
              SizedBox(height: 20),
              AddToCart(),
            ],
          ),
        ),
      ),
    );
  }
}
