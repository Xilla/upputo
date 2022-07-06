import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/modules/make_offer/controller.dart';
import 'package:upputo/modules/recent_services/local_widgets/recent_service_card.dart';

class RecentServiceList extends GetView<MakeOfferController> {
  final List<String> recentServices;

  const RecentServiceList({Key? key, required this.recentServices})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MakeOfferController());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      color: AppColors.primary[50],
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: ListView.builder(
          itemCount: recentServices.length,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (_, index) => Container(
              child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: RecentServiceCard(
              name: recentServices[index],
              date: '12 June 2022',
              onPressed: () {},
            ),
          )),
        ),
      ),
    );
  }
}
