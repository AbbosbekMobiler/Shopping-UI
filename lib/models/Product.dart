import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product(
      {required this.image,
      required this.title,
      required this.price,
      required this.bgColor});
}

List<Product> demo_product = [
  Product(
    image: "assets/images/product_0.png",
    title: 'Long Sleeve Shirts',
    price: 166,
    bgColor: const Color(0xFFFCF3EE),
  ),

  Product(
    image: "assets/images/product_1.png",
    title: 'Casual Henley Shirts',
    price: 99,
    bgColor: const Color(0xFFFFDBC3),
  ),

  Product(
    image: "assets/images/product_2.png",
    title: 'Casual Hem Shirts',
    price: 180,
    bgColor: const Color(0xFFE0E0E0),
  ),

  Product(
    image: "assets/images/product_3.png",
    title: 'Casual Nolin',
    price: 149,
    bgColor: const Color(0xFFB4B4B2),
  ),
];
