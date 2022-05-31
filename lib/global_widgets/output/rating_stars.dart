import 'package:flutter/material.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';

class RatingStars extends StatelessWidget {
  final int rating;
  final int numOfRatings;

  const RatingStars({
    Key? key,
    required this.rating,
    required this.numOfRatings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 36,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              Icon(
                Icons.star,
                size: 14,
                color: rating >= 1 ? Colors.yellow : Colors.grey,
              ),
              Icon(
                Icons.star,
                size: 14,
                color: rating >= 2 ? Colors.yellow : Colors.grey,
              ),
              Icon(
                Icons.star,
                size: 14,
                color: rating >= 3 ? Colors.yellow : Colors.grey,
              ),
              Icon(
                Icons.star,
                size: 14,
                color: rating >= 4 ? Colors.yellow : Colors.grey,
              ),
              Icon(
                Icons.star,
                size: 14,
                color: rating >= 5 ? Colors.yellow : Colors.grey,
              ),
            ],
          ),
        ),
        DetailText(text: ' (' + numOfRatings.toString() + ')')
      ],
    );
  }
}
