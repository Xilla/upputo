import 'package:flutter/material.dart';
import 'package:upputo/core/values/colors.dart';
import 'package:upputo/global_widgets/text/detail_text.dart';
import 'package:upputo/global_widgets/text/sub_text.dart';

Widget navHeader({
  required String name,
  required String email,
}) =>
    Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 10,
        right: 20,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 80,
                width: 80,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Image.asset(
                    'assets/icons/avatar.jpg',
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubText(text: name),
                  const SizedBox(height: 6),
                  DetailText(text: email),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Divider(
            color: AppColors.primary[200]!.withOpacity(0.4),
            height: 2,
          ),
        ],
      ),
    );
