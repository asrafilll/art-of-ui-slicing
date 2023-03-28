import 'package:flutter/material.dart';

class CategoryCoffeeWidget extends StatefulWidget {
  const CategoryCoffeeWidget({super.key});

  @override
  State<CategoryCoffeeWidget> createState() => _CategoryCoffeeWidgetState();
}

class _CategoryCoffeeWidgetState extends State<CategoryCoffeeWidget> {
  final List<Map<String, dynamic>> dataCoffee = [
    {
      'title': 'Para Coffee',
      'image': 'assets/warung_coffee/icon_para.png',
      'menu': '11 Menu'
    },
    {
      'title': 'Escape Coffee',
      'image': 'assets/warung_coffee/icon_escape.png',
      'menu': '20 Menu'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        shrinkWrap: true,
        itemCount: dataCoffee.length,
        itemBuilder: (context, index) => Container(
          width: 213,
          height: 90,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0XFFE6E6E6),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 23,
              vertical: 21,
            ),
            child: Row(
              children: [
                Image.asset(
                  dataCoffee[index]['image'],
                  width: 32,
                ),
                const SizedBox(width: 19),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dataCoffee[index]['title'],
                      style: const TextStyle(
                        fontFamily: 'DM',
                        color: Color(0XFF1E2843),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      dataCoffee[index]['menu'],
                      style: const TextStyle(
                        fontFamily: 'DM',
                        color: Color(0XFFA1A6B3),
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
