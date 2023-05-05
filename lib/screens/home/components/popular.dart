import 'package:flutter/material.dart';
import 'package:shop_ui_kit/constants.dart';
import 'package:shop_ui_kit/models/Product.dart';
import 'package:shop_ui_kit/screens/home/components/section_title.dart';


List<Product> demo_popular = [
  Product(
    image: "assets/images/product_2.png",
    title: 'Long Sleeve Shirts',
    price: 166,
    bgColor: const Color(0xFFFEFBF9),
  ),

  Product(
    image: "assets/images/product_0.png",
    title: 'Casual Henley Shirts',
    price: 99,
    bgColor: const Color(0xFFFEFBF9),
  ),

  Product(
    image: "assets/images/product_3.png",
    title: 'Casual Hem Shirts',
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),

  Product(
    image: "assets/images/product_1.png",
    title: 'Casual Nolin',
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];


class PopularProduct extends StatelessWidget {
  const PopularProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Popular",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  image: demo_popular[index].image,
                  title: demo_popular[index].title,
                  price: demo_popular[index].price,
                  press: () {},
                  bgColor: demo_popular[index].bgColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.bgColor,
    required this.press,
  });

  final String image, title;
  final int price;
  final Color bgColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 2),
        width: 154,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(defaultBorderRadius),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(defaultBorderRadius),
                ),
              ),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: defaultPadding / 4,
                ),
                Text(
                  "\$$price",
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
