import 'package:art_of_slicing/grocery/common/asset_color.dart';
import 'package:art_of_slicing/grocery/common/asset_manager.dart';
import 'package:art_of_slicing/grocery/common/custom_text_style.dart';
import 'package:flutter/material.dart';

class HomeRecommendedListWidget extends StatelessWidget {
  const HomeRecommendedListWidget({super.key});

  static const List<Map<String, dynamic>> recommendedItem = [
    {
      'img': AssetManager.freshLemon,
      'title': 'Fresh Lemon',
      'category': 'Organic',
      'price': '\$12'
    },
    {
      'img': AssetManager.freshLemon,
      'title': 'Fresh Lemon',
      'category': 'Organic',
      'price': '\$12'
    },
    {
      'img': AssetManager.freshLemon,
      'title': 'Fresh Lemon',
      'category': 'Organic',
      'price': '\$12'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Recommended',
            style: KTextStyle.mediumTextStyle.copyWith(
              fontSize: 30,
            ),
          ),
        ),
        Container(
          height: 200,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          margin: const EdgeInsets.symmetric(vertical: 27),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemCount: recommendedItem.length,
            itemBuilder: (context, index) {
              return Container(
                width: 128,
                height: 194,
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: AssetColor.lightGrayBGColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              recommendedItem[index]['img'],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 11, bottom: 7),
                      height: 1,
                      width: double.infinity,
                      color: const Color(0XFFE0E2EE),
                    ),
                    Text(
                      recommendedItem[index]['title'],
                      style: KTextStyle.mediumTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AssetColor.blackTextColor,
                      ),
                    ),
                    Text(
                      recommendedItem[index]['category'],
                      style: KTextStyle.regularTextStyle.copyWith(
                        color: AssetColor.lightBlueTextColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 12),
                              Text(
                                'Unit',
                                style: KTextStyle.smallTextStyle.copyWith(
                                  color: AssetColor.lightBlueTextColor,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                recommendedItem[index]['price'],
                                style: KTextStyle.regularTextStyle.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: AssetColor.primaryColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 16,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
