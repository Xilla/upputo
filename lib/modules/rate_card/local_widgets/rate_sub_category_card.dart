import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/modules/rate_card/local_models/rate_card_models.dart';

class RateSubCategoryCard extends StatelessWidget {
  final String subCategory;
  final List<Entry> entries;

  const RateSubCategoryCard({
    Key? key,
    required this.subCategory,
    required this.entries,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.primary[50],
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: screenWidth,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DetailText(
                      text: subCategory,
                      size: 20,
                    ),
                    DetailText(
                      text: 'k4,500',
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                ListView.builder(
                  itemCount: entries.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) => Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: DetailText(text: '\u2022 ' + entries[index].entry!),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
