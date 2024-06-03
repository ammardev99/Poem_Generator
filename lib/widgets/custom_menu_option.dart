
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/routes/routes_name.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:poem_generator/widgets/custom_formatting.dart';
import 'package:url_launcher/url_launcher.dart';

Widget customMenuOption(IconData icon, String txt, BuildContext context, [page]) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.primaryColor03))),
    child: ListTile(
      hoverColor: AppColors.primaryColor03,
      splashColor: AppColors.primaryColor03,
      leading: Icon(icon),
      iconColor: AppColors.primaryColor,
      title: customHeading(
          txt, page == null ? Colors.black12 : AppColors.secondaryColor),
      // trailing: Icon(
      //   Icons.chevron_right,
      //   color: page == null ? Colors.grey : primaryColor03,
      // ),
      onTap: () {
        page == null
            ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: customHeading('Under Maintenance', AppColors.whiteColor),
                backgroundColor: AppColors.secondaryColor,
                duration: const Duration(milliseconds: 200),
              ))
            : 
            page== RouteName.loginPage? Get.toNamed(page): 
            Get.toNamed(page);
      },
    ),
  );
}




Widget customRedirectOption(IconData icon, String txt, String url) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.primaryColor03))),
    child: ListTile(
      hoverColor: AppColors.primaryColor03,
      splashColor: AppColors.primaryColor03,
      leading: Icon(icon),
      iconColor: AppColors.primaryColor,
      title: customHeading(
        txt,
      ),
      onTap: () async {
        // var url = 'https://play.google.com/store/apps/developer?id=samz+creation&hl=en&gl=US';
        // ignore: deprecated_member_use
        if (await canLaunch(url)) {
          // ignore: deprecated_member_use
          await launch(url);
        } else {
          throw 'Could not launch url';
        }
        // ignore: avoid_print
        print('fb');
      },
    ),
  );
}
