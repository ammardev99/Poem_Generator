import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_button_actions.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';

import 'logic.dart';

class PoemInfoPage extends StatelessWidget {
  PoemInfoPage({super.key});

  final logic = Get.put(PoemInfoLogic());
  final state = Get.find<PoemInfoLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: const BackButton(
              color: AppColors.whiteColor,
            ),
            backgroundColor: AppColors.primaryColor,
            centerTitle: true,
          ),
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.primaryColor,
                  ),
                  poemCard(context),
                ],
              ),
            ],
          )),
    );
  }
}

Widget poemCard(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: AppColors.borderColor.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 3,
        offset: const Offset(0, 1),
      )
    ]),
    child: Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(width: 2, color: AppColors.primaryColor03),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          // author info
          Column(
            children: [
              sizeBox(10),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  border: Border.all(width: 2, color: AppColors.primaryColor03),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/png/author.png'),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  customHeading("Fillip Justic", AppColors.secondaryColor),
                  const Spacer(),
                  const Icon(Icons.access_time_outlined, size: 15),
                  sizeBox(4),
                  customInfo("2h"),
                ],
              ),
            ],
          ),

          sizeBox(10),
          // poem text
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus tortor eget mi ultricies, vel placerat justo efficitur.Integer eget ante a ligula efficitur condimentum. Vivamus volutpat libero et nisi luctus, quis sollicitudin lacus vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus tortor eget mi ultricies, vel placerat justo efficitur.Integer eget ante a ligula efficitur condimentum. Vivamus volutpat libero et nisi luctus, quis sollicitudin lacus vulputate.",
            textAlign: TextAlign.justify,
          ),
          sizeBox(10),
          Divider(
            color: AppColors.primaryColor03,
            indent: 1,
            endIndent: 1,
          ),
          sizeBox(5),
          // action options
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              iconWithLabel(Icons.thumb_up_alt_outlined, "Like"),
              iconWithLabel(Icons.favorite_border, "Favorite"),
              iconWithLabel(Icons.share, "Share"),
            ],
          ),
        ],
      ),
    ),
  );
}
