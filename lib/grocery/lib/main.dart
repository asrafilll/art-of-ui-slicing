import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:art_of_slicing/grocery/common/asset_manager.dart';
import 'package:art_of_slicing/grocery/common/custom_text_style.dart';
import 'package:art_of_slicing/grocery/lib/app.dart';
import 'package:flutter/material.dart';

class WelcomeGroceryApp extends StatelessWidget {
  const WelcomeGroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AssetColor.primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 33,
          left: 42,
          right: 42,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your holiday\nshopping\ndelivered to your',
                style: KTextStyle.welcomeTitle,
              ),
              Row(
                children: [
                  Text(
                    'home',
                    style: KTextStyle.welcomeTitle,
                  ),
                  const SizedBox(width: 4),
                  Image.asset(
                    AssetManager.homeIcon,
                    width: 33,
                  )
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'There\'s something for\neveryone to enjoy with Sweet\nShop Favourites',
                style: KTextStyle.welcomeSubtitle,
              ),
              Container(
                height: 280,
                margin: const EdgeInsets.symmetric(vertical: 64),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      AssetManager.welcome,
                    ),
                  ),
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => const GroceryApp(),
                      ),
                    );
                  },
                  child: Container(
                    width: 253,
                    height: 70,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 48,
                      vertical: 24,
                    ),
                    decoration: BoxDecoration(
                      color: AssetColor.whiteAppColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Get Started',
                          style: KTextStyle.mediumTextStyle
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const Icon(
                          Icons.east,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
