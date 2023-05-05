import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui_kit/constants.dart';
import 'package:shop_ui_kit/models/Category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.icon, required this.title, required this.press,
  });

  final String icon,title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(defaultBorderRadius),
          ),
        ),
      ),
      onPressed: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding / 4,
            vertical: defaultPadding / 2),
        child: Column(
          children: [
            SvgPicture.asset(icon),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
      ),
    );
  }
}
class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
            demo_categories.length,
                (index) =>
                Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: CategoryCard(
                    icon: demo_categories[index].icon,
                    title: demo_categories[index].title,
                    press: (){},
                  ),
                ),
          )
      ),
    );
  }
}
