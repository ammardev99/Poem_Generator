import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/modules/categoryfeed/category_feed.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/models/category_model.dart';
import 'package:poem_generator/modules/editprofile/view.dart';
import 'package:poem_generator/modules/poeminfo/view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_it/share_it.dart';

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
    textAlign: TextAlign.justify,
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

Widget redirectOption(IconData icon, String txt, String url) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: primaryColor03))),
    child: ListTile(
      hoverColor: primaryColor03,
      splashColor: primaryColor03,
      leading: Icon(icon),
      iconColor: primaryColor,
      title: myHeading(
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

Widget shareOption(IconData icon, String txt, String message) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: primaryColor03))),
    child: ListTile(
      hoverColor: primaryColor03,
      splashColor: primaryColor03,
      leading: Icon(icon),
      iconColor: primaryColor,
      title: myHeading(
        txt,
      ),
      onTap: () {
        ShareIt.text(
          content: 'message');
        // ignore: avoid_print
        print('share');
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
          leading: Container(
            decoration: BoxDecoration(
              border: Border.all(color: whiteColor, width: 1),
              borderRadius: BorderRadius.circular(100),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                img,
              ),
            ),
          ),
          title: myHeading(name, whiteColor),
          subtitle: info(email, whiteColor),
          trailing: IconButton(
            onPressed: () {
              Get.to( EditprofilePage());
            },
            icon: Icon(
              Icons.edit,
              color: whiteColor,
            ),
          )),
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

Widget poemCategory(Category category) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: primaryColor03),
      borderRadius: BorderRadius.circular(8),
    ),
    child: InkWell(
      onTap: () {
        Get.to(CategoryFeed(name: category.type));
      },
      borderRadius: BorderRadius.circular(8),
      hoverColor: whiteColor,
      splashColor: primaryColor03,
      child: Row(
        children: [
          Container(
            width: 120,
            height: 100,
            decoration: BoxDecoration(
              color: category.color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            child: Center(child: myHeading(category.type, whiteColor)),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: SizedBox(height: 30, child: myHeading(category.title)),
              // ignore: unnecessary_null_comparison
              subtitle: category.count != 0
                  ? info("Poems ${category.count}")
                  : info("Poems"),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget poemOfTheDay(Category category) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: primaryColor03),
      borderRadius: BorderRadius.circular(8),
    ),
    child: InkWell(
      onTap: () {
        Get.to( PoeminfoPage());
      },
      borderRadius: BorderRadius.circular(8),
      hoverColor: whiteColor,
      splashColor: primaryColor03,
      child: Stack(
        children: [
// main card
          Row(
            children: [
              Container(
                width: 120,
                height: 100,
                decoration: BoxDecoration(
                  color: category.color,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  image: const DecorationImage(
                      image: AssetImage(
                        'images/poem_image.png',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                  child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: SizedBox(
                    height: 30, child: myHeading(category.title, primaryColor)),
                subtitle: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: ' Author: ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: borderColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Name',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
// over layer Fav and likes
          Positioned(
              right: 0,
              top: 0,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: borderColor,
                  ))),

          Positioned(
              right: 5,
              bottom: 5,
              child: Row(
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    color: borderColor,
                    size: 15,
                  ),
                  sizeBox(5),
                  info('1214 likes')
                ],
              )),
        ],
      ),
// end overlayer
    ),
  );
}

Widget iconWithLabel(IconData icon, String label) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButton(
        splashColor: primaryColor,
        hoverColor: Colors.transparent,
        onPressed: () {},
        icon: Icon(
          icon,
          color: primaryColor,
        ),
      ),
      const SizedBox(width: 4),
      info(label),
    ],
  );
}

Widget poemPost(BuildContext context) {
  return InkWell(
    splashColor: primaryColor03,
    hoverColor: Colors.transparent,
    onTap: () {
      Get.to( PoeminfoPage());
    },
    child: Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: whiteColor,
          border: Border.all(width: 2, color: primaryColor03),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          // author info
          ListTile(
            contentPadding: const EdgeInsets.all(3),
            leading: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: primaryColor03),
                  borderRadius: BorderRadius.circular(100)),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/png/author.png'),
              ),
            ),
            title: myHeading("Name", secondaryColor),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.access_time_outlined, size: 15),
                sizeBox(4),
                info("2h")
              ],
            ),
          ),
          sizeBox(10),
          // poem text
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus tortor eget mi ultricies, vel placerat justo efficitur.Integer eget ante a ligula efficitur condimentum. Vivamus volutpat libero et nisi luctus, quis sollicitudin lacus vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus tortor eget mi ultricies, vel placerat justo efficitur.Integer eget ante a ligula efficitur condimentum. Vivamus volutpat libero et nisi luctus, quis sollicitudin lacus vulputate.",
            textAlign: TextAlign.justify,
          ),
          sizeBox(10),
          Divider(
            color: primaryColor03,
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

Widget categoriesButtons() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal, // Ensures horizontal scrolling
    child: Row(
      children: [
        sizeBox(15),
        categoryButton("New Poems"),
        sizeBox(5),
        categoryButton("Poems"),
        sizeBox(5),
        categoryButton("Happy Poems"),
        sizeBox(5),
        categoryButton("Love Poems"),
        sizeBox(5),
      ],
    ),
  );
}

Widget categoryButton(String text) {
  return TextButton(
    onPressed: () {
      Get.to(CategoryFeed(name: text));
    },
    style: TextButton.styleFrom(
      foregroundColor: whiteColor,
      backgroundColor: borderColor,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ),
    child: Text(text),
  );
}

Widget profileWelcom() {
  return ListTile(
    title: myHeading("Hi, Filip"),
    subtitle: info("Looking for specific poem?", secondaryColor),
    trailing: Container(
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor, width: 1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: const CircleAvatar(
        backgroundImage: AssetImage(
          'assets/png/author.png',
        ),
      ),
    ),
  );
}
