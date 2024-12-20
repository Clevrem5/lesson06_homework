import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson06_homework/utils/constants.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrendingRecipesPage(),
    );
  }
}

class TrendingRecipesPage extends StatelessWidget {
  const TrendingRecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:AppColors.backroundColor ,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(11.0),
          child: TrendingRecipeItem(),
        ),
      ),
    );
  }
}

class TrendingRecipeItem extends StatelessWidget {
  const TrendingRecipeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: const Image(
            image: AssetImage("assets/images/chicken_curry.png"),
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 207,
          height: 122,
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.horizontal(
              right: Radius.circular(14),
            ),
            border: Border.all(
              color: AppColors.pinkSub,
              width: 1,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Chicken Curry",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 12,
                ),
              ),
              const Text(
                "Savor the aromatic Chicken Curry—a rich blend of spices...",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "League Spartan",
                  fontSize: 13,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const Text(
                "By Chef Clevrem",
                style: TextStyle(
                  color: AppColors.redPinkMain,
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/clock.svg"),
                      const Text(
                        "45min",
                        style: TextStyle(
                          color: AppColors.redPinkMain,
                          fontFamily: "Poppins",
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Easy",
                        style: TextStyle(
                          color: AppColors.redPinkMain,
                          fontFamily: "Poppins",
                          fontSize: 12,
                        ),
                      ),
                      SvgPicture.asset("assets/svg/difficulty.svg"),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "5",
                        style: TextStyle(
                          color: AppColors.redPinkMain,
                          fontFamily: "Poppins",
                          fontSize: 12,
                        ),
                      ),
                      SvgPicture.asset("assets/svg/star.svg"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

