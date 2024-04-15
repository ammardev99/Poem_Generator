import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/components/assets.dart';

Widget myTitle(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: color ?? blackColor,
    ),
    textAlign: TextAlign.center,
  );
}

Widget myHeading(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color ?? blackColor,
    ),
    // textAlign: TextAlign.center,
  );
}

Widget info(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: color ?? borderColor,
    ),
    // textAlign: TextAlign.center,
  );
}

Widget sizeBox(double w, [double? h]) {
  return SizedBox(
    width: w,
    height: h ?? w,
  );
}

Widget moveButtom(String text, context, page, String action) {
  return ElevatedButton(
    onPressed: () {
      if (page != null) {
        action == 'r' ? Get.offAll(page) : Get.to(page);
      }
    },
    style: buttonstyle(),
    child: Text(text),
  );
}

Widget infoAction(
  String text,
  String label,
  page,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      info(text),
      sizeBox(5),
      TextButton(
          onPressed: () {
            if (page != null) {
              Get.to(page);
            }
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            padding: MaterialStateProperty.all(EdgeInsets.zero),
          ),
          child: info(label, primaryColor))
    ],
  );
}

Widget menuOption(IconData icon, String txt, BuildContext context, [page]) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: primaryColor03))),
    child: ListTile(
      hoverColor: primaryColor03,
      splashColor: primaryColor03,
      leading: Icon(icon),
      iconColor: primaryColor,
      title: myHeading(txt, page == null ? Colors.black12 : secondaryColor),
      // trailing: Icon(
      //   Icons.chevron_right,
      //   color: page == null ? Colors.grey : primaryColor03,
      // ),
      onTap: () {
        page == null
            ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: myHeading('Under Maintenance', whiteColor),
                backgroundColor: secondaryColor,
                duration: const Duration(milliseconds: 200),
              ))
            : Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
      },
    ),
  );
}

// user info for menu
Widget userProfile(
  String name,
  String email,
  String img,
) {
  return Container(
    padding: const EdgeInsets.only(top: 20),
    width: double.infinity,
    height: 190,
    decoration: BoxDecoration(color: primaryColor),
    child: Center(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            img,
          ),
        ),
        title: myHeading(name, whiteColor),
        subtitle: info(email, whiteColor),
        trailing: Icon(
          Icons.edit,
          color: whiteColor,
        ),
        onTap: () {},
      ),
    ),
  );
}



  Widget guestOption(String text, page) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () {
        Get.offAll(page);
      },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 1, color: primaryColor)),
        child: Center(child: myHeading(text, primaryColor)),
      ),
    );
  }
