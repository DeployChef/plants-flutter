import 'package:flutter/material.dart';
import 'package:plants/constants.dart';
import 'package:plants/screens/home/components/featured_plants.dart';
import 'package:plants/screens/home/components/header_with_searchbox.dart';
import 'package:plants/screens/home/components/recommended_plants.dart';
import 'package:plants/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {},
          ),
          RecommendedPlants(),
          TitleWithMoreBtn(
            title: "Featured plants",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
