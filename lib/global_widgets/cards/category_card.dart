import 'package:flutter/material.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';

class CategoryCard extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final Icon? icon;
  final Color color;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.color,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      borderRadius: BorderRadius.circular(10),
      color: color,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 160,
          height: 160,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Icon(
                      Icons.account_balance_wallet_outlined,
                      color: color.withAlpha(200),
                      size: 32,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubText(
                      text: title,
                      size: 18,
                    ),
                    Container(),
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
