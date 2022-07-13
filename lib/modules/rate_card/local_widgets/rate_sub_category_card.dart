import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/core/values/dimensions.dart';
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
      color: AppColors.primary[300]!.withOpacity(0.2),
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
                    // DetailText(
                    //   text: subCategory,
                    //   size: 20,
                    // ),
                    Text(
                      subCategory,
                      style: const TextStyle(
                        color: AppColors.subColor,
                        fontSize: Dimensions.subCategoryTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // DetailText(
                    //   text: 'k4,500',
                    // )
                    const Text(
                      'k4,800',
                      style: TextStyle(
                        color: AppColors.subColor,
                        fontSize: Dimensions.subCategoryTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                    // child: DetailText(text: '\u2022 ' + entries[index].entry!),
                    child: Text(
                      '\u2022 ' + entries[index].entry!,
                      style: const TextStyle(
                        color: AppColors.entryColor,
                        fontSize: Dimensions.entryTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
