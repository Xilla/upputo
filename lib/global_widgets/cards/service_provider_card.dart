import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';

class ServiceProviderCard extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? displayPictureLink;
  final String name;
  final int rating;
  final int numOfRatings;

  const ServiceProviderCard(
      {Key? key,
      required this.name,
      required this.onPressed,
      required this.rating,
      required this.numOfRatings,
      this.displayPictureLink = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 80,
                width: 80,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Image.network(
                    'https://i.ibb.co/mXSJN94/2556.png',
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.06,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubText(text: name),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  DetailText(text: 'Electrcian'),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Row(
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
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              SubText(
                text: 'K200/',
                size: 18,
              ),
              DetailText(text: 'hr')
            ],
          )
        ],
      ),
    );
  }
}
