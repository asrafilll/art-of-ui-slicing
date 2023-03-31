import 'package:art_of_slicing/warung_coffee/pages/detail_product_page.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.review,
  });

  final String image;
  final String title;
  final String review;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailProductPage(),
          ),
        );
      },
      child: Container(
        height: 220,
        width: 145,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0XFFE2E6EB),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Container(
              height: 146,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
            ),
            Container(
              width: 145,
              height: 70,
              padding: const EdgeInsets.only(
                top: 10,
                left: 13,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'DM',
                      color: Color(0XFF1E2843),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 12,
                        color: Color(0XFFD18645),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        review,
                        style: const TextStyle(
                          fontFamily: 'DM',
                          color: Color(0XFF1E2843),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
